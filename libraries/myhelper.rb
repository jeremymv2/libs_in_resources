def verify_inspec_version(inspec_version)
  require 'inspec'
  # check we have the right inspec version
  Chef::Log.warn 'Verifying inspec version..'
  if Inspec::VERSION != inspec_version && inspec_version != 'latest'
    Chef::Log.warn "Wrong version of inspec (#{Inspec::VERSION}), please "\
      'remove old versions (/opt/chef/embedded/bin/gem uninstall inspec).'
  else
    Chef::Log.warn "Using inspec version: (#{Inspec::VERSION})"
  end
end
