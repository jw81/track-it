# frozen_string_literal: true

# heroku run rails console
# load './lib/custom_scripts/assign_existing_games_to_my_account.rb'

my_account = Account.where(email: 'jeffrey.wallace81@gmail.com').first

Game.all.each do |game|
  game.account_id = my_account.id
  game.save!
  puts "Game :: #{game.id} updated"
end
