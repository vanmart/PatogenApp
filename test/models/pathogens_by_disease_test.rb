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

require 'test_helper'

class PathogensByDiseaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
