class Article < ApplicationRecord
    has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 5 ,message:"length must be 5"}
#   after_create def try
#   puts "Congratulation ! new article added"
    
#   end
end
