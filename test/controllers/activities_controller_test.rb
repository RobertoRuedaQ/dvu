require 'test_helper'

class ActivitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @activity = activities(:one)
  end

  test "should get index" do
    get activities_url
    assert_response :success
  end

  test "should get new" do
    get new_activity_url
    assert_response :success
  end

  test "should create activity" do
    assert_difference('Activity.count') do
      post activities_url, params: { activity: { action_id: @activity.action_id, activity_name: @activity.activity_name, area_id: @activity.area_id, campu_id: @activity.campu_id, end_date: @activity.end_date, place_id: @activity.place_id, program_id: @activity.program_id, start_date: @activity.start_date, subarea_id: @activity.subarea_id, subprogram_id: @activity.subprogram_id, type_id: @activity.type_id } }
    end

    assert_redirected_to activity_url(Activity.last)
  end

  test "should show activity" do
    get activity_url(@activity)
    assert_response :success
  end

  test "should get edit" do
    get edit_activity_url(@activity)
    assert_response :success
  end

  test "should update activity" do
    patch activity_url(@activity), params: { activity: { action_id: @activity.action_id, activity_name: @activity.activity_name, area_id: @activity.area_id, campu_id: @activity.campu_id, end_date: @activity.end_date, place_id: @activity.place_id, program_id: @activity.program_id, start_date: @activity.start_date, subarea_id: @activity.subarea_id, subprogram_id: @activity.subprogram_id, type_id: @activity.type_id } }
    assert_redirected_to activity_url(@activity)
  end

  test "should destroy activity" do
    assert_difference('Activity.count', -1) do
      delete activity_url(@activity)
    end

    assert_redirected_to activities_url
  end
end
