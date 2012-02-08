begin
  require 'bundler/gem_tasks'
rescue LoadError
end

require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.test_files = Dir['test/test_*.rb']
end

desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -Ilib -rchronic"
end

task :default => :test