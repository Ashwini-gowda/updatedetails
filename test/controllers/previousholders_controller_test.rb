require 'test_helper'

class PreviousholdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @previousholder = previousholders(:one)
  end

  test "should get index" do
    get previousholders_url
    assert_response :success
  end

  test "should get new" do
    get new_previousholder_url
    assert_response :success
  end

  test "should create previousholder" do
    assert_difference('Previousholder.count') do
      post previousholders_url, params: { previousholder: { from_date: @previousholder.from_date, item_id: @previousholder.item_id, pid: @previousholder.pid, remark: @previousholder.remark, to_date: @previousholder.to_date } }
    end

    assert_redirected_to previousholder_url(Previousholder.last)
  end

  test "should show previousholder" do
    get previousholder_url(@previousholder)
    assert_response :success
  end

  test "should get edit" do
    get edit_previousholder_url(@previousholder)
    assert_response :success
  end

  test "should update previousholder" do
    patch previousholder_url(@previousholder), params: { previousholder: { from_date: @previousholder.from_date, item_id: @previousholder.item_id, pid: @previousholder.pid, remark: @previousholder.remark, to_date: @previousholder.to_date } }
    assert_redirected_to previousholder_url(@previousholder)
  end

  test "should destroy previousholder" do
    assert_difference('Previousholder.count', -1) do
      delete previousholder_url(@previousholder)
    end

    assert_redirected_to previousholders_url
  end
end
