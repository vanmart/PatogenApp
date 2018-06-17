# == Schema Information
#
# Table name: pathogen_by_diseases
#
#  id          :integer          not null, primary key
#  disease_id  :integer
#  pathogen_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PathogenByDisease < ApplicationRecord
  belongs_to :pathogen
  belongs_to :disease
end
