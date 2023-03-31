class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render :index
  end

  def show
    @bird = Bird.find_by(id: params["id"])
    render :show
  end

  def create
    @bird = Bird.new
    @bird.species = params[:species]
    @bird.description = params[:description]
    @bird.image_url = params[:image_url]

    @bird.save
    render :show
  end

  def update
    @bird = Bird.find_by(id: params["id"])
    @bird.species = params[:species] || @bird.species
    @bird.description = params[:description] || @bird.description
    @bird.image_url = params[:image_url] || @bird.image_url

    @bird.save
    render :show
  end

  def destroy
    @bird = Bird.find_by(id: params["id"])
    @bird.destroy

    render json: {message: "The bird has been successfully deleted from the database."}
  end
end
