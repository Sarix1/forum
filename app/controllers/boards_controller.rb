class BoardsController < ApplicationController
  def index
    @categories = Category.all
  end
  
  def show
    @board = Board.find(params[:id])
  end
end
