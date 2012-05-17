require 'date'

def version
  contents = File.read File.expand_path('../lib/chronic_2001.rb', __FILE__)
  contents[/VERSION = "([^"]+)"/, 1]
end

task :test do
  $:.unshift './test'
  Dir.glob('test/test_*.rb').each { |t| require File.basename(t) }
end

desc "Generate RCov test coverage and open in your browser"
task :coverage do
  require 'rcov'
  sh "rm -fr coverage"
  sh "rcov test/test_*.rb"
  sh "open coverage/index.html"
end

desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -Ilib -rchronic_2001"
end

desc "Release Chronic version #{version}"
task :release => :build do
  unless `git branch` =~ /^\* master$/
    puts "You must be on the master branch to release!"
    exit!
  end
  sh "git commit --allow-empty -a -m 'Release #{version}'"
  sh "git tag v#{version}"
  sh "git push origin master"
  sh "git push origin v#{version}"
  sh "gem push pkg/chronic-#{version}.gem"
end

desc "Build a gem from the gemspec"
task :build do
  sh "mkdir -p pkg"
  sh "gem build chronic.gemspec"
  sh "mv chronic_2001-#{version}.gem pkg"
end

task :default => :test