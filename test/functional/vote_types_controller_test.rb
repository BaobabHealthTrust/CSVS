require 'test_helper'

class VoteTypesControllerTest < ActionController::TestCase
  setup do
    @vote_type = vote_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vote_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vote_type" do
    assert_difference('VoteType.count') do
      post :create, :vote_type => @vote_type.attributes
    end

    assert_redirected_to vote_type_path(assigns(:vote_type))
  end

  test "should show vote_type" do
    get :show, :id => @vote_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vote_type.to_param
    assert_response :success
  end

  test "should update vote_type" do
    put :update, :id => @vote_type.to_param, :vote_type => @vote_type.attributes
    assert_redirected_to vote_type_path(assigns(:vote_type))
  end

  test "should destroy vote_type" do
    assert_difference('VoteType.count', -1) do
      delete :destroy, :id => @vote_type.to_param
    end

    assert_redirected_to vote_types_path
  end
end
