# == Schema Information
#
# Table name: diseases
#
#  id              :integer          not null, primary key
#  name            :string
#  symptom         :text
#  economic_damage :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class DiseaseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
