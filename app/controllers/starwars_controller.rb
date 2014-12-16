class StarwarsController < ApplicationController
  def new
  end
  def create
    @starwars= Starwars.new(starwars_params)
    @starwars.save
    redirect_to @starwars
  end

  def show
    @starwars=Starwars.find(params[:id])
  end

  private
  def starwars_params
    params.require(:starwars).permit(:name, :race, :isOldRepublic, :isPadawa)
  end
end
