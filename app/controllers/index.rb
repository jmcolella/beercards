get '/' do
  @deck = Deck.all
  erb :index
end
