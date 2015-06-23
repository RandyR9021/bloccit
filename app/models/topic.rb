class Topic < ActiveRecord::Base
<<<<<<< HEAD
    has_many :posts
    validates :name, length: {minimum: 5}, presence: true 
    validates :description, length: {minimum: 20}, presence: true
=======
    has_many :posts, dependent: :destroy
>>>>>>> checkpoint-47-destroy
end
