class Article < Reference
  #key, author, title and year are already required for reference
  validates :author, :journal, :volume, presence: true


end
