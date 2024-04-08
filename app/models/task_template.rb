class TaskTemplate < ApplicationRecord
  belongs_to :task_type

  enum frequency: { daily: 0, weekly: 1, monthly: 2, quarterly: 3, yearly: 4 }
end
