require 'test_helper'

class PathogensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pathogen = pathogens(:one)
  end

  test "should get index" do
    get pathogens_url
    assert_response :success
  end

  test "should get new" do
    get new_pathogen_url
    assert_response :success
  end

  test "should create pathogen" do
    assert_difference('Pathogen.count') do
      post pathogens_url, params: { pathogen: { description: @pathogen.description, economic_damage: @pathogen.economic_damage, epidemiology: @pathogen.epidemiology, name: @pathogen.name, scientific_name: @pathogen.scientific_name } }
    end

    assert_redirected_to pathogen_url(Pathogen.last)
  end

  test "should show pathogen" do
    get pathogen_url(@pathogen)
    assert_response :success
  end

  test "should get edit" do
    get edit_pathogen_url(@pathogen)
    assert_response :success
  end

  test "should update pathogen" do
    patch pathogen_url(@pathogen), params: { pathogen: { description: @pathogen.description, economic_damage: @pathogen.economic_damage, epidemiology: @pathogen.epidemiology, name: @pathogen.name, scientific_name: @pathogen.scientific_name } }
    assert_redirected_to pathogen_url(@pathogen)
  end

  test "should destroy pathogen" do
    assert_difference('Pathogen.count', -1) do
      delete pathogen_url(@pathogen)
    end

    assert_redirected_to pathogens_url
  end
end
