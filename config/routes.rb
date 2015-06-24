BeersQuizzApp::Application.routes.draw do
  root to: 'main#index'

  get "/quizz" => 'main#index'

  scope '/api' do
    scope '/beers' do
      get '/' => 'beers#get'
    end
    scope '/search/:name' do
      get '/' => 'beers#search'
    end
    scope '/random/beers' do
      get '/' => 'beers#random_beers'
    end
    scope '/categories' do
      get '/' => 'beers#categories'
    end
  end
end
