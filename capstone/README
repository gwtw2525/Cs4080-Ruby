# DBSeeder Demo

### Requirements
- Ruby 2.6.3
- postgresql

### Initializing the DBSeeder
If this is your first time running the DBSeeder, create a database in PostgreSQL's CLI like so:
```
createdb capstone
```
Then, create the required tables like so:
```
psql capstone
> CREATE TABLE courses (Subject text, Number text);
  CREATE TABLE students (Username text);
  CREATE TABLE grades (Letter text, Course_Number text);
  CREATE TABLE buildings (Name text, Room text);
```

### Running the DBSeeder
To seed the database with dummy data, run this command from the project root
```
ruby demo/demo.rb
```

Now you can view the database in PostgreSQL and view the populated tables!
```
psql capstone
> SELECT * FROM courses;
  SELECT * FROM usernames;
  SELECT * FROM grades;
  SELECT * FROM buildings;
```