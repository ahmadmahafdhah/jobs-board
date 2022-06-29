class JobapplicationsController < ApplicationController
  include Devise::Controllers::Helpers
  before_action :set_jobapplication, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # GET /jobapplications or /jobapplications.json

  def index
    @jobapplications = Jobapplication.all
  end
  
  # GET /jobapplications/1 or /jobapplications/1.json
  def show
  end

  # GET /jobapplications/new
  def new
    @jobapplication = Jobapplication.new
  end

  # GET /jobapplications/1/edit
  def edit
  end

  # POST /jobapplications or /jobapplications.json
  def create
    @jobapplication = Jobapplication.new(jobapplication_params)

    respond_to do |format|
      if @jobapplication.save
        format.html { redirect_to jobapplication_url(@jobapplication), notice: "Jobapplication was successfully created." }
        format.json { render :show, status: :created, location: @jobapplication }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jobapplication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jobapplications/1 or /jobapplications/1.json
  def update
    respond_to do |format|
      if @jobapplication.update(jobapplication_params)
        format.html { redirect_to jobapplication_url(@jobapplication), notice: "Jobapplication was successfully updated." }
        format.json { render :show, status: :ok, location: @jobapplication }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jobapplication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jobapplications/1 or /jobapplications/1.json
  def destroy
    @jobapplication.destroy

    respond_to do |format|
      format.html { redirect_to jobapplications_url, notice: "Jobapplication was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jobapplication
      @jobapplication = Jobapplication.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jobapplication_params
      params.require(:jobapplication).permit(:title, :status)
    end
end
