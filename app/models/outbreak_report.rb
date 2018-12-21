# == Schema Information
#
# Table name: outbreak_reports
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  report_type :integer
#  content     :text
#  imagen      :string
#  audio       :string
#  latitude    :float
#  longitude   :float
#  altitude    :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class OutbreakReport < ApplicationRecord
belongs_to :user

enum report_type: { Solo_Reporte: 0,
                Solicitar_Asistencia_Tecnica: 1
              }

end
