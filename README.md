# md-lint
markdown lint with [markdownlint-cli](https://github.com/igorshubovych/markdownlint-cli)

## how to use

```yaml
name: md file lint

on: [push,pull_request]

jobs:
  md-lint:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
      with:
        fetch-depth: 1
    - uses: fight100year/md-lint@master
```
