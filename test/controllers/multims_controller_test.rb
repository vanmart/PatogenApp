require 'test_helper'

class MultimsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @multim = multims(:one)
  end

  test "should get index" do
    get multims_url
    assert_response :success
  end

  test "should get new" do
    get new_multim_url
    assert_response :success
  end

  test "should create multim" do
    assert_difference('Multim.count') do
      post multims_url, params: { multim: { culture_id: @multim.culture_id, disease_id: @multim.disease_id, link: @multim.link, multim_type: @multim.multim_type, pathogen_id: @multim.pathogen_id } }
    end

    assert_redirected_to multim_url(Multim.last)
  end

  test "should show multim" do
    get multim_url(@multim)
    assert_response :success
  end

  test "should get edit" do
    get edit_multim_url(@multim)
    assert_response :success
  end

  test "should update multim" do
    patch multim_url(@multim), params: { multim: { culture_id: @multim.culture_id, disease_id: @multim.disease_id, link: @multim.link, multim_type: @multim.multim_type, pathogen_id: @multim.pathogen_id } }
    assert_redirected_to multim_url(@multim)
  end

  test "should destroy multim" do
    assert_difference('Multim.count', -1) do
      delete multim_url(@multim)
    end

    assert_redirected_to multims_url
  end
end
