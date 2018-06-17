# == Schema Information
#
# Table name: pathogen_by_cultures
#
#  id          :integer          not null, primary key
#  pathogen_id :integer
#  culture_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PathogenByCulture < ApplicationRecord
  belongs_to :pathogen
  belongs_to :culture
end
