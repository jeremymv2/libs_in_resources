provides :inspec
resource_name :inspec

property :version, String, default: 'latest'

default_action :install

# installs inspec if required
action :install do
  converge_by 'install/update inspec' do
    chef_gem 'inspec' do
      version new_resource.version if new_resource.version != 'latest'
      compile_time true
      action :install
    end
  end

  converge_by 'verifies the inspec version' do
    verify_inspec_version version # `verify_inspec_version` is a function call from `myhelper.rb`
  end
end
