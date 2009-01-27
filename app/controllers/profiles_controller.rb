class ProfilesController < ApplicationController
  before_filter :find_profile
  before_filter :check_owner_access, :only => [:edit, :update]
  
  def show
    # render show.html.erb
  end
  
  def edit
    # render edit.html.erb
  end
  
  def update    
    unless @user.nil?
      if @user.update_attributes(params[:user])
        flash[:notice] = "Your profile has been succesfully updated."
        redirect_to profile_url(@user)
      else
        render :action => 'edit'
      end 
    else
      render :action => 'edit'
    end
  end
  
  protected

  def find_profile
    begin
      @user = User.find(params[:id])      
    rescue
      @user = nil
    end
  end    
  
  def check_owner_access
    redirect_to profile_url(params[:id]) if logged_in? && current_user != @user
  end
end
