get '/deck/:id' do

  @deck = Deck.find_by(id: params[:id])

  erb :'/deck/show'

end
