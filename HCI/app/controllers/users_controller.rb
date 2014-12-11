class UsersController < ApplicationController
  # GET /users
  # GET /users.json
  #before_filter :checked_is_superuser, :except => [:new ,:index]
  def index
    if(params[:user]!=nil)
      @user = User.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @user }
      end
    end

    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }
    end
  end

  def forgetpwd
    render :layout => false 
  end

  def explore

  end

  def homepage
    @pattern = /users\/(.*)\/homepage/
    @match = @pattern.match(request.url)
    @user = User.find( @match[1])
    @profile = @user.user_profile
    if(@profile == nil)
      @profile = UserProfile.find(1)
    end

    @weibos = @user.weibos
  end

  def find
    if(session[:user_id]==nil)
      redirect_to "http://jd.com"
end
    @users = User.find(:all, :conditions => ['name like ?', params[:search_string]])
  end

  def login
    @user=User.new(params[:user])
    if(@user.name==nil)
      render :layout => false 
    else
      render :layout =>false
    end
  end
  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to "http://localhost:3000/user_profiles/new", notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

  private 
    def checked_is_superuser
    authenticate_or_request_with_http_basic "Who is your father" do |user_name, password| 
    user_name == "wy" && password == "wy" 
    end     
  end
end
