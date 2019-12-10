# frozen_string_literal: true

# demo.rb
require File.expand_path(File.dirname(__FILE__) + '/../dbseeder')
require 'active_record'
require_relative 'models/course'
require_relative 'models/student'
require_relative 'models/grade'
require_relative 'models/building'

def db_configuration
  db_configuration_file = File.join(File.expand_path('..', __FILE__), 'config', 'database.yml')
  YAML.safe_load(File.read(db_configuration_file))
end

def test_run
  puts 'Seeding database...'

  courses = []
  students = []
  grades = []
  buildings = []

  # Create Courses
  15.times do
    courses.push(Course.create(subject: DBSeeder::Course.course_subject, number: DBSeeder::Course.course_number))
  end

  # Create Students
  15.times do
    students.push(Student.create(username: DBSeeder::Username.user_name + DBSeeder::Username.user_number))
  end

  # Create Grades
  15.times do
    grades.push(Grade.create(letter: DBSeeder::Grade.grade_letter, course_number: DBSeeder::Grade.course_number ));
  end

  # Create Buildings/Rooms
  15.times do
    buildings.push(Building.create(name: DBSeeder::Building.building_name, room: DBSeeder::Building.building_room ));
  end

  puts 'Finished seeding database!'
end

current_env = ENV['ENV'] || 'development'
ActiveRecord::Base.establish_connection(db_configuration[current_env])
test_run

# CREATE TABLE courses (Subject text, Number text);
# CREATE TABLE students (Username text);
# CREATE TABLE grades (Letter text, Course_Number text);
# CREATE TABLE buildings (Name text, Room text);