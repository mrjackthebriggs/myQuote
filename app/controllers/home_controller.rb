class HomeController < ApplicationController
  def index
    # Gets the most recently posted quotes,top down
    @quotes = Quote.order(pub_date: :desc).take(5)
  end

  def uquotes
    # Gets the most recent quotes from the user, top down
    @quotes = Quote.where(user_id: session[:user_id]).reverse()
  end
end
