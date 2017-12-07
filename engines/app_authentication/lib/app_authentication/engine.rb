module AppAuthentication
  class Engine < ::Rails::Engine
    isolate_namespace AppAuthentication

    initializer 'app_authentication.action_controller' do
      ActiveSupport.on_load :action_controller do
        helper AppAuthentication::Engine.helpers
      end
    end
  end
end
