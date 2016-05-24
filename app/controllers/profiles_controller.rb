class ProfilesController < ApplicationController
  before_action :set_profile

  def edit
    
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to edit_profiles_path, notice: 'Profile was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  private

    def set_profile
       @profile = Profile.first.nil? ? Profile.new : Profile.first
    end

    def profile_params
      params.require(:profile).permit(:full_name, :about, :image_url, :skills)
    end
end