class Api::V1::Inventory::TypeController < ApplicationController

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
