class Unpuplished < Reference
  validates :author, :titlte, :note, presence: true
end
