class SkillsController < ApplicationController
  before_filter :authenticate
# before_filter :get_user_context

# def get_user_context
#   @current_username = current_user.profile.username
# end

  
  # GET /skills
  # GET /skills.xml
  def index
    @skills = Skill.all(:order => 'name', :conditions => {:user_id => current_user.id})

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @skills }
      format.iphone { render :layout => 'iphone' } #.html.erb' } 
    end
  end

  # GET /skills/1
  # GET /skills/1.xml
  def show
    @skill = Skill.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @skill }
      format.iphone { render :layout => false }
    end
  end

  # GET /skills/new
  # GET /skills/new.xml
  def new
    @skill = Skill.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @skill }
      format.iphone { render :layout => false }
    end
  end

  # GET /skills/1/edit
  def edit
    @skill = Skill.find(params[:id])

    respond_to do |format|
      format.html # edit.html.erb
      format.iphone { render :layout => false }
    end
  end

  # POST /skills
  # POST /skills.xml
  def create
    @skill = Skill.new(params[:skill].merge(:user_id => current_user.id))

    respond_to do |format|
      if @skill.save
        flash[:notice] = 'Skill was successfully created.'
        format.html { redirect_to(skills_path) }
        format.iphone { redirect_to(skills_path) }
        format.xml  { render :xml => @skill, :status => :created, :location => @skill }
      else
        format.html { render :action => "new" }
        format.iphone { render :action => "new" }
        format.xml  { render :xml => @skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /skills/1
  # PUT /skills/1.xml
  def update
    @skill = Skill.find(params[:id])

    respond_to do |format|
      if @skill.update_attributes(params[:skill])
        flash[:notice] = 'Skill was successfully updated.'
        format.html { redirect_to(skills_path) }
        format.iphone { redirect_to(skills_path, :layout => false ) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.iphone { render :action => "edit", :layout => false }
        format.xml  { render :xml => @skill.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /skills/1
  # DELETE /skills/1.xml
  def destroy
    @skill = Skill.find(params[:id])
    @skill.destroy

    respond_to do |format|
      format.html { redirect_to(skills_url) }
      format.xml  { head :ok }
      format.iphone { redirect_to(skills_url) }
    end
  end
end
