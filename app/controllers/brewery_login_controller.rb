class BreweryLoginController < ApplicationController


  def destroy
    @current_user = session[:current_user_id] = nil
    redirect_to root_path
  end

  def new
    @brewery = Brewery.new
  end

  def create
    @brewery = Brewery.find_by(email: params[:brewery][:email]).try(:authenticate, params[:brewery][:password])
    if @brewery
      session[:current_user_id] = @brewery.id
      redirect_to '/products'
    else
      @brewery = Brewery.new
      flash.now[:error] = "User/Password Combination is not correct"
      render :new
    end

  end
end