class ActivityLogsController < ApplicationController
  def create
    @activity_log = ActivityLog.new(params[:activity_log])
    if @activity_log.save
      flash[:success] = "Activity Logged"
    else
      flash[:error] = "Activity could not be logged"
    end
    redirect_to :back #skill_path(@activity_log.skill_id)
  end

end
