# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

feature 'Attack player 2 and confirm attack' do
  scenario "Attacks player 2, and confirm" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content "Player 2 attacked!"
  end

end
