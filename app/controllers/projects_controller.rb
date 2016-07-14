class ProjectsController < ApplicationController
before_action :require_login, except: [:index, :show]


  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
    @reward = @project.rewards.build
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      redirect_to projects_path
    else
      binding.pry
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :category, :location, :goal, :deadline, :image, :rewards_attributes => [:name, :description, :amount])
  end

end
