namespace :configure do
  task :initial  do
    puts 'Initialising databases'
    setup 'development'
    setup 'test'
    puts 'Configuration complete'
  end
end

private

def setup(env)
  puts "-#{env.capitalize} database"
  run_db_task 'drop', env
  run_db_task 'create', env
  run_db_task 'migrate', env
  run_db_task 'seed', env
  puts "-#{env.capitalize} database completed"
end

def run_db_task(command, env)
  puts "--#{command.capitalize}"
  instruction = "rake db:#{command}"
  instruction += " RAILS_ENV=#{env}" if env=='test'
  instruction += ' VERBOSE=false' if command=='migrate'
  system("#{instruction}")
end