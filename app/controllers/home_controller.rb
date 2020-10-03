class HomeController < ApplicationController
  def index
    redirect_to boards_path
  end
end
