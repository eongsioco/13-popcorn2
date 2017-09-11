require 'test_helper'

class MaviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mavy = mavies(:one)
  end

  test "should get index" do
    get mavies_url
    assert_response :success
  end

  test "should get new" do
    get new_mavy_url
    assert_response :success
  end

  test "should create mavy" do
    assert_difference('Mavie.count') do
      post mavies_url, params: { mavy: { name: @mavy.name, released: @mavy.released } }
    end

    assert_redirected_to mavy_url(Mavie.last)
  end

  test "should show mavy" do
    get mavy_url(@mavy)
    assert_response :success
  end

  test "should get edit" do
    get edit_mavy_url(@mavy)
    assert_response :success
  end

  test "should update mavy" do
    patch mavy_url(@mavy), params: { mavy: { name: @mavy.name, released: @mavy.released } }
    assert_redirected_to mavy_url(@mavy)
  end

  test "should destroy mavy" do
    assert_difference('Mavie.count', -1) do
      delete mavy_url(@mavy)
    end

    assert_redirected_to mavies_url
  end
end
