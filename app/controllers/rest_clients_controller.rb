class RestClientsController < ApplicationController
  def index
    @clients = RestClient.where(:user_id => current_user)
  end

  def create
    @client = RestClient.new(params[:post])
    if @client.save
      redirect_to rest_clients_path
    else
      render action: "new"
    end
  end

  def destroy
    @user = current_user
    @user.authentication_token = nil
    @user.save
    redirect_to edit_user_registration_path
  end
end