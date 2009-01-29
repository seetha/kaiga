class MemberSettingsController < ApplicationController
layout 'admin' 

  # GET /member_settings
  # GET /member_settings.xml
  def index
    @member_settings = MemberSetting.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @member_settings }
    end
  end

  # GET /member_settings/1
  # GET /member_settings/1.xml
  def show
    @member_setting = MemberSetting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @member_setting }
    end
  end

  # GET /member_settings/new
  # GET /member_settings/new.xml
  def new
    @member_setting = MemberSetting.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @member_setting }
    end
  end

  # GET /member_settings/1/edit
  def edit
    @member_setting = MemberSetting.find(params[:id])
  end

  # POST /member_settings
  # POST /member_settings.xml
  def create
    @member_setting = MemberSetting.new(params[:member_setting])

    respond_to do |format|
      if @member_setting.save
        flash[:notice] = 'MemberSetting was successfully created.'
        format.html { redirect_to(@member_setting) }
        format.xml  { render :xml => @member_setting, :status => :created, :location => @member_setting }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @member_setting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /member_settings/1
  # PUT /member_settings/1.xml
  def update
    @member_setting = MemberSetting.find(params[:id])

    respond_to do |format|
      if @member_setting.update_attributes(params[:member_setting])
        flash[:notice] = 'MemberSetting was successfully updated.'
        format.html { redirect_to(@member_setting) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @member_setting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /member_settings/1
  # DELETE /member_settings/1.xml
  def destroy
    @member_setting = MemberSetting.find(params[:id])
    @member_setting.destroy

    respond_to do |format|
      format.html { redirect_to(member_settings_url) }
      format.xml  { head :ok }
    end
  end
end
