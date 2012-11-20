class Api::V1::Inventory::TypeController < ApplicationController
  caches_action :show, :expires_in => 1.hour

  def show
    begin
      @response = InvTypes.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      @response = {:status => 'error', :message=> e.message}
    end

    respond_to do |format|
      format.html
      format.json {render json: @response, :callback => params[:callback]}
    end
  end
end
