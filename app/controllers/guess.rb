
post '/round/:id/guess' do
  @guess = Guess.create(params[:guess])
  @guess.check_correctness
  @deck = @guess.card.deck.cards

  redirect "/round/#{params[:id]}"
end
