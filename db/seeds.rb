# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ["Creative Arts", "Design", "Information Technology", "Science"]

categories.each do |c|
  Category.create(name: c)
end


#======== CREATIVE ARTS ========#

arts_subcategories = [
  "Audio",
  "Filmmaking",
  "Music",
  "Photography",
  "Video Editing",
  "Visual Effects"
]

arts_subcategories.each do |type|
  Subcategory.create(name: type, category_id: 1)
end



#======== INFORMATION TECHNOLOGY ========#

tech_subcategories = [
  "Interactive Media",
  "Mobile App Development",
  "Web Development"
]

tech_subcategories.each do |type|
  Subcategory.create(name: type, category_id: 2)
end



#======== SCIENCE ========#

science_subcategories = [
  "Audio and Acoustics",
  "Architectural Science",
  "Illumination Design"
]

science_subcategories.each do |type|
  Subcategory.create(name: type, category_id: 3)
end



author1 = Author.create(name: "Don Norman")
author2 = Author.create(name: "Walter Murch")
author3 = Author.create(name: "Mariana Lopez")
author4 = Author.create(name: "Daniel Walzer")

publisher1 = Publisher.create(name: "Silman-James Press")
publisher2 = Publisher.create(name: "Routledge")
publisher3 = Publisher.create(name: "Focal Press")
publisher4 = Publisher.create(name: "Basic Books")

book1 = Book.create(
  title: "Architectural Acoustics",
  description: "Architectural Acoustics offers a comprehensive overview of acoustical science at a level suitable for either advanced undergraduate or introductory graduate courses in architectural design and architectural engineering. The text is organized according to how sound interacts with built structures, going from simple geometries through complex building structures. The book begins with a brief but useful history of architecture and the role of acoustics, as well as overview of human perception of, sound, and then progresses through topics ranging from acoustic measurement, noise metrics and environmental noise, to sound in enclosed spaces, sound transmission in buildings, vibration and vibration isolation, and noise in mechanical systems.",
  edition: 2,
  pages: 984,
  publication_date: "05-02-2014",
  format: "Paperback",
  author_id: 1,
  publisher_id: 1,
  category_id: 4
)

book2 = Book.create(
  title: "The Design of Everyday Things",
  description: "The Design of Everyday Things is a best-selling book by cognitive scientist and usability engineer Donald Norman about how design serves as the communication between object and user, and how to optimize that conduit of communication in order to make the experience of using the object pleasurable.",
  edition: 1,
  pages: 384,
  publication_date: "05-11-2013",
  format: "Paperback",
  author_id: 1,
  publisher_id: 1,
  category_id: 2
)

book3 = Book.create(
  title: "Emotional Design"
  description: "In Emotional Design, cognitive scientist Don Norman shows how the principles of human psychology apply to the invention and design of new technologies and products. In The Design of Everyday Things, Norman made the definitive case for human-centered design, showing that good design demanded that the user's must take precedence over a designer's aesthetic if anything, from light switches to airplanes, was going to work as the user needed."
  edition: 1,
  pages: 272,
  publication_date: "20-03-2007",
  format: "Paperback",
  author_id: 1,
  publisher_id: 1,
  category_id: 2
)

book4 = Book.create(
  title: "In the Blink of an Eye: A Perspective on Film Editing"
  description: "In the Blink of an Eye: A Perspective on Film Editing is a non-fiction filmmaking book on the art and craft of editing authored by Walter Murch. The book suggests editors prioritize emotion over the pure technicalities of editing.",
  edition: 2,
  pages: 146,
  publication_date: "08-08-2001",
  format: "Paperback",
  author_id: 2,
  publisher_id: 1,
  category_id: 1
)

