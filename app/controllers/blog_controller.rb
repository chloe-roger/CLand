class BlogController < ApplicationController
  skip_before_filter :authorize

  def index
    @news = Billet.order(:updated_at)
    @index = 1
    @number_news_by_page = 10
    @news_to_display = news_to_display
  end

  def news_to_display
    first = (@index - 1) * @number_news_by_page
    last = first + @number_news_by_page
    @news.slice(first .. last)
  end

end
