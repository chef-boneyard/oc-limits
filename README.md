# Limits cookbook

## Requirements

### Platform:

- Ubuntu 10.04, 12.04

### Cookbooks:

- runit

## Attributes

Attributes under `node['limits']['star']` are treated as a hash for configuring limits.  Arbitrary types can be added for example to add rss the attributes would look lit:

```
node['limits']['star']['rss']['hard'] = 'unlimited'
node['limits']['star']['rss']['soft'] = 'unlimited'
```

## Recipes

### default

Sets up `/etc/security/limits.conf` and `/etc/init/runsvdir.conf`.  Unknown types are filtered out of `/etc/init/runsvdir.conf` and runit is restarted when that file changes.

## Testing

The cookbook provides the following Rake tasks for testing:

    rake foodcritic                   # Lint Chef cookbooks
    rake integration                  # Alias for kitchen:all
    rake kitchen:all                  # Run all test instances
    rake kitchen:default-ubuntu-1204  # Run default-ubuntu-1204 test instance
    rake rubocop                      # Run RuboCop style and lint checks
    rake spec                         # Run ChefSpec examples
    rake test                         # Run all tests

## License and Author

- Author: Paul Mooring
- Copyright (C) 2014 Chef Software, Inc.

All rights reserved.
