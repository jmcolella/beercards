get '/user/new' do
  erb :'/user/new'
end

post '/user' do
  user = User.new(params[:user])
  if user.save
    session[:user_id] = user.id
    redirect "/"
  else
    @errors = user.errors.full_messages
    erb :'/user/new'
  end
end

get '/user/:id' do
   @user = User.find(params[:id])

  erb :'user/show'
end
