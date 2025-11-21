class Student < ApplicationRecord
  validates :firstname, presence: true, length:{minimum:2, maximum:50}
  validates :lastname, presence: true, length:{minimum:2, maximum:50}
  validates :age, presence: true
  validates :date_of_birth, presence: true
end























