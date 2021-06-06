# Open JIRA tickets via bash
## Usage
In the script, change the base URL to your JIRA instance URL. For quick access you can add to your `.bashrc` or (`.bash_profile` if you're into that) an alias such as:

```
alias jb="path/to/jb.sh"
```

Or, you can add a folder of all shell scripts you want to run and add that to your `$PATH`

When you're in a git repository, it will attempt to use your branch name to open an associated JIRA ticket assuming that the naming convention follows: foo/ticketid-1234-foo-bar-foo. ie feature/ios-1234-good-description-here. you can also run it like `jb ios-1234` and it will use that ticket id instead.