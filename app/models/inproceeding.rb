class Inproceeding < Reference
  #key, author, title and year are already required for reference
  validates :author, :booktitle, presence: true
end
