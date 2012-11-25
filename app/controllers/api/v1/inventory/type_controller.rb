class Api::V1::Inventory::TypeController < ApplicationController
  before_filter :api_auth

  def show
    begin
      @response = InvTypes.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      @response = {:status => 'error', :message=> e.message}
    end

    respond_to do |format|
      format.html
      format.json {render json: @response, :callback => params[:callback]}
      format.xml {render xml: @response }
    end
  end
end
