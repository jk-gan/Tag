class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true

  def posted_on
   created_at.strftime 'Posted on %B %d, %Y'
  end
end
