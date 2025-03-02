class Api::V1::SearchesController < ApplicationController
  def index
    @results = Uspto::SearchService.new(params[:my_params]).run
    render json: @results["docs"]
  end
end
