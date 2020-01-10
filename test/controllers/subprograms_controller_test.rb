require 'test_helper'

class SubprogramsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subprogram = subprograms(:one)
  end

  test "should get index" do
    get subprograms_url
    assert_response :success
  end

  test "should get new" do
    get new_subprogram_url
    assert_response :success
  end

  test "should create subprogram" do
    assert_difference('Subprogram.count') do
      post subprograms_url, params: { subprogram: { program: @subprogram.program, subprogram_code: @subprogram.subprogram_code, subprogram_name: @subprogram.subprogram_name } }
    end

    assert_redirected_to subprogram_url(Subprogram.last)
  end

  test "should show subprogram" do
    get subprogram_url(@subprogram)
    assert_response :success
  end

  test "should get edit" do
    get edit_subprogram_url(@subprogram)
    assert_response :success
  end

  test "should update subprogram" do
    patch subprogram_url(@subprogram), params: { subprogram: { program: @subprogram.program, subprogram_code: @subprogram.subprogram_code, subprogram_name: @subprogram.subprogram_name } }
    assert_redirected_to subprogram_url(@subprogram)
  end

  test "should destroy subprogram" do
    assert_difference('Subprogram.count', -1) do
      delete subprogram_url(@subprogram)
    end

    assert_redirected_to subprograms_url
  end
end
