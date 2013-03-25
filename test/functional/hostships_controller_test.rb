require 'test_helper'

class HostshipsControllerTest < ActionController::TestCase
  setup do
    @hostship = hostships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hostships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hostship" do
    assert_difference('Hostship.count') do
      post :create, hostship: { person_id: @hostship.person_id, show_id: @hostship.show_id }
    end

    assert_redirected_to hostship_path(assigns(:hostship))
  end

  test "should show hostship" do
    get :show, id: @hostship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hostship
    assert_response :success
  end

  test "should update hostship" do
    put :update, id: @hostship, hostship: { person_id: @hostship.person_id, show_id: @hostship.show_id }
    assert_redirected_to hostship_path(assigns(:hostship))
  end

  test "should destroy hostship" do
    assert_difference('Hostship.count', -1) do
      delete :destroy, id: @hostship
    end

    assert_redirected_to hostships_path
  end
end
