class Comment < ActiveRecord::Base
  belongs_to :task
  validates_presence_of :content, :name, :task_id
end
