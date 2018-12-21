json.extract! outbreak_report, :id, :user_id, :report_type, :content, :imagen, :audio, :latitude, :longitude, :altitude, :created_at, :updated_at
json.url outbreak_report_url(outbreak_report, format: :json)
