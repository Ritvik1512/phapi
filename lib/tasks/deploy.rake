namespace :deploy do
  desc 'Deploy the app to production'
  task :production do
    app = 'phapi'
    remote = "git@heroku.com:#{app}.git"

    system "git push #{remote} master"
    system "heroku run rake db:migrate --app #{app}"
  end
end
