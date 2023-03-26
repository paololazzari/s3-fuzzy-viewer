# s3-fuzzy-viewer

s3-fuzzy-viewer is a cli tool that allows you to search for s3 objects using fuzzy search

![demo](doc/demo.gif)


## Usage

```bash
s3-fuzzy-viewer
```

or, using docker:

```bash
docker run --rm -it -v ~/.aws:/root/.aws:ro plazzari/s3-fuzzy-viewer:latest
```

- to move between the two windows, use tab
- to select the bucket of interest, press enter in the first window
- to scroll the content of the selected object up and down, use shift+up or shift+down
- to exit printing to stdout the selected object, press enter
- to kill, use ctrl+c or ctrl+d
- to make the focused window smaller or larger, use ctrl-b + < or ctrl-b + >

## Prerequisites

- [awscli](https://github.com/aws/aws-cli)
- [fzf](https://github.com/junegunn/fzf)
- tmux

## Installation

```bash
curl -O https://raw.githubusercontent.com/paololazzari/s3-fuzzy-viewer/master/s3-fuzzy-viewer
cp s3-fuzzy-viewer /usr/local/bin/s3-fuzzy-viewer
chmod +x /usr/local/bin/s3-fuzzy-viewer
```