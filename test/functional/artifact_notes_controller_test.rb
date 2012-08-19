require 'test_helper'

class ArtifactNotesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artifact_notes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artifact_note" do
    assert_difference('ArtifactNote.count') do
      post :create, :artifact_note => { }
    end

    assert_redirected_to artifact_note_path(assigns(:artifact_note))
  end

  test "should show artifact_note" do
    get :show, :id => artifact_notes(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => artifact_notes(:one).to_param
    assert_response :success
  end

  test "should update artifact_note" do
    put :update, :id => artifact_notes(:one).to_param, :artifact_note => { }
    assert_redirected_to artifact_note_path(assigns(:artifact_note))
  end

  test "should destroy artifact_note" do
    assert_difference('ArtifactNote.count', -1) do
      delete :destroy, :id => artifact_notes(:one).to_param
    end

    assert_redirected_to artifact_notes_path
  end
end
