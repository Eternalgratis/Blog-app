class ApplicationController < ActionController::Base
    def current_user
        @users.first
    end
end
