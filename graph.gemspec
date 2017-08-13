Gem::Specification.new do |s|
  s.name        = 'graph'
  s.version     = '0.0.1'
  s.authors     = ['Bapu']
  s.email       = ['bapu.sethi.03@gmail.com']
  s.homepage    = 'https://github.com/bapu/graph'
  s.summary     = ''
  s.description = ''

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.rdoc_options  = ['--charset=UTF-8']
end
