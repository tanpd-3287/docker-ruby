FROM ruby:2.7.2
WORKDIR /var/www/redmine
COPY Gemfile* /var/www/redmine
RUN bundle install
COPY . .
EXPOSE 3000
ENV RAILS_ENV=production
RUN gem install mysql2 
RUN rake generate_secret_token
RUN RAILS_ENV=production rake db:migrate
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]

