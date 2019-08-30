Rails.application.routes.draw do
  namespace :api do
    get '/pumpkin' => 'games#my_name'
    get '/whats_in_a_name' => 'games#check_word'
    get '/string_guess' => 'games#string_guess'
  end
end
