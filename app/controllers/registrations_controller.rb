class RegistrationsController < Devise::RegistrationsController
  def edit
    render :edit
  end
  def api
    @user = current_user
    @current_usage = @user.apikey.usage_count.to_f
    @max_usage = @user.roles.first.max_usage.to_f
  end
end