class Pokemon
  attr_accessor :id, :name, :type, :hp, :db
  
<<<<<<< HEAD
  def initialize(id:, name:, type:, hp: nil, db:)
=======
  def initialize(id:, name:, type:, hp:nil, db:)
>>>>>>> 184e603a745fa3720a4a313548cb28b3f0cbf0b0
    @id = id
    @name = name
    @type = type
    @hp = hp
    @db = db
  end
  
  def self.save(name,type,db)
    db.execute("INSERT INTO pokemon (name, type) VALUES (?, ?)", name, type)
  end
  
  def self.find(id_num,db)
    pokemon_data = db.execute("SELECT * FROM pokemon WHERE id =?",id_num).flatten
<<<<<<< HEAD
    Pokemon.new(id: pokemon_data[0], name: pokemon_data[1], type: pokemon_data[2], hp: pokemon_data[3], db: db)
=======
    Pokemon.new(id: pokemon_data[0], name: pokemon_data[1], type: pokemon_data[2], hp:pokemon_data[3], db: db)
>>>>>>> 184e603a745fa3720a4a313548cb28b3f0cbf0b0
  end
  
  def alter_hp(new_hp, db)
    db.execute("UPDATE pokemon SET hp = ? WHERE id = ?", new_hp, self.id)
  end
end
