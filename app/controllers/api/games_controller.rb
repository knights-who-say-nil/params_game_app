class Api::GamesController < ApplicationController
  def my_name
    @name = params[:name]
    render 'my_name_view.json.jb'
  end

  def check_word
    @name = params[:name]

    if @name[0].upcase == "A"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end

    render 'starts_with.json.jb'
  end

  def string_guess
    target_number = 42
    @number = params[:number].to_i

    if @number > target_number
      @message = "You guessed too high, try a lower number."
    elsif @number < target_number
      @message = "Your guess was too low, aim higher in life and in your guess."
    else
      @message = "You Win!!!"
    end

    render 'string_guess.json.jb'
  end
end
