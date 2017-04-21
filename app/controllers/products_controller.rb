class ProductsController < ApplicationController
  protect_from_forgery with: :exception
  def index
    @product = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @products = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end

  def create
    @products = Product.new(products_params)
    if @products.save
      redirect_to products_path
    else
      render :new
    end
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(products_params)
      redirect_to @product
    else
      render 'edit'
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private
    def products_params
      params.require(:product).permit(:name, :originprice, :price, :description, :quantity, :product_category_id)
    end
end