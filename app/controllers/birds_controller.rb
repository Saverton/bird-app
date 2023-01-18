class BirdsController < ApplicationController
  def index
    render json: Bird.all, status: :ok
  end

  def show
    bird = Bird.find(params[:id])
    render json: bird, status: :ok
  rescue ActiveRecord::RecordNotFound
    render json: "Bird not found", status: :not_found
  end
end
