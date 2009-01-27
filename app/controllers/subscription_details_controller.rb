class SubscriptionDetailsController < ApplicationController
layout 'admin'
  # GET /subscription_details
  # GET /subscription_details.xml
  def index
    @subscription_details = SubscriptionDetail.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @subscription_details }
    end
  end

  # GET /subscription_details/1
  # GET /subscription_details/1.xml
  def show
    @subscription_detail = SubscriptionDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subscription_detail }
    end
  end

  # GET /subscription_details/new
  # GET /subscription_details/new.xml
  def new
    @subscription_detail = SubscriptionDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @subscription_detail }
    end
  end

  # GET /subscription_details/1/edit
  def edit
    @subscription_detail = SubscriptionDetail.find(params[:id])
  end

  # POST /subscription_details
  # POST /subscription_details.xml
  def create
    @subscription_detail = SubscriptionDetail.new(params[:subscription_detail])

    respond_to do |format|
      if @subscription_detail.save
        flash[:notice] = 'SubscriptionDetail was successfully created.'
        format.html { redirect_to(@subscription_detail) }
        format.xml  { render :xml => @subscription_detail, :status => :created, :location => @subscription_detail }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @subscription_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /subscription_details/1
  # PUT /subscription_details/1.xml
  def update
    @subscription_detail = SubscriptionDetail.find(params[:id])

    respond_to do |format|
      if @subscription_detail.update_attributes(params[:subscription_detail])
        flash[:notice] = 'SubscriptionDetail was successfully updated.'
        format.html { redirect_to(@subscription_detail) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @subscription_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /subscription_details/1
  # DELETE /subscription_details/1.xml
  def destroy
    @subscription_detail = SubscriptionDetail.find(params[:id])
    @subscription_detail.destroy

    respond_to do |format|
      format.html { redirect_to(subscription_details_url) }
      format.xml  { head :ok }
    end
  end
end
