require 'test_helper'

class VoteIssuesControllerTest < ActionController::TestCase
  setup do
    @vote_issue = vote_issues(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vote_issues)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote_issue" do
    assert_difference('VoteIssue.count') do
      post :create, :vote_issue => @vote_issue.attributes
    end

    assert_redirected_to vote_issue_path(assigns(:vote_issue))
  end

  test "should show vote_issue" do
    get :show, :id => @vote_issue.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vote_issue.to_param
    assert_response :success
  end

  test "should update vote_issue" do
    put :update, :id => @vote_issue.to_param, :vote_issue => @vote_issue.attributes
    assert_redirected_to vote_issue_path(assigns(:vote_issue))
  end

  test "should destroy vote_issue" do
    assert_difference('VoteIssue.count', -1) do
      delete :destroy, :id => @vote_issue.to_param
    end

    assert_redirected_to vote_issues_path
  end
end
