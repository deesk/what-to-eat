# require 'pry'
require 'sinatra'
# require 'sinatra/reloader'
require 'pg'
require_relative 'database_config'
require_relative 'models/item'
require_relative 'models/customer'
require_relative 'models/comment'
require_relative 'models/store'

enable :sessions

helpers do
  def current_customer
    Customer.find_by(id: session[:customer_id])
  end

  def logged_in?
    !!current_customer
  end
end

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  @specials = Item.all.sample(3)
  erb :index
end

get '/search' do
  if params[:keyword].empty?
    redirect '/'
  else
    if params[:price].empty?
      @items = Item.where("name ILIKE '%#{params[:keyword]}%'")
        #search with keyword and price
    else
      @items = Item.where("name ILIKE '%#{params[:keyword]}%' AND price <= #{params[:price].to_i}")
    end
  end

  if @items.empty?
    erb :not_found
  else
    erb :list_items
  end
end

get '/signup' do
  erb :sign_up
end

get '/login' do
  erb :login
end

post '/create_account' do
  customer = Customer.new
  customer.first_name = params[:fname]
  customer.last_name = params[:lname]
  customer.email = params[:email]
  customer.password = params[:password]
  if customer.save
    erb :account_created
  else
    erb :sign_up
  end
end

post '/session' do
  customer = Customer.find_by(email: params[:email])

  if customer && customer.authenticate(params[:password])
    session[:customer_id] = customer.id
    redirect '/'
  else
    erb :login
  end
end

post '/add_comment' do
  comment = Comment.new
  comment.body = params[:body]
  comment.item_id = params[:item_id]
  comment.customer_id = session[:customer_id]
  if comment.save
    redirect "/search?keyword=#{params[:keyword]}"
  end
end

delete '/delete_comment' do
  comment = Comment.find(params[:comment_id])
  comment.destroy
  redirect "/search?keyword=#{params[:keyword]}"
end

delete '/session' do
  session[:customer_id] = nil
  redirect '/'
end
