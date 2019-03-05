class RidesController < ApplicationController
<<<<<<< HEAD
  include AttractionsHelper
=======
>>>>>>> e7498c88a92ba4e8e000e3224b7e23aa2bbb6175
  def index

  end

  def create
    @ride = Ride.create(:user_id => params[:ride][:user_id],:attraction_id=>params[:ride][:attraction_id])
    flash[:notice] = @ride.take_ride

    redirect_to user_path(@ride.user)
  end
end
