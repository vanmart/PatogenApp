class MultimsController < ApplicationController
  before_action :set_multim, only: [:show, :edit, :update, :destroy]

  # GET /multims
  # GET /multims.json
  def index
    @multims = Multim.all
  end

  # GET /multims/1
  # GET /multims/1.json
  def show
  end

  # GET /multims/new
  def new
    @multim = Multim.new
  end

  # GET /multims/1/edit
  def edit
  end

  # POST /multims
  # POST /multims.json
  def create
    @multim = Multim.new(multim_params)

    respond_to do |format|
      if @multim.save
        format.html { redirect_to @multim, notice: 'Multim was successfully created.' }
        format.json { render :show, status: :created, location: @multim }
      else
        format.html { render :new }
        format.json { render json: @multim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /multims/1
  # PATCH/PUT /multims/1.json
  def update
    respond_to do |format|
      if @multim.update(multim_params)
        format.html { redirect_to @multim, notice: 'Multim was successfully updated.' }
        format.json { render :show, status: :ok, location: @multim }
      else
        format.html { render :edit }
        format.json { render json: @multim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /multims/1
  # DELETE /multims/1.json
  def destroy
    @multim.destroy
    respond_to do |format|
      format.html { redirect_to multims_url, notice: 'Multim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_multim
      @multim = Multim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def multim_params
      params.require(:multim).permit(:link, :multim_type, :culture_id, :pathogen_id, :disease_id)
    end
end
