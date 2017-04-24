class Conference < Reference
  validates :title, :year, :author, :booktitle, presence: true
end
