class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    
    respond_to do |format|
      format.html
      format.xml { render :xml => @user}
    end
  end

  def new
      @user = User.new
    
    respond_to do |format|
      format.html
      format.xml { render :xml => @user }
    end
  end

  def create
      @user = User.new(params[:user])
    
    respond_to do |format|
      if @user.save
        format.html { redirect_to(@user, :notice => 'New User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def addbird
    @user = User.find(params[:id])
    @user.birds.create(params(:birds))
    redirect_to users_path
  end
end


