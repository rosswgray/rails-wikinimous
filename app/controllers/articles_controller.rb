class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save

    redirect_to article_path(@article)
  end

  def edit
    @article = article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)

    redirect_to article_path(@Article)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to articles_path
  end

  def complete
    @Article.mark_as_complete
  end

  private

  def Article_params
    params.require(:Article).permit(:title, :details, :completed)
  end
end
