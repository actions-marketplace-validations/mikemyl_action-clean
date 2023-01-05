# Clean Github Action

## Background

Some docker Github Actions can leave leftover files, which are usually owned by root. These files
cannot be cleaned up by the user that owns the runner process (assuming it's not root).

We therefore use that docker action to clean up root-owned files and directorie.


## Usage

```
name: Build and Clean

on:
  push:
    branches-ignore:
      - master
jobs:
  build:
    runs-on: self-hosted
    steps:
      - uses: actions/checkout@v2
      - run: echo Hello World
      - uses: mikemyl/action-clean@1.0.0
```
