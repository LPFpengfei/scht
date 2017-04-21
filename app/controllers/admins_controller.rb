class AdminsController < ApplicationController
  def index
    @admins = Admin.all
    @admins = @admins.order('id desc').page(params[:page]).per(10)
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    @admin.sign_in_count = 0
    if @admin.save
      redirect_to admins_path
    else
      render :new
    end
  end

  def edit
    @admin = Admin.find(params[:id])
  end

  def update
    @admin = Admin.find(params[:id])
    if @admin.update(admin_params)
      redirect_to admins_path
    else
      render :edit
    end
  end

  def edit_password
    # if current_admin.role == 'admin'
      @admin = Admin.find(params[:id])
    # else
    #   @admin = Admin.find(current_admin.id)
    # end
  end

  def update_password
    # if current_admin.role == 'admin'
      @admin = Admin.find(params[:id])
    # else
    #   @admin = Admin.find(current_admin.id)
    # end
    if @admin.update_attributes(admin_params)
      redirect_to params[:return_url].present? ? params[:return_url] : admins_path
    else
      render :edit_password
    end
  end

  private
  def admin_params
    params.require(:admin).permit!
  end

end
