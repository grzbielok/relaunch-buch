#!/bin/sh
# Local dev server for relaunch-buch.de.
# Uses a modern Jekyll (3.9.5, installed via --user-install) instead of the
# theme's own pinned Gemfile.lock, which no longer resolves against current
# Ruby/RubyGems.
export PATH="$HOME/.gem/ruby/2.6.0/bin:$PATH"
export JEKYLL_NO_BUNDLER_REQUIRE=true
cd "$(dirname "$0")"
exec jekyll serve --port 4001 --watch
