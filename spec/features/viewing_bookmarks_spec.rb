

feature 'Viewing bookmarks' do
  scenario 'visits index page' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end

  scenario "Directs to /bookmarks" do 
    visit ('/bookmarks')
    expect(page).to have_content 'All Bookmarks:'
  end 
end
