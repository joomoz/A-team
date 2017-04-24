class Article < Reference
  validates :author, :journal, :volume, :title, :year, presence: true
end
