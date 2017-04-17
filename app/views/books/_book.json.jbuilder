json.extract! book, :id, :key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :created_at, :updated_at
json.url book_url(book, format: :json)
