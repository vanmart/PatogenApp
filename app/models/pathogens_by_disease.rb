# == Schema Information
#
# Table name: pathogens_by_diseases
#
#  id          :integer          not null, primary key
#  pathogen_id :integer
#  disease_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PathogensByDisease < ApplicationRecord
  belongs_to :pathogen
  belongs_to :disease
end
