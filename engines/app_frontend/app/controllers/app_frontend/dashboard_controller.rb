require_relative './application_controller'

module AppFrontend
  class DashboardController < ApplicationController
    protect_from_forgery with: :exception
    before_action :authenticate_user!

    def index
    end
  end
end
