class ProfilesController < ApplicationController
  before_action :set_user

  def index
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = @user

    if @profile.save
      redirect_to @profile
    else
      render 'new'
    end
  end

  def show
  end

  def edit
    @profile = Profile.find params[:id]
  end

  def update
    @profile = Profile.find params[:id]

    if @profile.update(profile_params)
      redirect_to @profile, notice: "Your profile was successfully updated."
    else
      render 'edit'
    end
  end

  def destroy
    @profile = Profile.find params[:id]
    @profile.destroy

    redirect_to welcome_index_path
  end

  private
  def profile_params
    params.require(:profile).permit(:name, :surname, :instruments, :email, :description)
  end

  def set_user
    @user = current_user
  end
end
