class Project < ApplicationRecord
  has_many :activities
  has_many :comments
  has_many :status_changes

  enum :status, {
    planned: "planned",
    in_progress: "in_progress",
    completed: "completed"
  }, default: :planned

  validates :name, presence: true
end
