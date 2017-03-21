class CharactersController < ApplicationController
  def index
      @characters = Character.all
  end

  def new
  end
  def create
      Character.create( character_params )
      redirect_to '/'
  end

  private
  def character_params
      params.require(:character).permit(:name, :location, :occupation)
  end
end
