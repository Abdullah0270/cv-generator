class ProfilesController < ApplicationController
  def create
    @profile = Profile.new(profile_params)
    if @profile.save
      redirect_to @profile, notice: 'Profile created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end


  def new
    @profile = Profile.new
  end
  def show
    @profile = Profile.find(params[:id])
  end

  private

  def profile_params
    params.permit(:name, :summary, :expertise, :experience, :file,:dynamicdata, :other_attributes )
  end


end
