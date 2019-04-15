class User
  attr_accessor :email, :encrypted_password
  @@user_count = 0

  def initialize(email_to_save)
    @email = email_to_save
    @@user_count = @@user_count + 1
  end

  def change_password(new_password)
    @encrypted_password = encrypt(new_password)
  end

  def show_itself
    puts self
  end

  def self.count
    return @@user_count
  end

  private

  def encrypt(string_to_encrypt)
    return "##ENCRYPTED##"
  end

end

###################

# Puis un récap du cours :

# Une classe se déclare avec class TaClasse. 
# Une instance est un exemplaire unique, un objet de ta classe (ex: l'utilisatrice julie pour ta classe User).

# Une variable d'instance est définie dans une classe et permet de caractériser une instance (ex : @email pour les objets de classe User). Sa valeur est propre à chaque instance et si on la déclare en attr_accessor, on peut facilement la lire (ex: julie.email) ou la modifier (ex: julie.email = "xxxx").

# Les méthodes d'instances permettent d'exécuter des méthodes sur des instances de classe (la méthode change_password ci-dessus est une méthode d'instance). 
# Dans le code d'une méthode, il est possible de faire référence à l'instance concernée avec self.

# Une variables de classe est définie dans une classe et concerne la classe de manière globale (ex: @@user_count). 
# On ne peut les lire et les modifier en dehors du code de la classe qu'en écrivant des méthodes dédiées à cela.

# Les méthodes de classe concernent la classe de manière globale (self.count est une méthode de classe car, pour compter les instances de la classe User, nous voulons faire User.count et non pas julie.count qui n'aurait pas de sens). 
# Il est possible de modifier la méthode new et d'y ajouter du code en définissant la méthode initialize.

# Enfin, définir des méthodes comme "privées" permet d'organiser ton code tout en évitant de pouvoir les appeler en dehors du code de la classe. Ainsi, impossible de les appeler sur une instance en faisant julie.ta_méthode_privée (ex: .encrypt ci-dessus est une méthode privée, car je n'ai pas envie de pouvoir faire julie.encrypt).