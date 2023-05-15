# GitHub Manager

## Installation:
```bash
git clone github-manager
cd github-manager
./install.sh
```

## Usecases:

```bash
Github repositories manager

USAGE:
  ghm <command>

COMMANDS:
  signin:    Sign in to github account
  list:      List repositories
  clone:     Clone repositories
  public:    Make repositories public
  private:   Make repositories private
  delete:    Delete repositories
  uninstall: Unistall github manager

LEARN MORE:
  Use ghm <command> --help for more information about command.
```

```bash
Sign in to github account

USAGE:
  ghm signin
```

```bash
List repositories from github account

USAGE:
  ghm list <OUTPUT>

OUTPUT:
  Output file (default: STDOUT).

FLAGS:
  --public  List only public repositories
  --private List only private repositories
  (no flag) List all repositories
```

```bash
Clone repositories from github account

USAGE:
  ghm clone <REPOSITORIES>

REPOSITORIES:
  File with list of repositories (default: ALL).

LEARN MORE:
  Each line of <REPOSITORIES> file should be defined according to the pattern:
  <USERNAME>/<REPOSITORY>
  Use 'ghm list' To see current list of repositories.
```

```bash
Make repositories public

USAGE:
  ghm public <REPOSITORIES>

REPOSITORIES:
  File with list of repositories (default: NONE).

LEARN MORE:
  Each line of <REPOSITORIES> file should be defined according to the pattern:
  <USERNAME>/<REPOSITORY>
  Use 'ghm list' To see current list of repositories.

  To make public all repositories use --public-all and --force flags (not recommended).
```

```bash
Make repositories private

USAGE:
  ghm private <REPOSITORIES>

REPOSITORIES:
  File with list of repositories (default: NONE).

LEARN MORE:
  Each line of <REPOSITORIES> file should be defined according to the pattern:
  <USERNAME>/<REPOSITORY>
  Use 'ghm list' To see current list of repositories.

  To make private all repositories use --private-all and --force flags (not recommended).
```

```bash
Delete repositories from github account

USAGE:
  ghm delete <REPOSITORIES>

REPOSITORIES:
  File with list of repositories (default: NONE).

LEARN MORE:
  Each line of <REPOSITORIES> file should be defined according to the pattern:
  <USERNAME>/<REPOSITORY>
  Use 'ghm list' To see current list of repositories.

  To delete all repositories use --delete-all and --force flags (not recommended).
```

```bash
Unistall github manager

USAGE:
  ghm uninstall
```