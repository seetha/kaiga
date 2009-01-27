class SubscriptionSettingsController < ApplicationController
  layout 'admin'
  # GET /subscription_settings
  # GET /subscription_settings.xml
  def index
    @subscription_settings = SubscriptionSetting.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subscription_settings }
    end
  end

  # GET /subscription_settings/1
  # GET /subscription_settings/1.xml
  def show
    @subscription_setting = SubscriptionSetting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subscription_setting }
    end
  end

  # GET /subscription_settings/new
  # GET /subscription_settings/new.xml
  def new
    @subscription_setting = SubscriptionSetting.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subscription_setting }
    end
  end

  # GET /subscription_settings/1/edit
  def edit
    @subscription_setting = SubscriptionSetting.find(params[:id])
  end

  # POST /subscription_settings
  # POST /subscription_settings.xml
  def create
    @subscription_setting = SubscriptionSetting.new(params[:subscription_setting])

    respond_to do |format|
      if @subscription_setting.save
        flash[:notice] = 'SubscriptionSetting was successfully created.'
        format.html { redirect_to(@subscription_setting) }
        format.xml  { render :xml => @subscription_setting, :status => :created, :location => @subscription_setting }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subscription_setting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subscription_settings/1
  # PUT /subscription_settings/1.xml
  def update
    @subscription_setting = SubscriptionSetting.find(params[:id])

    respond_to do |format|
      if @subscription_setting.update_attributes(params[:subscription_setting])
        flash[:notice] = 'SubscriptionSetting was successfully updated.'
        format.html { redirect_to(@subscription_setting) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subscription_setting.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subscription_settings/1
  # DELETE /subscription_settings/1.xml
  def destroy
    @subscription_setting = SubscriptionSetting.find(params[:id])
    @subscription_setting.destroy

    respond_to do |format|
      format.html { redirect_to(subscription_settings_url) }
      format.xml  { head :ok }
    end
  end
end
