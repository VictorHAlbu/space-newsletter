env :PATH, ENV['PATH']
set :output, "log/cron.log"

every 1.day, at: ['9:00 am'] do
    rake "db:seed"
end