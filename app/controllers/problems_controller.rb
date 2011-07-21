class ProblemsController < ApplicationController
  def new
    @problem = Problem.new
  end

  def create
    @problem = Problem.new(params[:problem])
    if @problem.save
      flash[:success] = "New Problem Created!"
    else
      render 'new'
    end
  end

  def edit
    @problem = Problem.find(params[:id])
  end

  def update
    @problem = Problem.find(params[:id])

    if @problem.update_attributes(params[:problem])
      flash[:success] = "Problem updated!"
      redirect_to problems_path
    else
      render 'edit'
    end
  end

  def show
    @problem = Problem.find(params[:id])
    @problem.revert_to(params[:version].to_i) if params[:version] 
  end

  def index
    @problems = Problem.all
  end
end
