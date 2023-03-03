class ReceptionsController < ApplicationController
  before_action :set_reception, only: %i[ show edit update destroy ]

  # GET /receptions or /receptions.json
  def index
    @receptions = Reception.all
  end

  # GET /receptions/1 or /receptions/1.json
  def show
  end

  # GET /receptions/new
  def new
    @reception = Reception.new
    @hospitals = Hospital.all
  
  end

  # GET /receptions/1/edit
  def edit
  end

  # POST /receptions or /receptions.json
  def create
    @reception = Reception.new(reception_params)
    @reception.hospital = Hospital.find(params[:reception][:hospital_id])
   


    respond_to do |format|
      if @reception.save
        format.html { redirect_to reception_url(@reception), notice: "Reception was successfully created." }
        format.json { render :show, status: :created, location: @reception }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @reception.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receptions/1 or /receptions/1.json
  def update
    respond_to do |format|
      if @reception.update(reception_params)
        format.html { redirect_to reception_url(@reception), notice: "Reception was successfully updated." }
        format.json { render :show, status: :ok, location: @reception }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @reception.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receptions/1 or /receptions/1.json
  def destroy
    @reception.destroy

    respond_to do |format|
      format.html { redirect_to receptions_url, notice: "Reception was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reception
      @reception = Reception.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reception_params
      params.require(:reception).permit(:name, :phone_number)
    end
end
