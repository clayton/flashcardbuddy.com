require "test_helper"

class FlashCardSetsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flash_card_sets_index_url
    assert_response :success
  end

  test "should get show" do
    get flash_card_sets_show_url
    assert_response :success
  end

  test "should get new" do
    get flash_card_sets_new_url
    assert_response :success
  end

  test "should get edit" do
    get flash_card_sets_edit_url
    assert_response :success
  end
end
