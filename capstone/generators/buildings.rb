# frozen_string_literal: true

module DBSeeder
  class Building < Generator
    class << self
      def building_name
        fetch('building.names')
      end

      def building_room
        (Array.new(1) { |_| sample(leading) } + 
            Array.new(2) { |_| sample(digits) }).join
      end

      def leading
        %w[1 2 3]
      end

      def digits
        %w[0 1 2 3 4 5 6 7 8 9]
      end
    end
  end
end
