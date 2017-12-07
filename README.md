# POC - Re-usable authentication engine

Research how to isolate generic authentication functionality into a [Rails engine](http://guides.rubyonrails.org/engines.html) so 
that it can be-used as-is in other applications. 

## Rationale

In each project, authentication is almost always required and [Devise](https://github.com/plataformatec/devise) is almost 
always the go-to gem to implement such functionality. While Devise is easy to use and configure, its codebase lives in 
the core of the application and often needs tinkering. So in an effort of separating concerns and adopting a modular architecture, 
this proof of concept isolates the authentication functionality and configuration in a separate engine `app_authentication`.

This authentication engine can now be configured, tested independently and re-used in multiple projects as-is.

## How it works

* The engine is mounted into the host application:

```ruby
# config/routes.rb
Rails.application.routes.draw do
  mount AppAuthentication::Engine, at: '/'

  root 'home#index'
end
```

* All Devise controller methods and helpers such as `current_user` and `authenticate_user!` are exposed via an `initializer`:

```ruby
# engines/app_authentication/lib/app_authentication/engine.rb
initializer 'app_authentication.action_controller' do
  ActiveSupport.on_load :action_controller do
    helper AppAuthentication::Engine.helpers
  end
end
``` 

These methods and helpers can now be used in the core of the app or in the other engines:

```ruby
# engines/app_frontend/app/controllers/app_frontend/dashboard_controller.rb
module AppFrontend
  class DashboardController < ApplicationController
    before_action :authenticate_user!
  end
end
```

## How to use it

This POC can be used as a source of information for your own implementation. But if you wish to use it as-is, then follow these steps:

* Clone the project `git clone git@github.com:olivierobert/rails-devise-engine.git`.
* Copy the directory `engine/app_authentication` to the host application directory.
* Copy and edit if needed the initializer for the engine `config/initializers/app_authentication.rb`. This configuration 
allows to override the resource to which Devise will be bound to (usually the `user` model). 

```ruby
AppAuthentication.resource_class = 'User'
```

The configuration must match the model class name that exists either in the core of the application (recommended) or in the other engines.

## TODO

* Extract the `app_authentication` engine into a standalone gem.
* Create a generator to install the `app_authentication` gem.

## License
The proof of concept is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
