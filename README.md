# Dockerize Ruby App

 git clone https://github.com/tanpd-3287/docker-ruby/ ruby
 
 cd ruby/
 
 cp /config/database.yml.example /config/database.yml
 
 => change this
 
 production:
 
  adapter: mysql2
  
  database: redmine
  
  host: db
  
  username: redmine
  
  password: redmine
  
  encoding: utf8mb4
  
  ## Migrate DB
  docker compose exec app env RAILS_ENV=production rake db:migrate
  
  => docker compose up -d 


