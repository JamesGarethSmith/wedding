set :passenger_restart_command, "mkdir -p #{File.join(release_path,'tmp')} touch #{File.join(release_path,'tmp','restart.txt')}"
set :passenger_restart_options, -> {}

role :app, %w{james@212.71.233.215}
role :web, %w{james@212.71.233.215}
role :db,  %w{james@212.71.233.215}