This will take a team you've created within your organization and add all users and repositories to it.  It's up to you to create the team with read only access.  There are better tools out there that use actual JSON parsers; this was just made because I was limited to bash.  This should also work from anywhere as it has no real requirements.

You'll need an OAuth token, the id of your team and your organization name.  Throw those in, run it and you're done.

- [ ] add team creation functionality
- [ ] refactor pagination
- [ ] throw a python one in here to show how much simpler it is
