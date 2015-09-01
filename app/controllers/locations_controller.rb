class LocationsController < AdminController
  def index
    @locations = Location.all
  end

  def new
    @location = Location.new
  end

  def update
    @location = Location.find(params[:id])
    if @location.update(location_params)
      redirect_to locations_path, notice: "Location updated"
    else
      render "edit"
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      redirect_to locations_path, notice: "Location added successfully"
    else
      render "new"
    end
  end

  def destroy
    @location = Location.find(params[:id])
    @location.destroy
    redirect_to locations_path, notice: "Location removed successfully"
  end

  private
    def location_params
      params.require(:location).permit(:title, :description)
    end
end