class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  def profile
    @user = current_user
  end

  def update
    if @user.update(profile_params)
      redirect_to @user
    else
      render "edit"
    end 
  end

  def edit
    
  end

  private

    def set_profile
      @user = current_user
    end

    def profile_params
      params.require(:user).permit(:bio, :profile_picture)
    end
end
