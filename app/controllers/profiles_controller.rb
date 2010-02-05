class ProfilesController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:error] = "Profile not available"
    redirect_to root_url
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    if @profile.update_attributes(params[:profile])
      flash[:notice] = 'Profile was successfully updated.'
    end
    redirect_to @profile
  end
end
