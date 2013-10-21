require 'test_helper'

class VotingSummariesControllerTest < ActionController::TestCase
  setup do
    @voting_summary = voting_summaries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:voting_summaries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create voting_summary" do
    assert_difference('VotingSummary.count') do
      post :create, :voting_summary => @voting_summary.attributes
    end

    assert_redirected_to voting_summary_path(assigns(:voting_summary))
  end

  test "should show voting_summary" do
    get :show, :id => @voting_summary.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @voting_summary.to_param
    assert_response :success
  end

  test "should update voting_summary" do
    put :update, :id => @voting_summary.to_param, :voting_summary => @voting_summary.attributes
    assert_redirected_to voting_summary_path(assigns(:voting_summary))
  end

  test "should destroy voting_summary" do
    assert_difference('VotingSummary.count', -1) do
      delete :destroy, :id => @voting_summary.to_param
    end

    assert_redirected_to voting_summaries_path
  end
end
