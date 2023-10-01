class PagesController < ApplicationController
  def home
  end

  def game
    @players = params[:players]
    @difficulty = params[:difficulty]
  end
end
