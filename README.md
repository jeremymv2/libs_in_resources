# libs_in_resources

## Using Chef library functions inside new (> 12.5) custom resources

This is an example of using the `verify_inspec_version` method from the `myhelper` library inside of the `inspec` resource.

```
  converge_by 'verifies the inspec version' do
    verify_inspec_version version # `verify_inspec_version` is a function call from `myhelper.rb`
  end
```
