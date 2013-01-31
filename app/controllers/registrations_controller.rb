class RegistrationsController < Devise::RegistrationsController
  def edit
    render :edit
  end
  def api
    authorize! :api, @user, :message => 'You need to sign in or sign up before continuing.'
    @user = current_user
    @current_usage = @user.apikey.usage_count.to_f
    @max_usage = @user.roles.first.max_usage.to_f
  end
end