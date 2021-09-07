require 'yaml'

ruby_versions = %w(2.5.5 2.6.3 2.7.2)

[
  { rails: '5.2.6', activeadmin: '2.9.0', reform: '2.6.0', 'reform-rails': '0.2.3', bootsnap: '1.8.1' },
  { rails: '6.1.4.1', activeadmin: '2.9.0', reform: '2.6.0', 'reform-rails': '0.2.3', bootsnap: '1.8.1' },
].each do |deps|
  appraise deps.map { |name, requirement| "#{name}-#{requirement}" }.join('_') do
    deps.each { |name, requirement| gem name, requirement }
  end
end

gemfiles = Dir.glob('gemfiles/*.gemfile')
travis = ::YAML.dump(
  'language' => 'ruby',
  'rvm' => ruby_versions,
  'before_install' => [
    'rvm use @global',
    'gem uninstall bundler -x || true',
    'gem install bundler --force --version=1.17.3',
    'bundler --version',
    './bin/setup',
   ],
  'script'  => [
    'bundle exec rake spec',
    'bundle exec rubocop --fail-level C'
  ],
  'gemfile' => gemfiles,
  'addons' => {
    'code_climate' => {
      'repo_token' => 'c326cca5984d0e32d2c6b5d9b985756ee9312f63fc6a9480fc9cfa55c454d68a'
    }
  }


)

::File.open('.travis.yml', 'w+') do |file|
  file.write(travis)
end
