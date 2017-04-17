json.extract! article, :id, :key, :author, :title, :journal, :year, :volume, :number, :pages, :month, :note, :publisher, :series, :address, :edition, :booktitle, :editor, :organization, :entry_type, :created_at, :updated_at
json.url article_url(article, format: :json)
