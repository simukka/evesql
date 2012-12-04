class Api::V1::Certificate::ClassesController < ApplicationController
  before_filter :api_auth

  def index
  end

  def show
    begin
      @response = CrtClasses.find(params[:id])
    rescue ActiveRecord::RecordNotFound => e
      @response = {:status => 'error', :message=> e.message}
    end

    respond_to do |format|
      format.json {render json: @response }
      format.js {render json: @response }
      format.xml {render xml: @response }
    end
  end
end
