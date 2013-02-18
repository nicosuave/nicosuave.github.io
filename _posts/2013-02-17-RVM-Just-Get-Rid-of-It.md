---
title: RVM Just Get Rid of It
date: 2013-02-17 17:00:00
layout: post
tags:
 - ruby
---

Gemset? Wut? 

That was my first reaction, when I was becoming acquainted to Ruby. Why should I compartamentalize my ruby dependencies if I am already using a Gemfile? Isn't that redundant? Why yes, it is. 

More recently, I have been configuring a jenkins server to run our builds at work. We run a number of projects on the same server, some on ruby 1.8.7 and some on 1.9.3. We also run RVM and create a gemset for each project. And boy, does RVM cause a number of issues when you are running bash scripts (jenkins runs each build using a shell script). Instead of ranting about RVM(like everyone else & their mother in the rubyb community), I'm going to focus on the glass half-full approach, instead.

If you use Bundler properly, you don't need gemsets, at all. Instead, define the gems required for a project in the project's Gemfile. Then, run bundle install. rbenv is easily configured to install gems to a projects vendor directory instead of to system gems. This provides comprable gem isolation to using RVM gemsets, provided that you keep your system gems clean. 

In other words, DON'T INSTALL GEMS WITH gem install. The only gem that you should install manually is Bundler.

## Replace RVM with rbenv

1. Uninstall RVM.
        `rvm implode`
        `gem uninstall rvm`
2. Remove this line from your .profile
       `[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"`
3. Install rbenv & ruby-build(to install different ruby versions)
        `brew update`
        `brew install rbenv`
        `brew install ruby-build`
3. Install your favorite version of ruby. A few examples are provided
        `rbenv install 1.9.3-p327`
        `rbenv install 2.0.0-preview2`
4. Rehash rbenv (do this after installing binaries)
5. Add these lines to ~/.bundle/config
        `BUNDLE_PATH: vendor`
        `BUNDLE_BIN: vendor/binstubs`
        `BUNDLE_DISABLE_SHARED_GEMS: "1"`
6. Add this line to your `~/.bashrc`
        `PATH=vendor/binstubs:$PATH`
7. Add these lines to your .bash_profile(or .zshrc if you must)
        if [ -f ~/.bashrc ]; then
          source ~/.bashrc
        fi
8. `source ~/.bash_profile`
9. Enjoy life without gemsets!
