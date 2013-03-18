class PwUsersController < ApplicationController
  # GET /pw_users
  # GET /pw_users.json
  def index
    @pw_users = PwUser.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pw_users }
    end
  end

  # GET /pw_users/1
  # GET /pw_users/1.json
  def show
    @pw_user = PwUser.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pw_user }
    end
  end

  # GET /pw_users/new
  # GET /pw_users/new.json
  def new
    @pw_user = PwUser.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pw_user }
    end
  end

  # GET /pw_users/1/edit
  def edit
    @pw_user = PwUser.find(params[:id])
  end

  # POST /pw_users
  # POST /pw_users.json
  def create
    @pw_user = PwUser.new(params[:pw_user])

    respond_to do |format|
      if @pw_user.save
        format.html { redirect_to @pw_user, notice: 'Pw user was successfully created.' }
        format.json { render json: @pw_user, status: :created, location: @pw_user }
      else
        format.html { render action: "new" }
        format.json { render json: @pw_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pw_users/1
  # PUT /pw_users/1.json
  def update
    @pw_user = PwUser.find(params[:id])

    respond_to do |format|
      if @pw_user.update_attributes(params[:pw_user])
        format.html { redirect_to @pw_user, notice: 'Pw user was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pw_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pw_users/1
  # DELETE /pw_users/1.json
  def destroy
    @pw_user = PwUser.find(params[:id])
    @pw_user.destroy

    respond_to do |format|
      format.html { redirect_to pw_users_url }
      format.json { head :no_content }
    end
  end
end
