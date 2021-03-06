class CustomersController < ApplicationController
  def index
    @customer = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def create
    @customer = Customer.new(products_params)
    if @customer.save
      redirect_to customers_path
    else
      render :new
    end
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(products_params)
      redirect_to @customer
    else
      render 'edit'
    end
  end

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to customers_path
  end

  private
    def products_params
      params.require(:customer).permit!
    end
end
