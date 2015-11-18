class Task < ActiveRecord::Base
  has_many :comments
  validates_presence_of :description, :name
  scope :recentes, -> {
  order("created_at DESC")
}
end
