
#custom validation  



# class MyValidator < ActiveModel::Validator
#     def validate(record)
#       unless record.name.start_with? 'X'
#         record.errors.add :name, "Provide a name starting with X, please!"
#       end
#     end
#   end
  
#   class Person < ApplicationRecord
#     validates_with MyValidator
#   end
  
class User < ApplicationRecord
#     # validates :name ,presence: true, length: {minimum: 5 ,message:"atleast 5 character must"}
#     # validates_length_of :name, maximum: 5, message: "less than 5 if you don't mind"

#callback
# after_create -> {puts "Congratulation!! user are created "}

#     validates_with MyValidator
# validates :name, uniqueness: true, on: :create 
# validates :email,uniqueness: true, on: :create

# before_create ->(user) { user.name = user.name.capitalize if user.name.blank? }

#after_touch
# after_touch do |user|
#   puts "You have touched an object"
# end
before_create :do_something_before_create
  after_create :do_something_after_create

  # Define your callback methods
  def do_something_before_create
    # Code to run before the model is created
    puts "users are ready to creation"
  end

  def do_something_after_create
    # Code to run after the model is created
    puts "users are created"
  end
##after_touch
# after_touch do |user|
#   puts "you have touched an object"
# end
# custom callback





    
end
