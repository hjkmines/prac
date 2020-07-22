class HerosController < ApplicationController
  def index 
    @heros = Hero.all 
    render json: @heros, include: [:powers]
  end 

  def show 
    @hero = Hero.find(params[:id])
    render json: @hero, include: [:powers]
  end 

  def create 
    @hero = Hero.create(
      name: params[:name], 
      super_name: params[:super_name]
    )
    redirect_to "http://localhost:3001"
  end 


end
