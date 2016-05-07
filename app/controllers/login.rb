get '/login' do
 erb :'/login/new'
end

post '/login' do
  user = User.find_by(username:params[:user][:username])

  if user && user.authenticate(params[:user][:password])
    session[:user_id] = user.id
    redirect "/"
  else
    @errors = ["User doesn't exist or you have the wrong username/password."]

    erb :'/login/new'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
