class Book < Reference
  #key, author, title and year are already required for reference
  validates :publisher, presence: true
end
