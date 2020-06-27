class Course < ApplicationRecord
  validates :title , presence: true
  validates :description, presence: true, length: { minimum: 5 }
  
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_rich_text :description
  
  belongs_to :user
  
  default_scope { includes(:user) } 
  
  def to_s
    title
  end
end
