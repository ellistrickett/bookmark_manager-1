feature 'update bookmark' do 
  it 'allows you update a bookmark' do 
    insert_bookmark

    click_button 'Update'

    expect(page).to have_content 'Edit Test Website:'
  end
end