class Unpuplished < Reference
  validates :author, :title, :note, presence: true
end
