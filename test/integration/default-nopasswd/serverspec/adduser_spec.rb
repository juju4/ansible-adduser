require 'serverspec'

# Required by serverspec
set :backend, :exec

## Use Junit formatter output, supported by jenkins but how to pass environment through kitchen?
## http://www.agilosoftware.com/blog/configuring-test-kitchen-output-jenkins/
## https://github.com/test-kitchen/busser-serverspec/issues/9
if ENV.has_key?('SERVERSPEC_JUNIT')
  require 'yarjuf'
  RSpec.configure do |c|
      c.formatter = 'JUnit'
  end
end
#require 'yarjuf'
#RSpec.configure do |c|
#  c.formatter = 'JUnit'
#end

describe user('deploy') do
  it { should exist }
#  its(:encrypted_password) { should match(/^.{0,2}$/) }
  it { should have_authorized_key 'ssh-rsa ABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGHIJKLMNOPQRSTUVWXYZABCDEFGH foo@bar.local' }
end

describe command('chage -l deploy') do
  its(:stdout) { should match /Account expires/ }
  its(:stdout) { should_not match /Account expires.*never/ }
  its(:stdout) { should_not match /Last password change.*: password must be changed/ }
  its(:exit_status) { should eq 0 }
end
describe file('/etc/sudoers') do
  its(:content) { should match /deploy ALL=(ALL) NOPASSWD: \/usr\/bin\/whoami/ }
end
