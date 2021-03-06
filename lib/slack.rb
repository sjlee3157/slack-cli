#!/usr/bin/env ruby

# Use the dotenv gem to load environment variables
# Use HTTParty to send a GET request to the channels.list endpoint
# Check that the request completed successfully, and print relevant information to the console if it didn't
# Loop through the results and print out the name of each channel

require 'prettyprint'
require 'awesome_print'
require 'httparty'
require 'dotenv'
Dotenv.load

require_relative 'workspace'

def main
  puts "Welcome to the Ada Slack CLI!"

  workspace = Workspace.new

  until false
    puts "\n"
    puts "There are #{workspace.users.length} users and #{workspace.channels.length} channels."
    puts "Please enter one of the following: list users, list channels, quit"
    input = gets.chomp

  case input
  when "list users"
    puts workspace.list_users
  when "list channels"
    puts workspace.list_channels
  when "quit"
    puts "Thank you for using the Ada Slack CLI"
    break
  else
    puts "please enter a valid input: list users, list channels, quit"
  end

end
end

main if __FILE__ == $PROGRAM_NAME
