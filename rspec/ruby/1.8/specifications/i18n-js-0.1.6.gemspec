# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{i18n-js}
  s.version = "0.1.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nando Vieira"]
  s.date = %q{2010-09-23}
  s.email = %q{fnando.vieira@gmail.com}
  s.extra_rdoc_files = ["README.rdoc"]
  s.files = ["README.rdoc", "Rakefile", "init.rb", "install.rb", "lib/i18n-js.rb", "lib/i18n-js/railtie.rb", "lib/i18n-js/version.rb", "lib/tasks/i18n-js_tasks.rake", "source/i18n-js.yml", "source/i18n.js", "test/i18n-test.html", "test/i18n-test.js", "test/i18n_js_test.rb", "test/jsunittest/jsunittest.js", "test/jsunittest/unittest.css", "test/resources/custom_path.yml", "test/resources/default.yml", "test/resources/locales.yml", "test/resources/multiple_files.yml", "test/resources/no_scope.yml", "test/resources/simple_scope.yml", "test/test_helper.rb"]
  s.homepage = %q{http://github.com/fnando/i18n-js}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.4.1}
  s.summary = %q{It's a small library to provide the Rails I18n translations on the Javascript.}
  s.test_files = ["test/i18n_js_test.rb", "test/test_helper.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
