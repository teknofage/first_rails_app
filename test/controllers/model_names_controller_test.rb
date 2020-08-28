require 'test_helper'

class ModelNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @model_name = model_names(:one)
  end

  test "should get index" do
    get model_names_url
    assert_response :success
  end

  test "should get new" do
    get new_model_name_url
    assert_response :success
  end

  test "should create model_name" do
    assert_difference('ModelName.count') do
      post model_names_url, params: { model_name: { ...: @model_name...., attribute1: @model_name.attribute1, attribute2: @model_name.attribute2 } }
    end

    assert_redirected_to model_name_url(ModelName.last)
  end

  test "should show model_name" do
    get model_name_url(@model_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_model_name_url(@model_name)
    assert_response :success
  end

  test "should update model_name" do
    patch model_name_url(@model_name), params: { model_name: { ...: @model_name...., attribute1: @model_name.attribute1, attribute2: @model_name.attribute2 } }
    assert_redirected_to model_name_url(@model_name)
  end

  test "should destroy model_name" do
    assert_difference('ModelName.count', -1) do
      delete model_name_url(@model_name)
    end

    assert_redirected_to model_names_url
  end
end
