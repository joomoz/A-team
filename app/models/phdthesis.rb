class Phdthesis < Reference
  validates :author, :title, :school, :year, presence: true
end
