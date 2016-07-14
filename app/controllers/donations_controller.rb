class DonationsController < ApplicationController

  def new
    @donation = Donation.new
  end

  def create
    @donation = Donation.new(donation_params)

    if @donation.save
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def show
    @donation = Donation.find(params[:id])
  end



  private

  def donation_params
    params.require(:donation).permit(:amount);
  end
end
