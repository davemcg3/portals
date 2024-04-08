class Task < ApplicationRecord
  belongs_to :task_template
  belongs_to :user

  enum status: { to_do: 0, in_progress: 1, done: 2}
  enum priority: { low: 0, medium: 1, high: 2, emergency: 3}
end
