require 'spec_helper'

describe ProfilesController do

  #Delete these examples and add some real ones
  it "should use ProfilesController" do
    controller.should be_an_instance_of(ProfilesController)
  end


  describe "GET 'show'" do
    it "should be successful" do
      response.should be_success
      get :show
    end
  end

  describe "GET 'edit'" do
    it "should be successful" do
      profile = Factory.build(:profile)
      Profile.should_receive(:find).and_return(profile)
      response.should be_success
      get :edit, :id => 42
    end
  end
end
