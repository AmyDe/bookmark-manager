
feature 'add new bookmarks' do
  scenario 'add "www.facebook.com" as new bookmark' do
    visit('/bookmarks')
    fill_in('url', with: "http://www.facebook.com")
    click_button('Add Bookmark')
    expect(page).to have_content "http://www.facebook.com"
  end
end
