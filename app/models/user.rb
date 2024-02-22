class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    has_many :categories
    has_many :expenditures, foreign_key: 'author_id'
  
    validates :name, presence: true, length: { maximum: 100 }
  
    def total_budget
      expenditures.sum(:amount)
    end
  end