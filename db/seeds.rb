# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Movies.destroy_all
Movies.create(name: "Hellboy", description: "La Agencia para la Investigación y Defensa Paranormal (AIDP) encomienda a Hellboy la tarea de derrotar a un espíritu ancestral: Nimue, conocida como 'La Reina de la Sangre'. Nimue fue la amante del mismísimo Merlín durante el reinado del Rey Arturo, de él aprendió los hechizos que la llevaron a ser una de las brujas más poderosas… Pero la locura se apoderó de ella y aprisionó al mago para toda la eternidad. Hace siglos consiguieron acabar con esta villana, enterrándola profundamente, pero ha vuelto de entre los muertos con la intenci", url_image: "https://i.playview.io/images/2019/03/27/kZw0A4ksTwP5iGKAWyIV2QgbnjD.jpg")
Movies.create(name: "Hombres de Negro Internacional", description: "Los Hombres de Negro siempre han protegido la Tierra de la escoria del universo. En esta nueva aventura, se enfrentarán a su mayor amenaza hasta la fecha: el topo en la organización MIB. Adaptación cinematográfica de los cómics de Lowell Cunningham", url_image: "https://image.tmdb.org/t/p/original/ozbfxtelyJNtbgVJAoQKLmDl7ZW.jpg")
Movies.create(name: "Los Vengadores EndGame", description: "Tras los sucesos de 'Vengadores: Infinity War', los superhéroes que sobrevivieron a Thanos se reunen para poner en práctica un plan definitivo que podría acabar con el villano definitivamente. No saben si funcionará, pero es su única oportunidad de intentarlo. Cuarta entrega de la saga 'Vengadores'", url_image: "https://i.playview.io/images/2019/03/28/1slHsfkoI0jqQqY4dfKXH0qB51D.jpg")
Movies.create(name: "Capitana Marvel", description: "La historia sigue a Carol Danvers mientras ella se convierte en uno de los héroes más poderosos del universo cuando la Tierra se encuentre atrapada en medio de una guerra galáctica entre dos razas alienígenas. Situada en los años 90, Captain Marvel es una historia nueva de un período de tiempo nunca antes visto en la historia del Universo Cinematográfico de Marvel.", url_image: "https://i.playview.io/images/2019/03/09/d3p5JuwN7dG0TvrN5h4ZY4tMOEX.jpg")
Movies.create(name: "Glass", description: "Continuando desde donde lo dejó 'Múltiple', 'Glass' sigue los pasos de David Dunn (Bruce Willis) en su búsqueda de la figura superhumana de 'La Bestia'. En la sombra, Elijah Price (Samuel L. Jackson) parece emerger como una figura clave que conoce los secretos de ambos. Secuela de 'El protegido' y 'Múltiple', de M. Night Shyamalan.", url_image: "https://i.playview.io/images/2019/01/26/vYbLXENNUaNcHQl4Te94Msqn1oj.jpg")

#5.times do 
    #Movies.create(
        #name: Faker::Movies::HarryPotter.book,
        #description: Faker::Movie.quote,
        #url_image: Faker::Movie.quote,
    #)
#end


