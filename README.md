# dotfiles

Personal configuration files for shell, editor, and system settings.

## Installation

### Prerequisites

- Install [Toml Bombadil](https://oknozor.github.io/toml-bombadil/)

### Steps

> [!IMPORTANT]
> [Toml Bombadil](https://oknozor.github.io/toml-bombadil/) is unable to
> extract SSH keys from GPG private key, so the repo needs to be cloned
> manually instead.

```nu
git clone git@github.com:Rasmus-Bertell/dotfiles.git ~/projects/dotfiles
bombadil install ~/projects/dotfiles/bombadil.toml
bombadil link
```

## Code of Conduct

[`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md)

## Contributing

[`CONTRIBUTING.md`](CONTRIBUTING.md)

## License

[![License: Unlicense](https://img.shields.io/badge/license-Unlicense-blue.svg)](LICENSE)
