class Pokemon

    attr_accessor :id, :name, :type, :db

    def initialize(id:, name:, type:, db:)
        @id = id
        @name = name
        @type = type
        @db = db
    end

    def self.save(name, type, db)
        sql = "INSERT INTO pokemon (name, type) VALUES (?,?)"
        db.execute(sql, name, type)
    end

    def self.find(id, db)
        sql = "SELECT * FROM pokemon WHERE id = ?"
        exe = db.execute(sql, id).flatten
        Pokemon.new({id:exe[0], name:exe[1], type:exe[2], db: b})
    end

end
