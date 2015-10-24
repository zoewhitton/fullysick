class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy, :like, :unlike]

  def like
    @doctor.liked_by current_user
    redirect_to :back
  end

  def unlike
    @doctor.unliked_by current_user
    redirect_to :back
  end


  # GET /doctors
  # GET /doctors.json
  def index
    if params[:tag]
      @doctors = Doctor.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 4)
    else
      @doctors = Doctor.all.paginate(:page => params[:page], :per_page => 4)
    end
  end

  # GET /doctors/1
  # GET /doctors/1.json
  def show
  end

  # GET /doctors/new
  def new
    @doctor = Doctor.new
  end

  # GET /doctors/1/edit
  def edit
  end

  # POST /doctors
  # POST /doctors.json
  def create
    @doctor = Doctor.new(doctor_params)

    respond_to do |format|
      if @doctor.save
        format.html { redirect_to @doctor, notice: 'Doctor was successfully created.' }
        format.json { render :show, status: :created, location: @doctor }
      else
        format.html { render :new }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /doctors/1
  # PATCH/PUT /doctors/1.json
  def update
    respond_to do |format|
      if @doctor.update(doctor_params)
        format.html { redirect_to doctors_url, notice: 'Doctor was successfully updated.' }
        format.json { render :show, status: :ok, location: @doctor }
      else
        format.html { render :edit }
        format.json { render json: @doctor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /doctors/1
  # DELETE /doctors/1.json
  def destroy
    @doctor.destroy
    respond_to do |format|
      format.html { redirect_to doctors_url, notice: 'Doctor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_doctor
      @doctor = Doctor.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def doctor_params
      params.require(:doctor).permit(:title, :user_id, :first_name, :last_name, :post_nominals, :bio, :photo, :tag_list)
    end
end
