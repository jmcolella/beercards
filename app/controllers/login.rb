get '/login' do
 erb :'/login/new'
end

post '/login' do
  user = User.find_by(params[:username])

  if user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect "/"
  else
    @errors = user.errors.full_messages

    erb :'/login/new'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end