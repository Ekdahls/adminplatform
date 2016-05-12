require 'test_helper'

class QuestionsControllerTest < ActionController::TestCase
  setup do
    @question = questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create question" do
    assert_difference('Question.count') do
      post :create, question: { alt1: @question.alt1, alt2: @question.alt2, alt3: @question.alt3, c_answer: @question.c_answer, category_id: @question.category_id, img_url: @question.img_url, news_summary: @question.news_summary, news_url: @question.news_url, question_name: @question.question_name, question_type_id: @question.question_type_id, tag: @question.tag, valid_from: @question.valid_from, valid_to: @question.valid_to }
    end

    assert_redirected_to question_path(assigns(:question))
  end

  test "should show question" do
    get :show, id: @question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @question
    assert_response :success
  end

  test "should update question" do
    patch :update, id: @question, question: { alt1: @question.alt1, alt2: @question.alt2, alt3: @question.alt3, c_answer: @question.c_answer, category_id: @question.category_id, img_url: @question.img_url, news_summary: @question.news_summary, news_url: @question.news_url, question_name: @question.question_name, question_type_id: @question.question_type_id, tag: @question.tag, valid_from: @question.valid_from, valid_to: @question.valid_to }
    assert_redirected_to question_path(assigns(:question))
  end

  test "should destroy question" do
    assert_difference('Question.count', -1) do
      delete :destroy, id: @question
    end

    assert_redirected_to questions_path
  end
end
