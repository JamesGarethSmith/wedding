class RsvpsController < AdminController
  before_action :authenticate_user!, only: [:index]
  layout "application", only: [:new, :create]

  def new
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)
    if @rsvp.save
      if @rsvp.attending?
        flash[:notice] = "Thank you, we look forward to seeing at the wedding :)"
      else
        flash[:notice] = "Thanks for letting us know. It's a pity we won't see you there."
      end
      redirect_to new_rsvp_path
    else
      render "new"
    end
  end

  def index
    @rsvps = Rsvp.all
  end

  private
    def rsvp_params
      params.require(:rsvp).permit( :name,
                                    :email,
                                    :dietary_requirements,
                                    :total_attending,
                                    :names_of_additional_guests,
                                    :attending)
    end
end