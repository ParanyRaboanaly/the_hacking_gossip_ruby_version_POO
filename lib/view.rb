
class View
  def create_gossip
    puts 'Auteur'
    print '-->'
    author = gets.chomp.to_s
    puts 'Contenue'
    print '-->'
    content = gets.chomp.to_s
    params = { author.to_s => content.to_s } #params enregister sous Hash
  end

  def index_gossip
    @controller.index_gossip
  end

  def destroy
    puts 'lequel veux-tu supprimé en 1er...'
    params = gets.chomp.to_i
  end
end
