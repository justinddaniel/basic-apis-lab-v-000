class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @response = Faraday.get 'https://api.github.com/search/repositories' do |req|
    req.params["q"] = params[:query]
    req.params["client_id"] = 'Iv1.bee96250bcec2b3c'
    req.params["client_secret"] = '2a3275dfe56c260d949180e88883fb5c9657cb23'
  end

  body = JSON.parse(@response.body)
  @results = body["items"]
  render 'search'
end

end
