class BooksController < ReferencesController

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.key.blank?
        @book.create_key
    end

    respond_to do |format|
      if @book.save
        format.html { redirect_to root_path, notice: 'Book was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private
def book_params
      params.require(:book).permit(:key, :author, :title, :journal, :year, :volume,
      :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle,
      :editor, :organization, :entry_type)
    end
end
