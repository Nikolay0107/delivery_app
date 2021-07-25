class PackagesController < ApplicationController
  before_action :set_package, only: [:show, :edit, :update, :destroy]

  def index
    @packages = Package.all
  end

  def show
  end

  def edit
  end

  def new
      @package = Package.new
  end

  def create
      @package = Package.new(package_params)
      if @package.save
        redirect_to @package
      else
        render :new
      end
  end

  def update
    if @package.update(package_params)
      redirect_to @package
    else
      render :edit
    end
  end

  def destroy
    @package.destroy
    redirect_to packages_path
  end


private
# method to optimize code (deleting duplicate code in show, edit, update, destroy)
  def set_package
    @package = Package.find(params[:id])
  end

  def package_params
    params.require(:package).permit(:tracking_number, :delivery_status, :courier_on_the_way_id)
  end

end
