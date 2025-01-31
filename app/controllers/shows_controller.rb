require 'httparty'

class ShowsController < ApplicationController
  def index
    url = "https://fasc2025.onrender.com/SHOWS"
    response = HTTParty.get(url)

    if response.success?
      @shows = response.parsed_response
    else
      @shows = []
      flash[:alert] = "Erro ao carregar os shows."
    end
  end
end
