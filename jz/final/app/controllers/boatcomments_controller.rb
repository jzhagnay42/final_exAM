class BoatcommentsController < ApplicationController
  before_action :set_boatcomment, only: [:show, :edit, :update, :destroy]

  # GET /boatcomments
  # GET /boatcomments.json
  def index
    @boatcomments = Boatcomment.all
  end

  # GET /boatcomments/1
  # GET /boatcomments/1.json
  def show
  end

  # GET /boatcomments/new
  def new
    @boatcomment = Boatcomment.new
  end

  # GET /boatcomments/1/edit
  def edit
  end

  # POST /boatcomments
  # POST /boatcomments.json
  def create
    @boatcomment = Boatcomment.new(boatcomment_params)

    respond_to do |format|
      if @boatcomment.save
        format.html { redirect_to @boatcomment, notice: 'Boatcomment was successfully created.' }
        format.json { render :show, status: :created, location: @boatcomment }
      else
        format.html { render :new }
        format.json { render json: @boatcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boatcomments/1
  # PATCH/PUT /boatcomments/1.json
  def update
    respond_to do |format|
      if @boatcomment.update(boatcomment_params)
        format.html { redirect_to @boatcomment, notice: 'Boatcomment was successfully updated.' }
        format.json { render :show, status: :ok, location: @boatcomment }
      else
        format.html { render :edit }
        format.json { render json: @boatcomment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boatcomments/1
  # DELETE /boatcomments/1.json
  def destroy
    @boatcomment.destroy
    respond_to do |format|
      format.html { redirect_to boatcomments_url, notice: 'Boatcomment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boatcomment
      @boatcomment = Boatcomment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boatcomment_params
      params.require(:boatcomment).permit(:name, :comment)
    end
end
