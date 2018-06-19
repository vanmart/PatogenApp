# == Schema Information
#
# Table name: pathogens
#
#  id                 :integer          not null, primary key
#  name               :string
#  description        :text
#  epidemiology       :text
#  taxonomic_table_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class PathogenTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
