class BirdsController < ApplicationController
  def index
    @birds = Bird.all
    render :index
  end

  def show
    @bird = Bird.find_by(id: params["id"])
    render :show
  end
end
