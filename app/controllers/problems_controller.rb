class ProblemsController < ApplicationController
  def new
    @problem = Problem.new
    @solution = Solution.new
  end

  def create
    @problem = Problem.new(params[:problem])
    if @problem.save
      flash[:success] = "New Problem Created!"
    else
      render 'new'
    end
    @solution = @problem.solutions.build(params[:solution])
    @solution.save!
    redirect_to problems_path
  end

  def edit
    @problem = Problem.find(params[:id])
    @solution = @problem.solutions.first
  end

  def update
    @problem = Problem.find(params[:id])

    @solution = @problem.solutions.first

    if @problem.update_attributes(params[:problem])
      flash[:success] = "Problem updated!"
    else
      render 'edit'
    end
    @solution.update_attributes(params[:solution])

    redirect_to problems_path
  end

  def show
    @problem = Problem.find(params[:id])
    @problem.revert_to(params[:version].to_i) if params[:version] 
  end

  def index
    @problems = Problem.all

    respond_to do |format|
      format.html
      format.xml { render :xml => @problems.to_xml(:include => [:solutions, :tags]) }
    end

  end
end
















