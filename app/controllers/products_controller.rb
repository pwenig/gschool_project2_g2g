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

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    @product.update_attributes(allowed_parameters)
    redirect_to '/products'
  end

    def destroy
      @product = Product.destroy(params[:id])
      redirect_to '/products'
    end
  end

  def allowed_parameters
    params.require(:product).permit(:name, :description, :abv, :image)
  end
