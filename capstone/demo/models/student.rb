# frozen_string_literal: true

# student.rb

require_relative 'student.rb'

class Student < ActiveRecord::Base
  validates :username, presence: true
end