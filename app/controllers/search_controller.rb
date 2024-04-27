class SearchController < ApplicationController
  def index
    # Stolen from the workshop
    quote_query = params[:quote_query] 
    if quote_query.present? 
      @quotematch = Quote.all.where("quotes.quote_text LIKE ?", "%#{quote_query}%").distinct 
    end
  end
end
