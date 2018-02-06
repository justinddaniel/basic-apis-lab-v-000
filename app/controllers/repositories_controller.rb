class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @response = Faraday.get 'https://api.github.com'
  end
end
