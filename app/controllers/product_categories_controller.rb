class ProductCategoriesController < ApplicationController
  protect_from_forgery with: :exception
  def index
    @productCategory = ProductCategory.all
  end

  def new
    @product_category = ProductCategory.new
  end
  def create
    @product_category = ProductCategory.new(product_category_params)

    if @product_category.save
      redirect_to product_categories_path
    else
      render :new
    end
  end

  def destroy
    @productCategory = ProductCategory.find(params[:id])
    @productCategory.destroy
    redirect_to product_categories_path
  end

  private
    def product_category_params
      params.require(:product_category).permit!
    end
end

