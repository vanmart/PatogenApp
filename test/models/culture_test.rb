# == Schema Information
#
# Table name: cultures
#
#  id              :integer          not null, primary key
#  name            :string
#  scientific_name :string
#  description     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class CultureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
