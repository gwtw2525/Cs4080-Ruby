# frozen_string_literal: true

class Grade < ActiveRecord::Base
  validates :letter, presence: true
  validates :course_number, presence: true
end