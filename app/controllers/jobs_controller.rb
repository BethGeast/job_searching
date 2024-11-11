class JobsController < ApplicationController
  before_action :set_job, only: %i[edit update]

  def index
    @jobs = Job.all
    case params[:sort]
    when 'last_update'
      @jobs = @jobs.order(last_update: :desc)
    when 'deadline'
      @jobs = @jobs.order(deadline: :asc)
    when 'status'
      @jobs = @jobs.order(status: :asc)
    when 'salary_high'
      @jobs = @jobs.order(salary: :desc)
    when 'salary_low'
      @jobs = @jobs.order(salary: :asc)
    end
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(strong_params)
    if @job.save
      redirect_to root_path, notice: 'New job added'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @job.update(strong_params)
    if job.update
      redirect_to root_path, notice: 'Job info updated'
    else
      redirect_to root_path, notice: 'Error updating job, try again'
    end
  end

  private

  def strong_params
    params.require(:job).permit(:last_update, :deadline, :status, :job_title, :company, :salary, :location, :link, :extra_notes)
  end

  def set_job
    @job = Job.find(params[:id])
  end
end
