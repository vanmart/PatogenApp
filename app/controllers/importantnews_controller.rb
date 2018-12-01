class ImportantnewsController < ApplicationController
  before_action :set_importantnews, only: [:show, :edit, :update, :destroy]

  # GET /importantnews
  # GET /importantnews.json
  def index
    @importantnews = Importantnews.all
  end

  # GET /importantnews/1
  # GET /importantnews/1.json
  def show
  end

  # GET /importantnews/new
  def new
    @importantnews = Importantnews.new
  end

  # GET /importantnews/1/edit
  def edit
  end

  # POST /importantnews
  # POST /importantnews.json
  def create
    @importantnews = Importantnews.new(importantnews_params)

    respond_to do |format|
      if @importantnews.save
        format.html { redirect_to @importantnews, notice: 'Importantnews was successfully created.' }
        format.json { render :show, status: :created, location: @importantnews }
      else
        format.html { render :new }
        format.json { render json: @importantnews.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /importantnews/1
  # PATCH/PUT /importantnews/1.json
  def update
    respond_to do |format|
      if @importantnews.update(importantnews_params)
        format.html { redirect_to @importantnews, notice: 'Importantnews was successfully updated.' }
        format.json { render :show, status: :ok, location: @importantnews }
      else
        format.html { render :edit }
        format.json { render json: @importantnews.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /importantnews/1
  # DELETE /importantnews/1.json
  def destroy
    @importantnews.destroy
    respond_to do |format|
      format.html { redirect_to importantnews_index_url, notice: 'Importantnews was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_importantnews
      @importantnews = Importantnews.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def importantnews_params
      params.require(:importantnews).permit(:name, :description)
    end
end
