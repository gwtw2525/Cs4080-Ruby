# frozen_string_literal: true

class Building < ActiveRecord::Base
  validates :name, presence: true
  validates :room, presence: true
end