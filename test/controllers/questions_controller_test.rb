require "test_helper"

class QuestionsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get questions_index_url
    assert_response :success
  end

  test "should get submit" do
    get questions_submit_url
    assert_response :success
  end

  test "should get result" do
    get questions_result_url
    assert_response :success
  end
end
