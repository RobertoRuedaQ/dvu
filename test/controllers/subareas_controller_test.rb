require 'test_helper'

class SubareasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subarea = subareas(:one)
  end

  test "should get index" do
    get subareas_url
    assert_response :success
  end

  test "should get new" do
    get new_subarea_url
    assert_response :success
  end

  test "should create subarea" do
    assert_difference('Subarea.count') do
      post subareas_url, params: { subarea: { area: @subarea.area, subarea_code: @subarea.subarea_code, subarea_name: @subarea.subarea_name } }
    end

    assert_redirected_to subarea_url(Subarea.last)
  end

  test "should show subarea" do
    get subarea_url(@subarea)
    assert_response :success
  end

  test "should get edit" do
    get edit_subarea_url(@subarea)
    assert_response :success
  end

  test "should update subarea" do
    patch subarea_url(@subarea), params: { subarea: { area: @subarea.area, subarea_code: @subarea.subarea_code, subarea_name: @subarea.subarea_name } }
    assert_redirected_to subarea_url(@subarea)
  end

  test "should destroy subarea" do
    assert_difference('Subarea.count', -1) do
      delete subarea_url(@subarea)
    end

    assert_redirected_to subareas_url
  end
end
