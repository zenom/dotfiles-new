#!/usr/bin/env ruby
require 'colorize'
require 'optparse'
require 'open3'

# base options
options = {:feature => false, :bugfix => true}
optparse = OptionParser.new do |opts|
    opts.banner = "Usage: ticket [options]"
    opts.on('-p', '--prefix PREFIX', 'Prefix a ticket with PREFIX') do |prefix|
        options[:prefix] = prefix
    end
    opts.on('-t', '--ticket TICKET', 'Ticket number to create.') do |ticket|
        options[:ticket] = ticket
    end
    # help
    opts.on('-h', '--help', 'Display the help screen') do |help|
        puts opts
        exit
    end
    # if its a feature pass this tag
    opts.on('-f', '--feature', 'If this is a feature.') do
        options[:feature] = true
        options[:bugfix] = false
    end
    # if this is a bug pass this tag
    opts.on('-b', '--bugfix', 'If this is a bugfix.') do
        options[:bugfix] = true
        options[:feature] = false
    end
end
optparse.parse!

stdin, stdout, stderr = Open3.popen3('git branch')

# see if we are in a branch, if not, warn.
if !stderr.readlines.empty? && stderr.readlines[0].include?('Not a git repository')
    puts "You are not in a git branch.".red
    exit
else
    
    # if not ticket number this will be a prompt
    if options[:ticket].nil?
        puts "What ticket #:"
        options[:ticket] = gets.strip
    end
    # if no prefix assigned use dirname
    if options[:prefix].nil?
        options[:prefix] = File.basename(Dir.pwd).strip
    end

    if options[:feature]
        command = "git checkout -b feature/#{options[:prefix].upcase}-#{options[:ticket]} develop"
    elsif options[:bugfix]
        command = "git checkout -b bugfix/#{options[:prefix].upcase}-#{options[:ticket]} develop"
    end
    stdin, stdout, stderr = Open3.popen3(command)
end