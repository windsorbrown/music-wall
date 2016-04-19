enable :sessions

# helpers do
#   def current_user
#     if session[:user_id]
#       if @current_user.nil?
#         @current_user = User.find(session[:user_id])
#       end
#     end
#     @current_user
#   end
# end



# Homepage (Root path)
get '/' do
  erb :index
end

get '/messages/logout' do
  session[:user_id] = nil
  @current_user = nil
  redirect "/messages"
end


get '/messages' do
  @messages = Message.all
  erb :'messages/index'
end

get '/messages/new' do
  if session[:user_id].nil?
     redirect '/messages/signin'
   else
    erb :'messages/new'
  end
end

get '/messages/signup' do

  erb :'messages/signup'
end

get '/messages/signin' do

  erb :'messages/signin'
end


post '/messages' do

    @message = Message.new(
      title: params[:title],
      author: params[:author],
      url: params[:url],
      user_id: session[:user_id] 
      )
    if @message.save
      redirect '/messages'
    else
    erb :'messages/new'
  end
end

  get '/messages/:id' do
  @message = Message.find params[:id]
  erb :'messages/show'
end

  get '/messages/author/:author' do
    @message_author = Message.where(author: params[:author])
    erb :'messages/author'
  end

  post '/messages/new_user' do

    user = User.new(
      email: params[:email],
      password: params[:password]
      )
  
    if user.save
      session[:user_id] = user.id
      @current_user = user
      redirect '/messages'
    else
    erb :'messages/signup'
  end
end

  
post '/messages/authenticate_user' do
  user = User.find_by(email: params[:email])
    if user.password == params[:password]
       session[:user_id] = user.id
    @current_user = user
    redirect "/messages"
    
  else
    erb :'messages/signin'
  end
end



