class Mastersthesis < Reference
  validates :author, :title, :school, :year, presence: true
end
