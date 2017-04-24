class Techreport < Reference
  validates :author, :title, :institution, :year, presence: true
end
