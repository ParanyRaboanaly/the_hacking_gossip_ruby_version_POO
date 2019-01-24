require_relative 'gossip'
require_relative 'view'

class Controller
  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip.to_a
    gossip = Gossip.new((params[0][0]).to_s, (params[0][1]).to_s)
    gossip.save
  end

  def index_gossip
    #array = Gossip.new('a', 'b')
    Gossip.all
  end

  def destroy
    params = @view.destroy
    gossip = Gossip.new(params.to_s, 'b')
    gossip.destroy
  end
end
