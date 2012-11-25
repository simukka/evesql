class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_path, :alert => exception.message
  end

  private
  def api_auth
   unless request.format.html?
    api_key = ApiKey.find_by_access_token(params[:token])
    if api_key
      ApiKey.update_counters api_key.id, :usage_count => 1
    else
      head :unauthorized
    end
    head :unauthorized unless api_key
   end
  end

end
