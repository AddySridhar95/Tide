class ProfilesController < ApplicationController
  def show
  	@user = User.find_by_profile_name(params[:id]) #use params hash to pass variables into controller methods
  	if @user
  		@statuses = @user.statuses.all  #this is called scoping. we use this because we have a relation between the users and the statuses.
  		render action: :show
  	else
  		render file: 'public/404', status: 404, formats: [:html]
  	end
  end
end
