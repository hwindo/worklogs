class WorkLogsController < ApplicationController
  def index
    @work_logs = WorkLog.all
  end

  def show
    @work_log = WorkLog.find(params[:id])
  end
end
