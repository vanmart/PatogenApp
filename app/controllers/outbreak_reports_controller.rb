class OutbreakReportsController < ApplicationController
  before_action :set_outbreak_report, only: [:show, :edit, :update, :destroy]

  # GET /outbreak_reports
  # GET /outbreak_reports.json
  def index
    @outbreak_reports = OutbreakReport.all
  end

  # GET /outbreak_reports/1
  # GET /outbreak_reports/1.json
  def show
  end

  # GET /outbreak_reports/new
  def new
    @outbreak_report = OutbreakReport.new
  end

  # GET /outbreak_reports/1/edit
  def edit
  end

  # POST /outbreak_reports
  # POST /outbreak_reports.json
  def create
    @outbreak_report = OutbreakReport.new(outbreak_report_params)

    respond_to do |format|
      if @outbreak_report.save
        format.html { redirect_to @outbreak_report, notice: 'Outbreak report was successfully created.' }
        format.json { render :show, status: :created, location: @outbreak_report }
      else
        format.html { render :new }
        format.json { render json: @outbreak_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /outbreak_reports/1
  # PATCH/PUT /outbreak_reports/1.json
  def update
    respond_to do |format|
      if @outbreak_report.update(outbreak_report_params)
        format.html { redirect_to @outbreak_report, notice: 'Outbreak report was successfully updated.' }
        format.json { render :show, status: :ok, location: @outbreak_report }
      else
        format.html { render :edit }
        format.json { render json: @outbreak_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /outbreak_reports/1
  # DELETE /outbreak_reports/1.json
  def destroy
    @outbreak_report.destroy
    respond_to do |format|
      format.html { redirect_to outbreak_reports_url, notice: 'Outbreak report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_outbreak_report
      @outbreak_report = OutbreakReport.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def outbreak_report_params
      params.require(:outbreak_report).permit(:user_id, :report_type, :content, :imagen, :audio, :latitude, :longitude, :altitude)
    end
end
