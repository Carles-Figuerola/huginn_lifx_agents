# HuginnLifxAgents

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/huginn_lifx_agents`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this string to your Huginn's .env `ADDITIONAL_GEMS` configuration:

```ruby
ADDITIONAL_GEMS=<other_agent_gem>,huginn_lifx_agents(github: omniscopeio/huginn_io_agents)
```

Get credentials for your instance of Huginn to OAuth users on Lifx and put your cedentials into ENV variables:

```
LIFX_CLIENT_ID=asdf8796asdf876asf8976sad8675asdf
LIFX_CLIENT_SECRET=asdf8765asdf8765asdf8765dsaf098sfd
```

And then execute:

    $ bundle

## Development

Running `rake` will clone and set up Huginn in `spec/huginn` to run the specs of the Gem in Huginn as if they would be build-in Agents. The desired Huginn repository and branch can be modified in the `Rakefile`:

```ruby
HuginnAgent.load_tasks(branch: 'master', remote: 'https://github.com/cantino/huginn.git')
```

Make sure to delete the `spec/huginn` directory and re-run `rake` after changing the `remote` to update the Huginn source code.

After the setup is done `rake spec` will only run the tests, without cloning the Huginn source again.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/huginn_lifx_agents. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

