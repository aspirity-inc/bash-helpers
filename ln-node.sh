#!/usr/bin/env bash

NODE_VERSION=$(node --version)

ln --symbolic \
  $NVM_DIR/versions/node/$NODE_VERSION \
  $HOME/.node