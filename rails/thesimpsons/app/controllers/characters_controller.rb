class CharactersController < ApplicationController
  def index
      @characters = Character.all
  end

  def new
    @char = Character.new()
    render layout: 'two_column'
  end

  def create
      Character.create( character_params )
      redirect_to '/'
  end

  def show
      @char = Character.find(params[:id])
      render layout: 'two_column'
  end

  def update
      Character.find(params[:id]).update(character_params)
      redirect_to '/characters/' + params[:id]
  end

  def delete
      Character.find(params[:id]).delete()
      redirect_to '/'
  end


  private
  def character_params
      params.require(:character).permit(:name, :location, :occupation)
  end
end
