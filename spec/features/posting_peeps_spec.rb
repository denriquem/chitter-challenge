provocative_opinion_1 = "I like making words with letters cos its good."

feature 'posts peeps to chitter' do
  scenario 'it adds peeps to chitter' do
    visit '/post_peep'
    fill_in 'message', with: provocative_opinion_1
    fill_in 'handle', with: '@itsMeAgain'
    click_button 'Add'
    expect(page).to have_content provocative_opinion_1
    expect(page).to have_content '@itsMeAgain'
  end
end
