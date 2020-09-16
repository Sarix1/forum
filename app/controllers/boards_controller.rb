class BoardsController < ApplicationController
  def show
    @board = Board.find(params[:id])
  end

  def index
    redirect_to root_path
  end
end
