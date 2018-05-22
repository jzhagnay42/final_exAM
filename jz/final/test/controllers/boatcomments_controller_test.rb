require 'test_helper'

class BoatcommentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @boatcomment = boatcomments(:one)
  end

  test "should get index" do
    get boatcomments_url
    assert_response :success
  end

  test "should get new" do
    get new_boatcomment_url
    assert_response :success
  end

  test "should create boatcomment" do
    assert_difference('Boatcomment.count') do
      post boatcomments_url, params: { boatcomment: { comment: @boatcomment.comment, name: @boatcomment.name } }
    end

    assert_redirected_to boatcomment_url(Boatcomment.last)
  end

  test "should show boatcomment" do
    get boatcomment_url(@boatcomment)
    assert_response :success
  end

  test "should get edit" do
    get edit_boatcomment_url(@boatcomment)
    assert_response :success
  end

  test "should update boatcomment" do
    patch boatcomment_url(@boatcomment), params: { boatcomment: { comment: @boatcomment.comment, name: @boatcomment.name } }
    assert_redirected_to boatcomment_url(@boatcomment)
  end

  test "should destroy boatcomment" do
    assert_difference('Boatcomment.count', -1) do
      delete boatcomment_url(@boatcomment)
    end

    assert_redirected_to boatcomments_url
  end
end
