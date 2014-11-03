class PagesController < ApplicationController
  
  post '/' do 
    authenticate!
    current_user.pages << Page.create(params[:page])
    redirect '/users/profile'
  end

  get '/:id/edit' do
    authenticate!
    @page = Page.find(params[:id])
    erb :'/pages/edit'
  end

  patch 'pages/:id' do
    page = Page.find(params[:id])
    page.update(params[:page])
    redirect 'users/profile'
  end

  delete '/:id' do
    Page.delete(params[:id])
    redirect '/users/profile'
  end

end