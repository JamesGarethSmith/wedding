class AccommodationsController < AdminController
  def index
    @accommodations = Accommodation.all
  end

  def new
    @accommodation = Accommodation.new
  end

  def create
    @accommodation = Accommodation.new(accommodation_params)
    if @accommodation.save
      redirect_to accommodations_url, notice: "accommodation added"
    else
      render "new"
    end
  end

  def edit
    @accommodation = Accommodation.find(params[:id])
  end

  def update
    @accommodation = Accommodation.find(params[:id])
    if @accommodation.update(accommodation_params)
      redirect_to accommodations_url, notice: "accommodation updated"
    else
      render "edit"
    end
  end

  def destroy
    @accommodation = Accommodation.find(params[:id])
    @accommodation.destroy
    redirect_to accommodations_url, notice: "accommodation deleted"
  end

  private
    def accommodation_params
      params.require(:accommodation).permit(:title, :description, :location_id, :url, :price_range, :accommodates)
    end
end