class Reference < ActiveRecord::Base
  validates :key, :author, :title, :year, presence: true
end
