class Article < ApplicationRecord
  has_many :launches, class_name: "Launch", foreign_key: "id"
  has_many :events, class_name: "Event", foreign_key: "id"    
  
  validates :title, presence: true
  validates :url, presence: true, uniqueness: { case_sensitive: true }
  validates :imageUrl, presence: true
  validates :newsSite, presence: true
  validates :summary, presence: true

  max_paginates_per 5

end
