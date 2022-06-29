class JobslistsController < ApplicationController
  before_action :set_jobslist, only: %i[ show edit update destroy ]

  #To prevent any unauthorized actions till the user is logged in.
  before_action :authenticate_user!
  # GET /jobslists or /jobslists.json
  def index
    @jobslists = Jobslist.all
  end

  # GET /jobslists/1 or /jobslists/1.json
  def show
  end

  # GET /jobslists/new
  def new
    @jobslist = Jobslist.new
  end

  # GET /jobslists/1/edit
  def edit
  end

  # POST /jobslists or /jobslists.json
  def create
    @jobslist = Jobslist.new(jobslist_params)

    respond_to do |format|
      if @jobslist.save
        format.html { redirect_to jobslist_url(@jobslist), notice: "a job was successfully created." }
        format.json { render :show, status: :created, location: @jobslist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jobslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobslists/1 or /jobslists/1.json
  def update
    respond_to do |format|
      if @jobslist.update(jobslist_params)
        format.html { redirect_to jobslist_url(@jobslist), notice: "a job was successfully updated." }
        format.json { render :show, status: :ok, location: @jobslist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jobslist.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobslists/1 or /jobslists/1.json
  def destroy
    @jobslist.destroy

    respond_to do |format|
      format.html { redirect_to jobslists_url, notice: "a job was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobslist
      @jobslist = Jobslist.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jobslist_params
      params.require(:jobslist).permit(:title, :description)
    end
end
