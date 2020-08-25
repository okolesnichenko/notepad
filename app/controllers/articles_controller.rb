class ArticlesController < ApplicationController

  get '/articles' do
    Serializers::Articles::Many.new(scope).serialized_json
  end

  post '/articles' do
    article = Article.new(params)

    if article.save
      Serializers::Articles::Many.new(article).serialized_json
    else
      halt 422, article.errors.full_messages.to_json
    end
  end

  put '/articles/:id' do |id|
    article = Article.find(id)

    if article.update(params)
      Serializers::Articles::Many.new(article).serialized_json
    else
      halt 422, article.errors.full_messages.to_json
    end
  end

  delete "/articles/:id" do |id|
    article = Article.find(id)
    article.destroy
    {success: true}.to_json
  end

  private

  def scope
    Article.all
  end
end
