lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include? lib

Gem::Specification.new do |s|
  s.name    = 'hunky_dory'
  s.version = '1.0.0'
  s.authors = ['Brendan Thomas']
  s.summary = 'Create descriptions of feature changes and display to Users in a
               Bootstrap modal'

  s.files =
    Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  s.test_files = Dir['text/**/*']

  s.add_dependency 'rails', '~> 5.0'
  s.add_dependency 'bootstrap-sass', '~> 3.3'

  s.add_development_dependency 'sqlite3'
end
