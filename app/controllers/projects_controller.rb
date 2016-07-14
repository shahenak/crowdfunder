class ProjectsController < ApplicationController
before_action :require_login, except: [:index, :show]


  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
    respond_to do |format|
      if request.xhr?
       format.html { render :layout => false }
      end
    end
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

  def cat_search
    #query for all project categories
    #return the projects in an object


    @projects = Project.where("category = ?", params[:category])
     render :cat_search, layout: false
    # respond_to do |format|
    #   if request.xhr?
    #    format.html { render :layout => false }
    #   end
    # end
  end


  private

  def project_params
    params.require(:project).permit(:name, :description, :category, :location, :goal, :deadline, :image, :rewards_attributes => [:name, :description, :amount])
  end

end
