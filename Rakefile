require 'rubygems'

begin
  require 'rake'
  require 'rake/testtask'
rescue LoadError
  task(:test) { $stderr.puts '`gem install rake` to run tests' }
else
  Rake::TestTask.new(:test) do |test|
    test.libs << 'lib' << 'test'
    test.pattern = 'test/**/*_test.rb'
    test.verbose = true
  end
end

def gemspec
  @gemspec ||= begin
    file = File.expand_path('../feepogram.gemspec', __FILE__)
    eval(File.read(file), binding, file)
  end
end

begin
  require 'rake/gempackagetask'
rescue LoadError
  task(:gem) { $stderr.puts '`gem install rake` to package gems' }
else
  Rake::GemPackageTask.new(gemspec) do |pkg|
    pkg.gem_spec = gemspec
  end
  task :gem => :gemspec
end

desc "validate the gemspec"
task :gemspec do
  gemspec.validate
end

