require 'test_helper'

class POstsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @p_ost = p_osts(:one)
  end

  test "should get index" do
    get p_osts_url
    assert_response :success
  end

  test "should get new" do
    get new_p_ost_url
    assert_response :success
  end

  test "should create p_ost" do
    assert_difference('POst.count') do
      post p_osts_url, params: { p_ost: { title: @p_ost.title } }
    end

    assert_redirected_to p_ost_url(POst.last)
  end

  test "should show p_ost" do
    get p_ost_url(@p_ost)
    assert_response :success
  end

  test "should get edit" do
    get edit_p_ost_url(@p_ost)
    assert_response :success
  end

  test "should update p_ost" do
    patch p_ost_url(@p_ost), params: { p_ost: { title: @p_ost.title } }
    assert_redirected_to p_ost_url(@p_ost)
  end

  test "should destroy p_ost" do
    assert_difference('POst.count', -1) do
      delete p_ost_url(@p_ost)
    end

    assert_redirected_to p_osts_url
  end
end
