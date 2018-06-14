require 'yaml'

ruby_versions = %w(2.2.2)

[
  { rails: '3.2.22.5', activeadmin: '1.0.0.pre5', reform: '2.2.4', 'reform-rails': '0.1.7' },
  { rails: '4.2.10', activeadmin: '1.2.1', reform: '2.2.4', 'reform-rails': '0.1.7' },
  { rails: '4.2.10', activeadmin: '1.2.1', reform: '2.3.0.rc1', 'reform-rails': '0.2.0.rc2' },
  # { rails: '5.1.4', activeadmin: '1.2.1', reform: '2.3.0.rc1', 'reform-rails': '0.2.0.rc2' },
].each do |deps|
  appraise deps.map { |name, requirement| "#{name}-#{requirement}" }.join('_') do
    deps.each { |name, requirement| gem name, requirement }
  end
end

travis = ::YAML.dump(
  'language' => 'ruby',
  'rvm' => ruby_versions,
  'before_script' => [
    './bin/setup',
   ],
  'script'  => [
    'bundle exec rake spec',
    'bundle exec rubocop --fail-level C'
  ],
  'gemfile' => Dir.glob('gemfiles/*.gemfile'),
  'addons' => {
    'code_climate' => {
      'repo_token' => 'c326cca5984d0e32d2c6b5d9b985756ee9312f63fc6a9480fc9cfa55c454d68a'
    }
  }


)

::File.open('.travis.yml', 'w+') do |file|
  file.write(travis)
end
