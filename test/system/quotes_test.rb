require "application_system_test_case"

class QuotesTest < ApplicationSystemTestCase
  setup do
    @quote = quotes(:one)
  end

  test "visiting the index" do
    visit quotes_url
    assert_selector "h1", text: "Quotes"
  end

  test "should create quote" do
    visit quotes_url
    click_on "New quote"

    fill_in "Author", with: @quote.author_id
    fill_in "Pub date", with: @quote.pub_date
    check "Public" if @quote.public
    fill_in "Quote text", with: @quote.quote_text
    fill_in "User com", with: @quote.user_com
    fill_in "User", with: @quote.user_id
    click_on "Create Quote"

    assert_text "Quote was successfully created"
    click_on "Back"
  end

  test "should update Quote" do
    visit quote_url(@quote)
    click_on "Edit this quote", match: :first

    fill_in "Author", with: @quote.author_id
    fill_in "Pub date", with: @quote.pub_date
    check "Public" if @quote.public
    fill_in "Quote text", with: @quote.quote_text
    fill_in "User com", with: @quote.user_com
    fill_in "User", with: @quote.user_id
    click_on "Update Quote"

    assert_text "Quote was successfully updated"
    click_on "Back"
  end

  test "should destroy Quote" do
    visit quote_url(@quote)
    click_on "Destroy this quote", match: :first

    assert_text "Quote was successfully destroyed"
  end
end