#!/usr/bin/env ruby

# Google Code Jam
# Matt Di Pasquale
# gmail: liveloveprosper

# Round 1B
# Start: Saturday, May 22, 2010 at 16:00 UTC
# Duration: 2hr 30min
# End: Saturday, May 22, 2010 at 18:30 UTC

# A. File Fix-It
require 'scanf.rb'
require 'rubygems'
require 'ruby-debug'
require 'pp'

infile = File.new(ARGV[0])
outfile = File.new(ARGV[0].sub("in","out"), "w")

T = infile.scanf("%d\n")[0]

# Tree is made up of nodes with a name & children nodes
class Node
  attr_accessor :name, :children
  def initialize(name, children)
    @name = name
    @children = children
  end
  
  def add_child(node)
    children << node
  end
  
  def get_child(name)
    children.each do |child|
      return child if name == child.name
    end
    return nil
  end
end

1.upto(T) do |case_num|
  mkdir_count = 0
  parent = child = Node.new("/",[])
  root = parent
  n, m = infile.scanf("%d %d\n")

  # Store n existing paths
  n.times do |i|
    path = infile.scanf("%s\n")[0]
    path = path[1..-1].split("/")
    path.each_with_index do |name, k|
      if child = parent.get_child(name)
        parent = child
      else
        while k < path.count
          child = Node.new(name, [])
          parent.add_child child
          parent = child
          k += 1
        end
        break
      end
      parent = root
    end
    puts root
  end

  # Add m new paths
  m.times do |i|
    path = infile.scanf("%s\n")[0]
    path = path[1..-1].split("/")
    path.each_with_index do |name, k|
      if child = parent.get_child(name)
        parent = child
      else
        while k < path.count
          child = Node.new(name, [])
          parent.add_child child
          parent = child
          k += 1
          mkdir_count += 1
        end
        break
      end
      parent = root
    end
  end

  outfile.puts "Case #" + case_num.to_s + ": " + mkdir_count.to_s
end
