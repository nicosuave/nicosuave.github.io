# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "guard-less"
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.authors = ["Brendan Erwin"]
  s.date = "2012-04-17"
  s.description = "Guard::Less automatically compiles less (like lessc --watch)"
  s.email = ["brendanjerwin@gmail.com"]
  s.homepage = "https://github.com/guard/guard-less"
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.23"
  s.summary = "Guard gem for Less"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<guard>, [">= 0.2.2"])
      s.add_runtime_dependency(%q<less>, ["~> 2.1.0"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0"])
      s.add_development_dependency(%q<fakefs>, ["~> 0.3"])
      s.add_development_dependency(%q<guard-rspec>, ["~> 0.4"])
      s.add_development_dependency(%q<rspec>, ["~> 2.6"])
    else
      s.add_dependency(%q<guard>, [">= 0.2.2"])
      s.add_dependency(%q<less>, ["~> 2.1.0"])
      s.add_dependency(%q<bundler>, ["~> 1.0"])
      s.add_dependency(%q<fakefs>, ["~> 0.3"])
      s.add_dependency(%q<guard-rspec>, ["~> 0.4"])
      s.add_dependency(%q<rspec>, ["~> 2.6"])
    end
  else
    s.add_dependency(%q<guard>, [">= 0.2.2"])
    s.add_dependency(%q<less>, ["~> 2.1.0"])
    s.add_dependency(%q<bundler>, ["~> 1.0"])
    s.add_dependency(%q<fakefs>, ["~> 0.3"])
    s.add_dependency(%q<guard-rspec>, ["~> 0.4"])
    s.add_dependency(%q<rspec>, ["~> 2.6"])
  end
end
