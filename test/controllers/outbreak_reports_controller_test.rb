require 'test_helper'

class OutbreakReportsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @outbreak_report = outbreak_reports(:one)
  end

  test "should get index" do
    get outbreak_reports_url
    assert_response :success
  end

  test "should get new" do
    get new_outbreak_report_url
    assert_response :success
  end

  test "should create outbreak_report" do
    assert_difference('OutbreakReport.count') do
      post outbreak_reports_url, params: { outbreak_report: { altitude: @outbreak_report.altitude, audio: @outbreak_report.audio, content: @outbreak_report.content, imagen: @outbreak_report.imagen, latitude: @outbreak_report.latitude, longitude: @outbreak_report.longitude, report_type: @outbreak_report.report_type, user_id: @outbreak_report.user_id } }
    end

    assert_redirected_to outbreak_report_url(OutbreakReport.last)
  end

  test "should show outbreak_report" do
    get outbreak_report_url(@outbreak_report)
    assert_response :success
  end

  test "should get edit" do
    get edit_outbreak_report_url(@outbreak_report)
    assert_response :success
  end

  test "should update outbreak_report" do
    patch outbreak_report_url(@outbreak_report), params: { outbreak_report: { altitude: @outbreak_report.altitude, audio: @outbreak_report.audio, content: @outbreak_report.content, imagen: @outbreak_report.imagen, latitude: @outbreak_report.latitude, longitude: @outbreak_report.longitude, report_type: @outbreak_report.report_type, user_id: @outbreak_report.user_id } }
    assert_redirected_to outbreak_report_url(@outbreak_report)
  end

  test "should destroy outbreak_report" do
    assert_difference('OutbreakReport.count', -1) do
      delete outbreak_report_url(@outbreak_report)
    end

    assert_redirected_to outbreak_reports_url
  end
end
