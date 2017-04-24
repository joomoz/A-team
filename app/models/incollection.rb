class Incollection < Reference
  validates :title, :publisher, :year, :author, :booktitle, presence: true
end
