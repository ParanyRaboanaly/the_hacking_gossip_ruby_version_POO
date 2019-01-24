require 'rubygems'
require 'csv'
class Gossip
  attr_reader :content, :author

  @@user_count = 0

  def initialize(author, content)
    @content = content
    @author = author
    @@user_count += 1
  end

  def save
    h = { @author => @content }
    CSV.open('db/gossip.csv', 'a') { |csv| h.to_a.each { |elem| csv << elem } }
  end

  def self.all
    i = 0
    csv = CSV.read('db/gossip.csv')
    csv.each do |ligne|
      all_gossips = [ligne] # gossip_provisoire
      print ligne
      i += 1
      if i == 1
        puts ' <-'
        puts ' '
        i = 0
      end
    end
  end

  def destroy
    autor_dest = @author
    csv = CSV.read('db/gossip.csv')
    csv[autor_dest.to_i] = nil
    array_autor = []
    result = 0
    (0...csv.length).each do |i|
      unless csv[i].nil?
        array_autor[result] = csv[i]
        result += 1
    end
    end
    puts array_autor.to_s
  end
end
