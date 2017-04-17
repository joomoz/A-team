class Article < Reference
  #key, author, title and year are already required for reference
  validates :journal, :volume, presence: true
end
