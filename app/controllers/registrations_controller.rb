class RegistrationsController < Devise::RegistrationsController
  def edit
    @current_usage = @user.apikey.usage_count.to_f
    @max_usage = @user.roles.first.max_usage.to_f
    render :edit
  end
end