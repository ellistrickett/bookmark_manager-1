feature 'delete a bookmark' do
  scenario 'user can delete a bookmark via a button' do
    insert_bookmark
    click_button('Test Website')
    expect(page).to_not have_content('Test Website')
  end
end
