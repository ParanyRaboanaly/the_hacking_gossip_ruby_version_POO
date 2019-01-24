require_relative 'controller'

class Router
  def initialize
    @controller =  Controller.new
  end

  def perform
    puts "BIENVENUE DANS THE GOSSIP PROJECT"
    puts "--------------*------------------"
    while true
      puts "Tu veux faire quoi BG ?"
      puts "---------*-----------"
      puts "1. Je veux créer un gossip"
      puts "2. Je veux voir les potins"
      puts "3. Veux-tu supprimer un potin"
      puts "4. Je veux quitter l'app"
      params = gets.chomp.to_i
      case params
      when 1
        puts "Tu as choisi de créer un gossip"
        puts "°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°°"
        @controller.create_gossip
      when 2
        puts "Voilà tes potins"
        puts "°°°°°°°°°°°°°°°°"
        @controller.index_gossip
      when 3
        puts "Tu vas supprimé un potin"
        puts "°°°°°°°°°°°°°°°°°°°°°°°°"
        @controller.destroy
      when 4
        puts "À bientôt !"
        puts "----*-----"
        break
      else
        puts "Erreur, merci de ressayer"
      end
    end
  end
end
#Router.new.perform
