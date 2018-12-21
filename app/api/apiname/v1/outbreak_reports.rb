module APINAME
  module V1
   class OutbreakReports < Grape::API
     #include Defaults
     include APIDefaults
     include APIGuard

     #permite utilizar current_user  y tokens
     guard_all!

     resource :outbreak_reports do
       desc "Return all outbreak_report"
       get "", root: :outbreak_report do
         outbreak_report = OutbreakReport.all
         present :outbreak_report, outbreak_report, with: OutbreakReportEntity
       end

       desc "Save an outbreack report"
        params do
          requires :longitude, type: Float, desc: "Longitude coordinates"
          requires :latitude, type: Float, desc: "Latitude coordinates"
          requires :content, type: String, desc: "Content of message or report"
          requires :report_type, type: String, desc: "Report Type"
          optional :altitude, type: Float, desc: "altitude"
          optional :audio, type: String, desc: "url for audio"
          optional :image_url  , type: String, desc: "url for image"
        end
        post "/saveOutbreakReport" do
          user = User.where(:id => current_user.id).first
          if user.present?
            #user.update_attributes(:latitude => permitted_params[:latitude], :longitude => permitted_params[:longitude])

            outbreak_report = OutbreakReport.create({ latitude: permitted_params[:latitude],
                                                      longitude: permitted_params[:longitude],
                                                      altitude: permitted_params[:altitude],
                                                      content: permitted_params[:content],
                                                      report_type: permitted_params[:report_type],
                                                      imagen: permitted_params[:image_url],
                                                      audio: permitted_params[:audio],
                                                      user_id: current_user.id})
            outbreak_report.save
            present :outbreak_report, outbreak_report,with: OutbreakReportEntity
          else
            return "No fue posible guadar el reporte. Intenta de nuevo."
          end
        end
     end
   end
  end
end