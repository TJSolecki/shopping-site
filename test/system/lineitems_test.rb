require "application_system_test_case"

class LineitemsTest < ApplicationSystemTestCase
  setup do
    @lineitem = lineitems(:one)
  end

  test "visiting the index" do
    visit lineitems_url
    assert_selector "h1", text: "Lineitems"
  end

  test "should create lineitem" do
    visit lineitems_url
    click_on "New lineitem"

    fill_in "Cart", with: @lineitem.cart_id
    fill_in "Product", with: @lineitem.product_id
    click_on "Create Lineitem"

    assert_text "Lineitem was successfully created"
    click_on "Back"
  end

  test "should update Lineitem" do
    visit lineitem_url(@lineitem)
    click_on "Edit this lineitem", match: :first

    fill_in "Cart", with: @lineitem.cart_id
    fill_in "Product", with: @lineitem.product_id
    click_on "Update Lineitem"

    assert_text "Lineitem was successfully updated"
    click_on "Back"
  end

  test "should destroy Lineitem" do
    visit lineitem_url(@lineitem)
    click_on "Destroy this lineitem", match: :first

    assert_text "Lineitem was successfully destroyed"
  end
end
