class PromonewsmultimsController < ApplicationController
  before_action :set_promonewsmultim, only: [:show, :edit, :update, :destroy]

  # GET /promonewsmultims
  # GET /promonewsmultims.json
  def index
    @promonewsmultims = Promonewsmultim.all
  end

  # GET /promonewsmultims/1
  # GET /promonewsmultims/1.json
  def show
  end

  # GET /promonewsmultims/new
  def new
    @promonewsmultim = Promonewsmultim.new
  end

  # GET /promonewsmultims/1/edit
  def edit
  end

  # POST /promonewsmultims
  # POST /promonewsmultims.json
  def create
    @promonewsmultim = Promonewsmultim.new(promonewsmultim_params)

    respond_to do |format|
      if @promonewsmultim.save
        format.html { redirect_to @promonewsmultim, notice: 'Promonewsmultim was successfully created.' }
        format.json { render :show, status: :created, location: @promonewsmultim }
      else
        format.html { render :new }
        format.json { render json: @promonewsmultim.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /promonewsmultims/1
  # PATCH/PUT /promonewsmultims/1.json
  def update
    respond_to do |format|
      if @promonewsmultim.update(promonewsmultim_params)
        format.html { redirect_to @promonewsmultim, notice: 'Promonewsmultim was successfully updated.' }
        format.json { render :show, status: :ok, location: @promonewsmultim }
      else
        format.html { render :edit }
        format.json { render json: @promonewsmultim.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /promonewsmultims/1
  # DELETE /promonewsmultims/1.json
  def destroy
    @promonewsmultim.destroy
    respond_to do |format|
      format.html { redirect_to promonewsmultims_url, notice: 'Promonewsmultim was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promonewsmultim
      @promonewsmultim = Promonewsmultim.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def promonewsmultim_params
      params.require(:promonewsmultim).permit(:promotion_id, :multim_type, :importantnews_id, :reference)
    end
end
