require 'test_helper'

class DiagnosesControllerTest < ActionController::TestCase
  setup do
    @diagnosis = diagnoses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diagnoses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diagnosis" do
    assert_difference('Diagnosis.count') do
      post :create, diagnosis: { condition_id: @diagnosis.condition_id, treatment_id: @diagnosis.treatment_id, user_id: @diagnosis.user_id }
    end

    assert_redirected_to diagnosis_path(assigns(:diagnosis))
  end

  test "should show diagnosis" do
    get :show, id: @diagnosis
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diagnosis
    assert_response :success
  end

  test "should update diagnosis" do
    put :update, id: @diagnosis, diagnosis: { condition_id: @diagnosis.condition_id, treatment_id: @diagnosis.treatment_id, user_id: @diagnosis.user_id }
    assert_redirected_to diagnosis_path(assigns(:diagnosis))
  end

  test "should destroy diagnosis" do
    assert_difference('Diagnosis.count', -1) do
      delete :destroy, id: @diagnosis
    end

    assert_redirected_to diagnoses_path
  end
end
