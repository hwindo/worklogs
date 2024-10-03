class WorkLogsController < ApplicationController
  def index
    @work_logs = WorkLog.all
  end

  def show
    @work_log = WorkLog.find(params[:id])
  end

  def new
    @work_log = WorkLog.new
  end

  def create
    @work_log = WorkLog.new(work_log_params)

    if @work_log.save
      redirect_to @work_log
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
    def work_log_params
      params.require(:work_log).permit(:title, :body)
    end
end
