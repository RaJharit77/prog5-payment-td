require "rubocop/rake_task"

RuboCop::RakeTask.new

task default: :rubocop

desc "Lancer l'application"
task :run do
  sh "ruby src/main.rb"
end

desc "Lancer Rubocop"
task :lint do
  sh "rubocop"
end
