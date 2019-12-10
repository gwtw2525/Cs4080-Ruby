# frozen_string_literal: true

class Building
  attr_accessor :name, :room

  def initialize(name, room)
    @name = name
    @room = room
  end
end