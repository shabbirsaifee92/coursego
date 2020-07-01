class Course < ApplicationRecord
  include PublicActivity::Model
  tracked owner: Proc.new{ |controller, model| controller.current_user }
  
  validates :title, :short_description, :language, :price, :level, presence: true
  validates :description, presence: true, length: { minimum: 5 }
  
  extend FriendlyId
  friendly_id :title, use: :slugged
  
  has_rich_text :description
  
  belongs_to :user
  
  default_scope { includes(:user) } 
  
  def self.languages
     [ "English", "Polish", "French"]
  end
  
  def self.levels
    [ "Beginner", "Intermediate", "Advanced", "N/A"]
  end
  
  def to_s
    title
  end
end
