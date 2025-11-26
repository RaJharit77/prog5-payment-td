require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: :rubocop

desc "Lancer l'application"
task :run do
    sh "ruby src/main.rb"
end

desc "Lancer Rubocop"
task :lint do
    sh "bundle exec rubocop"
end

desc "Test CI"
task :ci do
    sh "bundle exec rubocop"
    sh "ruby src/main.rb"
end