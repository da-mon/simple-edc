class StudyUsersController < ApplicationController
  before_action :set_study_user, only: [:show, :edit, :update, :destroy]

  # GET /study_users
  # GET /study_users.json
  def index
    @study_users = StudyUser.all
  end

  # GET /study_users/1
  # GET /study_users/1.json
  def show
  end

  # GET /study_users/new
  def new
    @study_user = StudyUser.new
  end

  # GET /study_users/1/edit
  def edit
  end

  # POST /study_users
  # POST /study_users.json
  def create
    @study_user = StudyUser.new(study_user_params)

    respond_to do |format|
      if @study_user.save
        format.html { redirect_to @study_user, notice: 'Study user was successfully created.' }
        format.json { render :show, status: :created, location: @study_user }
      else
        format.html { render :new }
        format.json { render json: @study_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_users/1
  # PATCH/PUT /study_users/1.json
  def update
    respond_to do |format|
      if @study_user.update(study_user_params)
        format.html { redirect_to @study_user, notice: 'Study user was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_user }
      else
        format.html { render :edit }
        format.json { render json: @study_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_users/1
  # DELETE /study_users/1.json
  def destroy
    @study_user.destroy
    respond_to do |format|
      format.html { redirect_to study_users_url, notice: 'Study user was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_user
      @study_user = StudyUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_user_params
      params[:study_user]
    end
end
