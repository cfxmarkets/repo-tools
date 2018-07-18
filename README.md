Repo Tools
=============================================================================

This repo comprises a small collection of bash scripts that may be useful for repo maintenance tasks.

**Important:** Some of these tools utilize dependencies that are not officially declared. The point of them is simply to be able to share them among repos with fairly formulaic structures. Often, these structures will be very CFX-specific. Feel free to fork....


## Usage

### `shmig-show-migrations-for-ref`

```sh
NAME
        shmig-show-migrations-for-ref - use shmig to list migrations for a particular branch of a git repository

SYNOPSIS
        shmig-show-migrations-for-ref [options] [ref]

DESCRIPTION
        Checks out [ref] into a temp directory and uses shmig to get a full list of available migrations.
        The intended use for this in conjunction with `migrate-to-common-ancestor`.

OPTIONS
        --repo-root|-r
            Optional. The repo in which to operate this command. If not supplied, the command moves
            up from the current working directory trying to find a .git directory.

        --tmp-dir|-t
            Optional. The path to the directory to use as a temp directory. If none provided, a random
            temp directory will be created under /tmp/.

        --no-cleanup|-n
            Optional. Don't delete the temporary directory.
```

### `shmig-migrate-to-common-ancestor`

```sh
NAME
        shmig-migrate-to-common-ancestor - use shmig to migrate the database of a repository to the common ancestor of two refs

SYNOPSIS
        shmig-migrate-to-common-ancestor [options] [from_ref] [to_ref]

DESCRIPTION
        Finds the common database migration ancestor between [from_ref] and [to_ref] and uses shmig
        to migrate the database to that ancestor

OPTIONS
        --repo-root|-r
            Optional. The repo in which to operate this command. If not supplied, the command moves
            up from the current working directory trying to find a .git directory.
```

