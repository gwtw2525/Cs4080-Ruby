# frozen_string_literal: true

# course.rb

class Course < ActiveRecord::Base
  validates :subject, presence: true
  validates :number, presence: true
end
