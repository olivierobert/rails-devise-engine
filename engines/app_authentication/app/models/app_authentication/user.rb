module AppAuthentication
  class User < AppAuthentication.devise_class.constantize
    devise :database_authenticatable,
           :registerable,
           :recoverable,
           :rememberable,
           :trackable,
           :validatable,
           :confirmable,
           :lockable,
           :timeoutable
  end
end
