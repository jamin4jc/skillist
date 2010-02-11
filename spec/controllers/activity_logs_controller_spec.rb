require 'spec_helper'

describe ActivityLogsController do

  context "create" do
    it "creates the activity log" do
      activity_log = Factory.build(:activity_log)
      ActivityLog.should_receive(:new).with('entry' => "Workin hard or hardly workin").and_return(activity_log)
      activity_log.stub!(:save).and_return(true)
      post :create, :activity_log => { :entry => "Workin hard or hardly workin" }
    end
    it "redirects back to the associated skill" do
      activity_log = Factory.build(:activity_log, :skill => Factory(:skill))
      ActivityLog.stub!(:new).and_return(activity_log)
      activity_log.should_receive(:save).and_return(true)
      post :create, :activity_log => { :entry => "Workin hard or hardly workin", :skill_id => 123 }
      response.should redirect_to(skill_path(activity_log.skill_id))
    end

    it "shows a flash success message on successful creation" do
      activity_log = Factory.build(:activity_log, :skill => Factory(:skill))
      ActivityLog.stub!(:new).and_return(activity_log)
      activity_log.should_receive(:save).and_return(true)
      post :create, :activity_log => { :entry => "Workin hard or hardly workin", :skill_id => 123 }
      flash[:success].should_not be_blank
    end

    it "show a flash error message on failure to create" do
      activity_log = Factory.build(:activity_log, :skill => Factory(:skill))
      ActivityLog.stub!(:new).and_return(activity_log)
      activity_log.should_receive(:save).and_return(false)
      post :create, :activity_log => { :entry => "Workin hard or hardly workin", :skill_id => 123 }
      flash[:error].should_not be_blank
    end
  end
end
