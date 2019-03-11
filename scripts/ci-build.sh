#!/usr/bin/env bash
set -e # halt script on error

gem update --system
gem update
gem install bundler:2.0.1
bundle update --bundler
bundle exec jekyll build
bundle exec htmlproofer ./_site
