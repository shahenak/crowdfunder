class DonationsController < ApplicationController

  def new
    @donation = Donation.new
  end

  def create
    puts donation_params
    @donation = Donation.new(donation_params)

    if @donation.save
      @project = Project.find(params[:project_id])
      @project.sum += @donation.amount
      @project.update_attributes(sum: @project.sum)
      redirect_to project_path(params[:project_id])
    else
      render :new
    end
  end

  def show
    @donation = Donation.find(params[:id])
  end


  private

  def donation_params
    params.require(:donation).permit(:amount, :project_id);
  end

end
