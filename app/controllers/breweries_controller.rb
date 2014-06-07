class BreweriesController < ApplicationController

  def index
    @brewery = Brewery.all
  end

  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.create(allowed_parameters)
    redirect_to '/breweries'
  end

  def show
    @brewery = Brewery.find(params[:id])
  end

  private

  def allowed_parameters
    params.require(:brewery).permit(:name, :email, :password, :password_confirmation)
  end
end
