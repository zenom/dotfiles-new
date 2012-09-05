#!/usr/bin/env ruby
begin
    require 'colorize'
rescue LoadError
    puts "Get colorized output ... `gem install colorize`"
    exit
end

branch_name  = `git branch | grep "*" | sed "s/* //"`.strip!
prefix_names = ['feature', 'bugfix']
message      = ARGV[0]
info         = branch_name.split('/')

# Abort if there is no message supplied.
abort "You must enter a commit message.".red if message.nil?

# if they are in a feature/bugfix branch add ticket #
if prefix_names.include?(info[0])
    # its a prefixed branch
    commit_message = "[#{info[1]}] #{message.strip}"
else
    # its master etc., just use the branch name
    commit_message = "[#{branch_name}] #{message.strip}"
end

cmd = "git add -A && git commit -m '#{commit_message}'"
puts "Running: #{cmd}".yellow
`#{cmd}`