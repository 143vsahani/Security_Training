class Article < ApplicationRecord
  #   has_many :comments

  # validates :title, presence: true
  # validates :body, presence: true, length: { minimum: 5 ,message:"length must be 5"}

#   validates_length_of :last_name, maximum: 30, message: "less than 30 if you don't mind"
#   after_create def try
#   puts "Congratulation ! new article added"
# relationl callback
after_destroy :log_destroy_action
def log_destroy_action
  puts 'article destroyed'
  
end
    
#   end
end
