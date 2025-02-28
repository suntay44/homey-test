class Comment < Activity
  validates :body, presence: true
end