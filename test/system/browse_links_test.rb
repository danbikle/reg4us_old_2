require "application_system_test_case"

class BrowseLinksTest < ApplicationSystemTestCase
  test "visiting the index" do
    visit browse_links_url
  
    assert_selector "h1", text: "BrowseLinks"
  end
end
