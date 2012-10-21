# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

articles = Article.create([
  {:title => 'New Planet in Neighborhood' , :author => 'DENNIS OVERBYE' , :content => 'Bringing the search for another Earth about as close as it will ever get, a team of European astronomers was scheduled to announce on Wednesday that it had found a planet the same mass as Earths in Alpha Centauri, a triple star system that is the Suns closest neighbor, only 4.4 light-years away.'},
  {:title => 'A Chemist Comes Very Close to a Midas Touch' , :author => 'HILLARY ROSNER' , :content => 'Dr. Chirik, 39, has learned how to make iron function like platinum, in chemical reactions that are crucial to manufacturing scores of basic materials. While he cant, sadly, transmute a lump of iron ore into a pile of valuable jewelry, his version of alchemy is far more practical, and the implications are wide-ranging.'},
  {:title => 'Time, Speed and Distance' , :author => 'JIM THOMSON' , :content => 'It is ironic, but time out here is also precious. We have to turn back toward San Diego soon. Although I would already count this trip a big success, I want to find some more storm conditions some strong winds and big waves to measure before we are done.'}
  ])