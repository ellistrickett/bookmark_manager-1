feature 'Viewing bookmarks' do
  scenario 'visits index page' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end

  scenario "Directs to /bookmarks" do
    visit ('/bookmarks')
    expect(page).to have_content 'All Bookmarks:'
  end

  scenario "Shows array of bookmarks" do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com', 'Makers Academy');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com', 'Destroy All Software');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com', 'Google');")

    visit('/bookmarks')
    expect(page).to have_content 'http://www.makersacademy.com'
    expect(page).to have_content 'http://www.google.com'
    expect(page).to have_content 'http://www.destroyallsoftware.com'
  end
end
