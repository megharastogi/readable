require 'test_helper'

class BookVersionsControllerTest < ActionController::TestCase
  setup do
    @book_version = book_versions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:book_versions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create book_version" do
    assert_difference('BookVersion.count') do
      post :create, book_version: { book_id: @book_version.book_id, content: @book_version.content, grade: @book_version.grade, ri: @book_version.ri }
    end

    assert_redirected_to book_version_path(assigns(:book_version))
  end

  test "should show book_version" do
    get :show, id: @book_version
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @book_version
    assert_response :success
  end

  test "should update book_version" do
    patch :update, id: @book_version, book_version: { book_id: @book_version.book_id, content: @book_version.content, grade: @book_version.grade, ri: @book_version.ri }
    assert_redirected_to book_version_path(assigns(:book_version))
  end

  test "should destroy book_version" do
    assert_difference('BookVersion.count', -1) do
      delete :destroy, id: @book_version
    end

    assert_redirected_to book_versions_path
  end
end
