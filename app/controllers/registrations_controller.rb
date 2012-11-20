class RegistrationsController < Devise::RegistrationsController
  def edit
    @rest_clients = RestClient.where(:user_id => current_user)
    render :edit
  end
end