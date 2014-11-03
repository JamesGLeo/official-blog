class WelcomeController < ApplicationController
  get '/' do
    @selected_pages = Page.order(created_at: :desc).limit(5)
    erb :index
  end
end