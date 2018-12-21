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

require 'test_helper'

class OutbreakReportTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
