class TaxonomicTablesController < ApplicationController
  before_action :set_taxonomic_table, only: [:show, :edit, :update, :destroy]

  # GET /taxonomic_tables
  # GET /taxonomic_tables.json
  def index
    @taxonomic_tables = TaxonomicTable.all
  end

  # GET /taxonomic_tables/1
  # GET /taxonomic_tables/1.json
  def show
  end

  # GET /taxonomic_tables/new
  def new
    @taxonomic_table = TaxonomicTable.new
  end

  # GET /taxonomic_tables/1/edit
  def edit
  end

  # POST /taxonomic_tables
  # POST /taxonomic_tables.json
  def create
    @taxonomic_table = TaxonomicTable.new(taxonomic_table_params)

    respond_to do |format|
      if @taxonomic_table.save
        format.html { redirect_to @taxonomic_table, notice: 'Taxonomic table was successfully created.' }
        format.json { render :show, status: :created, location: @taxonomic_table }
      else
        format.html { render :new }
        format.json { render json: @taxonomic_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /taxonomic_tables/1
  # PATCH/PUT /taxonomic_tables/1.json
  def update
    respond_to do |format|
      if @taxonomic_table.update(taxonomic_table_params)
        format.html { redirect_to @taxonomic_table, notice: 'Taxonomic table was successfully updated.' }
        format.json { render :show, status: :ok, location: @taxonomic_table }
      else
        format.html { render :edit }
        format.json { render json: @taxonomic_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /taxonomic_tables/1
  # DELETE /taxonomic_tables/1.json
  def destroy
    @taxonomic_table.destroy
    respond_to do |format|
      format.html { redirect_to taxonomic_tables_url, notice: 'Taxonomic table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taxonomic_table
      @taxonomic_table = TaxonomicTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def taxonomic_table_params
      params.require(:taxonomic_table).permit(:kingdom, :division, :t_class, :order, :family, :gender, :species)
    end
end
