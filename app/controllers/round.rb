
get '/deck/:id/round' do
  @deck = Deck.find_by(id: params[:id])
  @round = Round.new(deck: @deck, user: current_user)
  cards = @deck.cards
  @card_display = cards.first
  #call method to display and go through cards in deck
  erb :'round/new'
end


post '/round' do
  @guess = Guess.new(params[:guess])
  current_card = params[:guess][:card_id]
  @deck = params[:guess][:card_id].deck
  cards = @deck.cards

  until @guess.correct_answers_return.length == @deck.length

    if @guess == current_card.answer
      @guess.correct_guesses(current_card)
      @card_display = cards.rotate[0]
    else
      @card_display = cards.rotate[0]
    end

  end
  #check answer call
  erb :'round/new'
end

get '/round/:id' do
   erb :'round/show'
end

