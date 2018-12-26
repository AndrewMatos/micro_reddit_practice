class Comment < ApplicationRecord
  validates :body, presence: true
  validates :user_id, presence: true
  validates :post_id, presence: true
 # validates :comment_id, presence: false 
  #if: :doesnthavepost?

  def doesnthavepost?
  	!self.errors.messages.empty?
  end
  

  #has_many :comments
  belongs_to :user
  belongs_to :post
 # belongs_to :comment
end
