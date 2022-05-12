require 'test_helper'

class DocumentsControllerTest < ActionController::TestCase
  setup do
    @auteur = auteurs(:one)
    @document = documents(:one)
  end

  test "should get index" do
    get :index, params: { auteur_id: @auteur }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { auteur_id: @auteur }
    assert_response :success
  end

  test "should create document" do
    assert_difference('Document.count') do
      post :create, params: { auteur_id: @auteur, document: @document.attributes }
    end

    assert_redirected_to auteur_document_path(@auteur, Document.last)
  end

  test "should show document" do
    get :show, params: { auteur_id: @auteur, id: @document }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { auteur_id: @auteur, id: @document }
    assert_response :success
  end

  test "should update document" do
    put :update, params: { auteur_id: @auteur, id: @document, document: @document.attributes }
    assert_redirected_to auteur_document_path(@auteur, Document.last)
  end

  test "should destroy document" do
    assert_difference('Document.count', -1) do
      delete :destroy, params: { auteur_id: @auteur, id: @document }
    end

    assert_redirected_to auteur_documents_path(@auteur)
  end
end
