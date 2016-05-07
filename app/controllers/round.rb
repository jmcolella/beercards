post '/round' do
  @deck = Deck.find_by(id: params[:deck_id])
  @round = Round.create(deck: @deck, user: current_user)
  redirect "/round/#{@round.id}"
end

get '/round/:id' do
  @round = Round.find_by(id: params[:id])
  @deck = @round.deck
  cards = @deck.cards

  list_of_incorrect_cards = Card.incorrect_cards(cards, @round.id)

  @card_display = Card.display_card(list_of_incorrect_cards)

  if list_of_incorrect_cards.length > 0

    if @round.empty_guesses
      @card_display
    elsif @round.guess_value
      @right = true
      @card_display
    else
      @wrong = true
      @card_display
    end
    erb :'round/show'
  else
    @total_guesses = Guess.where(round_id: @round.id).length
    first_guesses_array = Card.all.select {|card| card.guesses.where(round_id: @round.id).length == 1}

    @first_guesses = first_guesses_array.length
    erb :'round/results'
  end

end





