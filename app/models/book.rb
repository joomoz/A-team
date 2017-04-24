class Book < Reference
  validates :title, :year, :publisher, presence: true
end
