#!/usr/bin/env ruby
require 'pp'

in_file = ARGV[0] or raise 'No input file provided!'

class Node
  attr_accessor :text, :items

  def initialize(text)
    @text   = text
    @items  = []
  end

  def <<(pushee)
    @items << pushee
  end

  def last
    @items.last
  end
end

class MarkdownTOCParser
  def self.process(node_list, line)
    char = line[0]
    if char == '#'
      process(node_list.last.items, line[1..-1])
    elsif char == ' '
      process(node_list, line[1..-1])
    else
      node_list << Node.new(line)
    end
  end

  def self.dump(node, index = 0, indention=0)
    puts '    '*indention + (index+1).to_s + ') ' + node.text
    node.items.each_index do |i|
      dump(node.items[i], i, indention+1)
    end
  end
end

toc = Node.new('Table of Contents')
File.open(in_file).each do |line|
  if line[0] == '#'
    MarkdownTOCParser.process(toc.items, line[1..-1])
  end
end
MarkdownTOCParser.dump(toc)
