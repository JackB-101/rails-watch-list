class ListsController < ApplicationController
  # routes to #index (FAILED - 19)
  # routes to #new (FAILED - 20)
  # routes to #show (FAILED - 21)
  # routes to #create (FAILED - 22)

  def index
    @lists = List.all
  end

  def new
    @lists = List.new
  end

  def show
    @lists = List.find(list_id)
  end

  def create
    @list = List.new(list_params)
    @list.movie = @movie
    if @list.save
      redirect_to movie_path(@movie)
    else
      render :new, status: :unprocessable_entity
    end
  end
end
