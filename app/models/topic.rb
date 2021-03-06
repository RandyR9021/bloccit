class Topic < ActiveRecord::Base
    has_many :posts, dependent: :destroy
    validates :name, length: {minimum: 5}, presence: true 
    validates :description, length: {minimum: 20}, presence: true

    scope :visible_to, -> (user) { user ? all : where(public: true) }
end
