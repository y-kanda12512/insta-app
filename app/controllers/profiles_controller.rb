class ProfilesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_profile

    def show
        @account_name = current_user.account_name
    end

    def update
        if @profile.update(profile_params)
            redirect_to @profile,notice: 'プロフィールを更新しました'
        else
            render :show
        end
    end

    private
    def set_profile
        @profile = current_user.profile || current_user.create_profile
    end

    def profile_params
        params.require(:profile).permit(:profile_image)
    end
end