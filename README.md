This repo is a fork of [bioconda/bioconda-recipes][1] for maintaining
Nextstrain-related recipes and submitting PRs upstream.  It contains only
ephemeral branches for use in PRs.

## Set up

First clone the `master` branch from the upstream repo:

    git clone --origin upstream --single-branch --branch master https://github.com/bioconda/bioconda-recipes

Then add this repo as an additional remote:

    cd bioconda-recipes
    git remote add --fetch nextstrain https://github.com/nextstrain/bioconda-recipes

Now you have a local clone with two remotes, `upstream` and `nextstrain`,
instead of the usual `origin`, and the `master` branch tracking
`upstream/master`.

## Starting a PR

First make sure your `master` branch is up-to-date:

    git switch master
    git pull --ff-only

Then make a new branch for your changes:

    git switch --create some-branch-name

[Do your work and make commits][2].  Optionally, [test your changes locally][3].

Push your branch to the `nextstrain` remote:

    git push -u nextstrain some-branch-name

Finally, go to GitHub and [open a PR][4] for your branch.


[1]: https://github.com/bioconda/bioconda-recipes
[2]: https://bioconda.github.io/contributor/workflow.html#make-some-edits
[3]: https://bioconda.github.io/contributor/building-locally.html
[4]: https://bioconda.github.io/contributor/workflow.html#create-a-pull-request
