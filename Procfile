release: bundle exec rails db:migrate
web: bundler exec puma -t 5:5 ${PORT:-3000}-e $(RACK_ENV:-development)