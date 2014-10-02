### Overview
This will take a team you've created within your organization and add all users and repositories to it.  It's up to you to create the team with read only access.  There are better tools out there that use actual JSON parsers; this was just made because I was limited to bash.  This should also work from anywhere as it has no real requirements.

You'll need an OAuth token (https://help.github.com/articles/creating-an-access-token-for-command-line-use), the id of your team (https://developer.github.com/v3/orgs/teams/#list-teams) and your organization name (godspeed).

### Steps
Clone the repo
Throw in your variables
chmod +x generator.sh
./generator.sh

### To Dos
- [x] throw up the basic generator
- [ ] add team creation functionality
- [ ] refactor pagination
- [ ] throw a python one in here to show how much simpler it is
