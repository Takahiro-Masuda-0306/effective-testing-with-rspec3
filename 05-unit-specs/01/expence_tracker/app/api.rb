require 'sinatra/base'
require 'json'

module ExpenseTracker
  class API < Sinatra::Base
    post '/expenses' do
      JSON.generate('expense_id'=>32)
    end

    get '/expenses/:date' do
      JSON.generate([])
    end
  end
end