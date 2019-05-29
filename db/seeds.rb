require_relative('../models/student.rb')
require_relative('../models/house.rb')
require('pry')

Student.delete_all()
House.delete_all()


house1 = House.new({
  "house_name" => "Gryffindor"
  })
  house1.save()

  house2 = House.new({
    "house_name" => "Ravenclaw"
    })

     house2.save()

    house3 = House.new({
      "house_name" => "Slytherin"
      })

    house3.save()

      house4 = House.new({
        "house_name" => "Hufflepuff"
        })
        house4.save()


student1 = Student.new({
  "first_name" => "Harry",
  "last_name" => "Potter",
  "house_id" => house1.id,
  "age" => 11
  })
  student1.save()


  student2 = Student.new({
    "first_name" => "Ron",
    "last_name" => "Weasley",
    "house_id" => house2.id,
    "age" => 12
    })


    student2.save()

    student3 = Student.new({
      "first_name" => "Draco",
      "last_name" => "Malfoy",
      "house_id" => house3.id,
      "age" => 11
      })


      student3.save()

      student4 = Student.new({
        "first_name" => "Luna",
        "last_name" => "Lovegood",
        "house_id" => house4.id,
        "age" => 10
        })


        student4.save()



    all_students = Student.all()
    all_houses = House.all()

binding.pry
nil
