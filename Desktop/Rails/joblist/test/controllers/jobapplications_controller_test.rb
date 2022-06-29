require "test_helper"

class JobapplicationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jobapplication = jobapplications(:one)
  end

  test "should get index" do
    get jobapplications_url
    assert_response :success
  end

  test "should get new" do
    get new_jobapplication_url
    assert_response :success
  end

  test "should create jobapplication" do
    assert_difference("Jobapplication.count") do
      post jobapplications_url, params: { jobapplication: { status: @jobapplication.status, title: @jobapplication.title } }
    end

    assert_redirected_to jobapplication_url(Jobapplication.last)
  end

  test "should show jobapplication" do
    get jobapplication_url(@jobapplication)
    assert_response :success
  end

  test "should get edit" do
    get edit_jobapplication_url(@jobapplication)
    assert_response :success
  end

  test "should update jobapplication" do
    patch jobapplication_url(@jobapplication), params: { jobapplication: { status: @jobapplication.status, title: @jobapplication.title } }
    assert_redirected_to jobapplication_url(@jobapplication)
  end

  test "should destroy jobapplication" do
    assert_difference("Jobapplication.count", -1) do
      delete jobapplication_url(@jobapplication)
    end

    assert_redirected_to jobapplications_url
  end
end
