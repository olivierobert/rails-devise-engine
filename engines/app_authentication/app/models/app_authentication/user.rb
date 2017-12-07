module AppAuthentication
  class User < ApplicationRecord
    self.table_name = 'users'

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
