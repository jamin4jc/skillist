class ActivityLogsController < ApplicationController
  def create
    @activity_log = ActivityLog.new(params[:activity_log])
    if @activity_log.save
      flash[:success] = "Awesome"
    else
      flash[:error] = "Not Awesome"
    end
    redirect_to skill_path(@activity_log.skill_id)
  end

end
