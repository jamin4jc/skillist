class ActivityLogsController < ApplicationController
  def create
    @activity_log = ActivityLog.new(params[:activity_log])
    if @activity_log.save
      flash[:success] = "Activity Logged"
    else
      flash[:error] = "Activity could not be logged"
    end
    redirect_to skill_path(@activity_log.skill_id)
    
    # commented out to make specs pass
    # redirect_to :back
  end

end
