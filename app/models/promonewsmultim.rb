# == Schema Information
#
# Table name: promonewsmultims
#
#  id               :integer          not null, primary key
#  promotion_id     :integer
#  multim_type      :integer
#  importantnews_id :integer
#  reference        :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Promonewsmultim < ApplicationRecord
  belongs_to :importantnews, :optional => true
  belongs_to :promotion, :optional => true

  enum multim_type: { Video: 0,
                Audio: 1,
                Imagen:2
              }
end
