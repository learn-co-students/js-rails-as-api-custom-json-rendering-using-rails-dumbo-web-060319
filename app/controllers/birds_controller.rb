
class BirdsController < ApplicationController
  def index
    birds = Bird.all
    render json: birds, only: [:id, :name, :species]
    # render json: birds, except: [:created_at, :updated_at]
  end

  def show
    bird = Bird.find_by(id: params[:id])
    #bird = Bird.find(params[:id])
    render json: bird, only: [:id, :name, :species]
  end
end
