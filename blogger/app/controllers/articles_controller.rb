class ArticlesController < ApplicationController
 include ArticlesHelper

  def index
    # We want the list of articles to be accessible from both the controller and the view.
   @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      redirect_to new_article_path
    end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to article_path
    else
      render 'edit'
    end
  end

  def destroy
    @article = Article.find(params[:id]).destroy
    redirect_to articles_path
  end



end
