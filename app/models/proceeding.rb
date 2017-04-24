class Proceeding < Reference
  validates :title, :year, presence: true
end
