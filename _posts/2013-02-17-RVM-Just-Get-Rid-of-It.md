---
title: RVM... Just Get Rid of It
date: 2013-02-17 17:00:00
layout: post
tags:
 - ruby
---

Gemset? Why should I compartamentalize my ruby dependencies if I am already using a Bundler? Isn't that redundant? Yes, you are correct.

Recently, I have been configuring a Jenkins server to run our builds at work. We run a number of rails projects on the same ubuntu box, some on ruby 1.8.7 and some on 1.9.3. We run RVM and create a gemset for each project. RVM causes a number of issues when you are running bash scripts (jenkins runs each build using a shell script). Instead of whining about RVM, I much prefer to walk you through the process of replacing it with rbenv.

With proper bundler user, gemsets are unnessecary. Instead, define the gems required for a project in the project's Gemfile. Then, run bundle install. rbenv is easily configured(see below!) to install gems to a projects' vendor directory instead the default system gems. 

Each application will be confined to only using gems defined in its Gemfile. However, please remember to refrain from avoiding gems with the `gem install`, except for global gems. The only gem that you should install manually is Bundler.

## Replace RVM with rbenv

1. Uninstall RVM.  
`rvm implode`  
`gem uninstall rvm`  
2. Remove this line from your .bash_profile (or .zshrc)  
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
7. Add these lines to your .bash_profile  
`if [ -f ~/.bashrc ]; then`  
  `source ~/.bashrc`  
`fi`
8. `source ~/.bash_profile`  
9. Enjoy life without gemsets!  