require 'sqlite3'
require 'awesome_print'

db = SQLite3::Database.new('users.sqlite3')
db.execute <<-SQL
  CREATE TABLE IF NOT EXISTS users (
    name varchar(30),
    email varchar(255),
    birth_year int
  );
SQL

db.execute 'INSERT INTO users (name, email, birth_year) values (?,?,?);', ['Cristian', 'cr@cr.com', 1993]

users = db.execute 'SELECT * from users;'

ap users