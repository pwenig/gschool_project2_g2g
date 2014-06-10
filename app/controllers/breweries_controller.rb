class BreweriesController < ApplicationController

  def index
  end

  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.create(allowed_parameters)
    session[:current_user_id] = @brewery.id
    redirect_to '/products'
  end

  def show
    @brewery = Brewery.find(params[:id])
  end


  private

  def allowed_parameters
    params.require(:brewery).permit(:name, :email, :password, :password_confirmation)
  end
end
