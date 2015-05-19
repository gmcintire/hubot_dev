# config valid only for Capistrano 3.1
lock '3.1.0'

set :application, 'hubot_dev'
set :repo_url, 'git@example.com:me/my_repo.git'
set :deploy_to, '/home/deploy/apps/hubot_dev'
set :scm, :git

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
      # execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end
end
