class ArticlesController < ReferencesController
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.key.blank?
        @article.create_key
    end

    respond_to do |format|
      if @article.save
        format.html { redirect_to root_path, notice: 'Article was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def article_params
      params.require(:article).permit(:key, :author, :title, :journal, :year, :volume,
      :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle,
      :editor, :organization, :entry_type)
    end
end
