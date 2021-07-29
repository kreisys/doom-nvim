<div align="center">

# Doom Nvim

![License](https://img.shields.io/github/license/NTBBloodbath/doom-nvim?style=for-the-badge)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=for-the-badge)](http://makeapullrequest.com)
![Latest Release](https://img.shields.io/github/v/release/NTBBloodbath/doom-nvim?include_prereleases&style=for-the-badge&color=red)
![GitHub last commit (branch)](https://img.shields.io/github/last-commit/NTBBloodbath/doom-nvim/develop?style=for-the-badge)
![Neovim version](https://img.shields.io/badge/Neovim-0.5-57A143?style=for-the-badge&logo=neovim)

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-14-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

[Features](#features) • [Install](#install) • [Documentation] • [Contribute](#contribute)

![Doom Nvim demo](https://i.imgur.com/ejEnlEP.png)

</div>

---

## Introduction

<a href="http://ultravioletbat.deviantart.com/art/Yay-Evil-111710573">
  <img src="https://raw.githubusercontent.com/hlissner/doom-emacs/screenshots/cacochan.png" align="right" />
</a>

Doom Nvim is a Neovim port of the [doom-emacs](https://github.com/hlissner/doom-emacs) framework
and adapted to Vim philosophy.

Its goal is to give Neovim an initial configuration to start working in a stable and efficient
development environment without spending a lot of time configuring everything and without forgetting
that we don't all need the same environment.

> As a vimmer, I know that it's difficult to configure Vim/Neovim when you are just starting to use it,
> how time consuming it's to customize it to your needs and that's why Doom Nvim exists
> _also because I love Doom_.

Its design is guided by these mantras:

- **Gotta go fast.** Startup and run-time performance are priorities.
  That is why Doom Nvim uses Lua instead of Vimscript for its configurations
  and lazy-loads _all_ the plugins.
- **Your system, your rules.** You know better than a third party what is
  convenient for you. At least, Doom hopes so! It won't _automatically_
  install system dependencies nor plugins that have external dependencies
  (and will force plugins not to do so either if they have any external dependencies).
- **What does not serve you, you throw away.** Doom Nvim is made up of a moderate number
  of plugins (~40 plugins as of this writing). You more than anyone know what you need in
  your environment and that's why Doom Nvim allows you to easily disable plugins and add new ones.
  Also, Doom Nvim doesn't come with TreeSitter parsers or Language Server Protocols configured by default,
  so **you can use _only_ what you need**.

## Notices

- **2021-07-12**: If you are facing issues related to `LuaSnip`, update Doom Nvim and follow
  the instructions found in the issue [#38](https://github.com/NTBBloodbath/doom-nvim/issues/38).
- **2021-07-03**: The `doomrc` has been fragmented and it is not working anymore,
  please see [Migrating to 3.0.0](./docs/getting_started.md#migrating-to-300)
  for more information.
- **2021-05-01**: The `doomrc` is not using Vimscript anymore, please see the
  new [doomrc](./doomrc) file structure for use it with Lua.

## Features

- Minimalistic good looks inspired by modern code editors.
- Works out of the box, just install and start editing.
- A modular organizational structure for separating concerns in your config.
- Extensible and customizable, everything can be easily modified.
- Curated and sane defaults for many plugins.
- Automatized, you don't have to care about manually managing plugins, installing
  language servers or even TreeSitter syntax parsers, Doom Nvim will handle all
  these things for you.
- A declarative and powerful [plugins management system](https://github.com/wbthomason/packer.nvim)
  (powered by `packer.nvim`).
- Opt-in LSP integration for many languages by using the new
  built-in LSP included on Neovim 0.5.
- An Emacs which-key like plugin to manage your `keybindings`, centered around leader
  prefix key (<kbd>SPC</kbd>).
- Project search _and more_ utilities, powered by
  [telescope.nvim].

## Prerequisites

### Installation

- Curl 7.x (for using the installation script)
- Git 2.23+

### Runtime

- Neovim 0.5.0 onwards

- GNU `find`
- _Optionals:_
  - [ripgrep] 11.0+ or [fd] 7.3.0+ (improves file indexing performance for some commands)
  - `nodejs` and `npm` (required to use some Language Server Protocols)

Doom is comprised of [~40 optional plugins][modules], some of which may have
additional dependencies. [Please visit their documentation][modules].

## Install

Simply run the following command:

```sh
curl -sLf https://raw.githubusercontent.com/NTBBloodbath/doom-nvim/main/bin/install.sh | bash
```

Or if you want to live in the bleeding-edge with the latest features:

```sh
curl -sLf https://raw.githubusercontent.com/NTBBloodbath/doom-nvim/develop/bin/install.sh | bash -s -- -d
```

Or if you are using a configurations switcher like cheovim:

```sh
curl -sLf https://raw.githubusercontent.com/NTBBloodbath/doom-nvim/develop/bin/install.sh | bash -s -- -s
```

Then [read our Getting Started guide][getting-started] to be walked through
installing, configuring and maintaining Doom Nvim.

> **NOTE**: If you want to see all the available commands in the installation script, then use
> <kbd>bash -s -- -h</kbd> instead of just <kbd>bash</kbd>

## Getting help

Neovim is not very difficult. Although you will occasionally run into problems
if you are not an advanced vimmer. When you do, here are some places you can look help:

- [Our documentation][documentation] covers many use cases.
  - [The Configuration section][configuration] covers how to configure Doom Nvim and
    its modules.
  - [The Plugins Management section][plugins-management] covers how to install
    and disable plugins.
- Search the [Doom Nvim's issue tracker](https://github.com/NTBBloodbath/doom-nvim/issues)
  before opening a new issue to see if your issue was already been reported and to
  avoid duplicating issues.

## Acknowledgements

- [hlissner](https://github.com/hlissner) per doing Doom Emacs :heart:.
- [romgrk](https://github.com/romgrk) per doing a port to Vim of Doom One
  colorscheme from Doom Emacs (and everyone who improves the colorscheme!).
- [All our contributors](#contributors) per helping improve Doom :heart:

## Contribute

- I really :heart: pull requests and bug reports (please see the [Contributing Guidelines][contribute] before contributing)!
- Don't hesitate to [tell me my Lua coding style sucks](https://github.com/NTBBloodbath/doom-nvim/issues/new),
  but please tell me why.

## Contributors

Special thanks to these amazing people for helping improve doom (see [emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tr>
    <td align="center"><a href="https://johnirle.com/"><img src="https://avatars.githubusercontent.com/u/11879736?v=4?s=100" width="100px;" alt=""/><br /><sub><b>John Irle</b></sub></a><br /><a href="https://github.com/NTBBloodbath/doom-nvim/commits?author=JohnIrle" title="Documentation">📖</a></td>
    <td align="center"><a href="http://www.brianketelsen.com/"><img src="https://avatars.githubusercontent.com/u/37492?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Brian Ketelsen</b></sub></a><br /><a href="https://github.com/NTBBloodbath/doom-nvim/commits?author=bketelsen" title="Code">💻</a> <a href="https://github.com/NTBBloodbath/doom-nvim/issues?q=author%3Abketelsen" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/Samantha-uk"><img src="https://avatars.githubusercontent.com/u/45871296?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Samantha-uk</b></sub></a><br /><a href="https://github.com/NTBBloodbath/doom-nvim/commits?author=Samantha-uk" title="Documentation">📖</a></td>
    <td align="center"><a href="https://rscircus.github.io/"><img src="https://avatars.githubusercontent.com/u/1167114?v=4?s=100" width="100px;" alt=""/><br /><sub><b>rscircus</b></sub></a><br /><a href="https://github.com/NTBBloodbath/doom-nvim/commits?author=rscircus" title="Documentation">📖</a></td>
    <td align="center"><a href="http://bandithedoge.com/"><img src="https://avatars.githubusercontent.com/u/26331682?v=4?s=100" width="100px;" alt=""/><br /><sub><b>bandithedoge</b></sub></a><br /><a href="https://github.com/NTBBloodbath/doom-nvim/commits?author=bandithedoge" title="Documentation">📖</a></td>
    <td align="center"><a href="https://github.com/vhyrro"><img src="https://avatars.githubusercontent.com/u/76052559?v=4?s=100" width="100px;" alt=""/><br /><sub><b>vhyrro</b></sub></a><br /><a href="https://github.com/NTBBloodbath/doom-nvim/commits?author=vhyrro" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/Mremmalex"><img src="https://avatars.githubusercontent.com/u/40169444?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Ifeanyichukwu Sampson Ebenezer</b></sub></a><br /><a href="https://github.com/NTBBloodbath/doom-nvim/issues?q=author%3AMremmalex" title="Bug reports">🐛</a></td>
  </tr>
  <tr>
    <td align="center"><a href="https://github.com/GustavoPrietoP"><img src="https://avatars.githubusercontent.com/u/70907734?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Gustavo Prieto</b></sub></a><br /><a href="https://github.com/NTBBloodbath/doom-nvim/commits?author=GustavoPrietoP" title="Code">💻</a></td>
    <td align="center"><a href="https://github.com/ZeusThundr"><img src="https://avatars.githubusercontent.com/u/76399616?v=4?s=100" width="100px;" alt=""/><br /><sub><b>ZeusThundr</b></sub></a><br /><a href="https://github.com/NTBBloodbath/doom-nvim/issues?q=author%3AZeusThundr" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/leonistor"><img src="https://avatars.githubusercontent.com/u/310468?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Leo Nistor</b></sub></a><br /><a href="https://github.com/NTBBloodbath/doom-nvim/issues?q=author%3Aleonistor" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/notusknot"><img src="https://avatars.githubusercontent.com/u/69602000?v=4?s=100" width="100px;" alt=""/><br /><sub><b>notusknot</b></sub></a><br /><a href="https://github.com/NTBBloodbath/doom-nvim/commits?author=notusknot" title="Documentation">📖</a></td>
    <td align="center"><a href="https://github.com/bdillahu"><img src="https://avatars.githubusercontent.com/u/2058566?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Bruce Dillahunty</b></sub></a><br /><a href="https://github.com/NTBBloodbath/doom-nvim/commits?author=bdillahu" title="Documentation">📖</a> <a href="https://github.com/NTBBloodbath/doom-nvim/issues?q=author%3Abdillahu" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/amxj9"><img src="https://avatars.githubusercontent.com/u/2029709?v=4?s=100" width="100px;" alt=""/><br /><sub><b>amxj9</b></sub></a><br /><a href="https://github.com/NTBBloodbath/doom-nvim/issues?q=author%3Aamxj9" title="Bug reports">🐛</a></td>
    <td align="center"><a href="https://github.com/AceMouty"><img src="https://avatars.githubusercontent.com/u/45374681?v=4?s=100" width="100px;" alt=""/><br /><sub><b>Kyle Guerrero</b></sub></a><br /><a href="https://github.com/NTBBloodbath/doom-nvim/commits?author=AceMouty" title="Documentation">📖</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!

## License

Doom Nvim is licensed under [GPLv2](./LICENSE) license.

[contribute]: docs/contributing.md
[documentation]: docs/README.md
[getting-started]: docs/getting_started.md
[install]: docs/getting_started.md#install
[configuration]: docs/getting_started.md#configuring-doom
[plugins-management]: docs/getting_started.md#plugins-management
[modules]: docs/modules.md
[editorconfig]: http://editorconfig.org/
[fd]: https://github.com/sharkdp/fd
[ripgrep]: https://github.com/BurntSushi/ripgrep
[telescope.nvim]: https://github.com/nvim-telescope/telescope.nvim
