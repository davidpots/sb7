require 'test_helper'

class GuestshipsControllerTest < ActionController::TestCase
  setup do
    @guestship = guestships(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guestships)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guestship" do
    assert_difference('Guestship.count') do
      post :create, guestship: { episode_id: @guestship.episode_id, person_id: @guestship.person_id }
    end

    assert_redirected_to guestship_path(assigns(:guestship))
  end

  test "should show guestship" do
    get :show, id: @guestship
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guestship
    assert_response :success
  end

  test "should update guestship" do
    put :update, id: @guestship, guestship: { episode_id: @guestship.episode_id, person_id: @guestship.person_id }
    assert_redirected_to guestship_path(assigns(:guestship))
  end

  test "should destroy guestship" do
    assert_difference('Guestship.count', -1) do
      delete :destroy, id: @guestship
    end

    assert_redirected_to guestships_path
  end
end
