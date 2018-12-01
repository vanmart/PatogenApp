require 'test_helper'

class PromonewsmultimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @promonewsmultim = promonewsmultims(:one)
  end

  test "should get index" do
    get promonewsmultims_url
    assert_response :success
  end

  test "should get new" do
    get new_promonewsmultim_url
    assert_response :success
  end

  test "should create promonewsmultim" do
    assert_difference('Promonewsmultim.count') do
      post promonewsmultims_url, params: { promonewsmultim: { importantnews_id: @promonewsmultim.importantnews_id, multim_type: @promonewsmultim.multim_type, promotion_id: @promonewsmultim.promotion_id, reference: @promonewsmultim.reference } }
    end

    assert_redirected_to promonewsmultim_url(Promonewsmultim.last)
  end

  test "should show promonewsmultim" do
    get promonewsmultim_url(@promonewsmultim)
    assert_response :success
  end

  test "should get edit" do
    get edit_promonewsmultim_url(@promonewsmultim)
    assert_response :success
  end

  test "should update promonewsmultim" do
    patch promonewsmultim_url(@promonewsmultim), params: { promonewsmultim: { importantnews_id: @promonewsmultim.importantnews_id, multim_type: @promonewsmultim.multim_type, promotion_id: @promonewsmultim.promotion_id, reference: @promonewsmultim.reference } }
    assert_redirected_to promonewsmultim_url(@promonewsmultim)
  end

  test "should destroy promonewsmultim" do
    assert_difference('Promonewsmultim.count', -1) do
      delete promonewsmultim_url(@promonewsmultim)
    end

    assert_redirected_to promonewsmultims_url
  end
end
