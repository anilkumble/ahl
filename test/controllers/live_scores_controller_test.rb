require 'test_helper'

class LiveScoresControllerTest < ActionController::TestCase
  setup do
    @live_score = live_scores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:live_scores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create live_score" do
    assert_difference('LiveScore.count') do
      post :create, live_score: {  }
    end

    assert_redirected_to live_score_path(assigns(:live_score))
  end

  test "should show live_score" do
    get :show, id: @live_score
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @live_score
    assert_response :success
  end

  test "should update live_score" do
    patch :update, id: @live_score, live_score: {  }
    assert_redirected_to live_score_path(assigns(:live_score))
  end

  test "should destroy live_score" do
    assert_difference('LiveScore.count', -1) do
      delete :destroy, id: @live_score
    end

    assert_redirected_to live_scores_path
  end
end
