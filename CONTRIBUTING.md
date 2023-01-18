# Contributing to 🚦 Nvim One Monokai

Thank you for investing your time in contributing to our project!

One of the best ways to begin contributing in a meaningful way is by helping find bugs and filing issues for them.

## Issues

Issues are very valuable to this project.

  - Ideas are a valuable source of contributions others can make.
  - Problems show where this project is lacking.
  - With a question, you show where contributors can improve the user
    experience.

Thank you for creating them.

## Pull requests

1. Fork your own copy of this project.
2. Clone and link your fork with this repository `git remote add upstream https://github.com/cpea2506/one_monokai.nvim.git`.
3. You can now `git fetch upstream` and `git rebase [-i] upstream/main` to update your branches with the latest contributions.

### Setting up development tools

1. Formatter: [Stylua](https://github.com/johnnymorganz/stylua#installation)
2. Linter: [Selene](https://kampfkarren.github.io/selene/cli/installation.html)
3. [Make](https://github.com/wkusnierczyk/make)

### Code conventions

- All lua code must be formatted with **Stylua** to make consistence over project.

  ```bash
  # configurations are already stored in .stylua.toml
  stylua -c .
  ```
  
- Make sure **Selene** do not scream at you even with *Warning ⚠️* 

  ```bash
  # configuration are already stored in selene.toml and neovim.yml
  selene .
  ```
  
### Start developing
- Use a [git-feature-branch](https://www.atlassian.com/git/tutorials/comparing-workflows) instead of the main branch.
- Use a [rebase-workflow](http://git-scm.com/book/en/v2/Git-Branching-Rebasing).
- Name your branches meaningfully. Ex: `(feat/docs/...)/<what-your-pr-does>`
- Make sure all the [tests](tests/spec) pass locally before pushing with [`make test`](Makefile) command. Ex output:

  ```bash
  $ make test
  nvim --headless --noplugin -u tests/minimal_init.lua +Test
  Starting...Scheduling: tests/spec/config_spec.lua
  
  ========================================
  Testing:        one_monokai.nvim/tests/spec/highlight_spec.lua
  Success ||      Highlight should create new instance
  Success ||      Highlight should be able to extend default groups

  Success:        2
  Failed :        0
  Errors :        0
  ========================================
  ```

### Open PRs

- Title of the PR must follow [commit convention](https://www.conventionalcommits.org/en/v1.0.0/)
- Your PR must pass all the [workflows](https://github.com/cpea2506/one_monokai.nvim/actions).
