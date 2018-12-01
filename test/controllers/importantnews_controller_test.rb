require 'test_helper'

class ImportantnewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @importantnews = importantnews(:one)
  end

  test "should get index" do
    get importantnews_index_url
    assert_response :success
  end

  test "should get new" do
    get new_importantnews_url
    assert_response :success
  end

  test "should create importantnews" do
    assert_difference('Importantnews.count') do
      post importantnews_index_url, params: { importantnews: { description: @importantnews.description, name: @importantnews.name } }
    end

    assert_redirected_to importantnews_url(Importantnews.last)
  end

  test "should show importantnews" do
    get importantnews_url(@importantnews)
    assert_response :success
  end

  test "should get edit" do
    get edit_importantnews_url(@importantnews)
    assert_response :success
  end

  test "should update importantnews" do
    patch importantnews_url(@importantnews), params: { importantnews: { description: @importantnews.description, name: @importantnews.name } }
    assert_redirected_to importantnews_url(@importantnews)
  end

  test "should destroy importantnews" do
    assert_difference('Importantnews.count', -1) do
      delete importantnews_url(@importantnews)
    end

    assert_redirected_to importantnews_index_url
  end
end
