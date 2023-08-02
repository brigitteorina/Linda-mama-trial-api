require "test_helper"

class DietQuestionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diet_question = diet_questions(:one)
  end

  test "should get index" do
    get diet_questions_url, as: :json
    assert_response :success
  end

  test "should create diet_question" do
    assert_difference("DietQuestion.count") do
      post diet_questions_url, params: { diet_question: { question: @diet_question.question, user_id: @diet_question.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show diet_question" do
    get diet_question_url(@diet_question), as: :json
    assert_response :success
  end

  test "should update diet_question" do
    patch diet_question_url(@diet_question), params: { diet_question: { question: @diet_question.question, user_id: @diet_question.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy diet_question" do
    assert_difference("DietQuestion.count", -1) do
      delete diet_question_url(@diet_question), as: :json
    end

    assert_response :no_content
  end
end
