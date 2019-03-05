module AttractionsHelper

<<<<<<< HEAD
=======
    def ride
      @attraction = Attraction.find(params[:id])
      @ride = Ride.create(:user_id => current_user.id, :attraction_id => @attraction.id)
      message = @ride.take_ride
      if message.blank?
        flash[:success] = "Thanks for riding the #{@attraction.name}!"
      else
        flash[:alert] = message
      end
      redirect_to user_path(current_user)
    end
>>>>>>> e7498c88a92ba4e8e000e3224b7e23aa2bbb6175
end
