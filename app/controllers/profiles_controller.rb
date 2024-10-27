class ProfilesController < ApplicationController
    before_action :authenticate_user!

    def show
        @account_name = current_user.account_name
    end
end