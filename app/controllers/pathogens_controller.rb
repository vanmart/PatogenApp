class PathogensController < ApplicationController
  before_action :set_pathogen, only: [:show, :edit, :update, :destroy]

  # GET /pathogens
  # GET /pathogens.json
  def index
    @pathogens = Pathogen.all
  end

  # GET /pathogens/1
  # GET /pathogens/1.json
  def show
  end

  # GET /pathogens/new
  def new
    @pathogen = Pathogen.new
  end

  # GET /pathogens/1/edit
  def edit
  end

  # POST /pathogens
  # POST /pathogens.json
  def create
    @pathogen = Pathogen.new(pathogen_params)

    respond_to do |format|
      if @pathogen.save
        format.html { redirect_to @pathogen, notice: 'Pathogen was successfully created.' }
        format.json { render :show, status: :created, location: @pathogen }
      else
        format.html { render :new }
        format.json { render json: @pathogen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pathogens/1
  # PATCH/PUT /pathogens/1.json
  def update
    respond_to do |format|
      if @pathogen.update(pathogen_params)
        format.html { redirect_to @pathogen, notice: 'Pathogen was successfully updated.' }
        format.json { render :show, status: :ok, location: @pathogen }
      else
        format.html { render :edit }
        format.json { render json: @pathogen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pathogens/1
  # DELETE /pathogens/1.json
  def destroy
    @pathogen.destroy
    respond_to do |format|
      format.html { redirect_to pathogens_url, notice: 'Pathogen was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pathogen
      @pathogen = Pathogen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pathogen_params
      params.require(:pathogen).permit(:name, :scientific_name, :description, :epidemiology, :economic_damage)
    end
end
