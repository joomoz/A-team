class Inproceeding < Reference
  validates :title, :year, :author, :booktitle, presence: true
end
