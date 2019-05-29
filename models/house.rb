require_relative('../db/sql_runner')


class House
  attr_reader :house_name, :id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @house_name = options['house_name']
  end

def save()
  sql =  "INSERT INTO houses (
  house_name
  ) VALUES(
    $1
    )RETURNING id"
    values = [@house_name]
    house_data = SqlRunner.run(sql, values).first
    @id = house_data['id'].to_i
end


def self.all()
  sql = "SELECT * FROM houses"
  houses = SqlRunner.run(sql)
  return houses.map { |house| House.new(house) }
end


def self.find(id)
  sql = "SELECT * FROM houses WHERE id = $1"
  values = [id]
  house = SqlRunner.run(sql, values)
  result = House.new(house.first)
  return result
end

def self.delete_all()
  sql = "DELETE FROM houses"
  SqlRunner.run(sql)
end



end


# <option <% "selected" if @house.house_name == "Gryffindor" %> value="Gryffindor">Gryffindor</option>
# <option <% "selected" if @house.house_name == "Ravenclaw" %>  value="Ravenclaw">Ravenclaw</option>
# <option <% "selected" if @house.house_name == "Hufflepuff" %> value="Hufflepuff">Hufflepuff</option>
# <option <% "selected" if @house.house_name == "Slytherin" %> value="Slytherin">Slytherin</option>
