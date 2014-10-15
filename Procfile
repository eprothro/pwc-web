web: bundle exec unicorn -c ./config/unicorn.rb
worker: bundle exec sidekiq -q high,2 -q default -e production -c 1