require "test_helper"

class JobslistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobslist = jobslists(:one)
  end

  test "should get index" do
    get jobslists_url
    assert_response :success
  end

  test "should get new" do
    get new_jobslist_url
    assert_response :success
  end

  test "should create jobslist" do
    assert_difference("Jobslist.count") do
      post jobslists_url, params: { jobslist: { description: @jobslist.description, title: @jobslist.title } }
    end

    assert_redirected_to jobslist_url(Jobslist.last)
  end

  test "should show jobslist" do
    get jobslist_url(@jobslist)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobslist_url(@jobslist)
    assert_response :success
  end

  test "should update jobslist" do
    patch jobslist_url(@jobslist), params: { jobslist: { description: @jobslist.description, title: @jobslist.title } }
    assert_redirected_to jobslist_url(@jobslist)
  end

  test "should destroy jobslist" do
    assert_difference("Jobslist.count", -1) do
      delete jobslist_url(@jobslist)
    end

    assert_redirected_to jobslists_url
  end
end
