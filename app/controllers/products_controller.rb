class ProductsController < ApplicationController

  def index
  @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(allowed_parameters)
    if @product.save
      redirect_to '/products', notice: "Product successfully added"
    else
      render :new
    end



  end


  def allowed_parameters
    params.require(:product).permit(:name, :description, :abv)
  end

end