# As two Players,
# So we can continue our game of Battle,
# We want to switch turns

feature 'Attack player 1 and confirm attack' do
  scenario "redirects to correct play page" do
    sign_in_and_play
    visit('/attacked')
    click_link("TAKE REVENGE!")
    expect(page).to have_content "Take him out!"

    scenario "Attacks player 1" do
      sign_in_and_play
      visit('/attacked2')
      click_link("TAKE REVENGE!")
      expect(page).to have_content "Take him out!"

    end
  end
end
