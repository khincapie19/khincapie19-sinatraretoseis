require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/cookies'

get '/' do
  @sum = cookies[:sum] ? cookies[:sum].to_i : 0

  erb :index
end

post '/' do
  count  = params[:count] ? params[:count].to_i : 0
  @sum = cookies[:sum] ? cookies[:sum].to_i : 0

  @sum += count

  cookies[:sum] = @sum

  redirect to('/')
end
