categoria_imagenes = ['animals','arch','nature','people','tech']
true_false = [true, false]

def fecha_hora_rand 
    desde = 0.0
    hasta = Time.now
    Time.at(desde + rand * (hasta.to_f - desde.to_f))
end

# TIP: rails db:seed --trace -v 

# Sembrar tabla Image
# =============================================================================
Image.destroy_all
#
500.times do |i|
    nickname = (Faker::Name.first_name_neutral + rand(1000).to_s)
    apellido = Faker::Name.last_name
    imagen = "http://placeimg.com/" + rand(320..350).to_s + "/" + rand(320..350).to_s + "/" + categoria_imagenes[rand(5)]
    imagen_md5 = Digest::MD5.hexdigest(imagen)

    Image.create!(
        name: apellido,
        image_type_id: rand(5),
        description: ("Imagen de " + apellido),
        input_hash: imagen_md5,
        output_hash: imagen_md5,
        image_parent_id: 0,
        image_url: imagen,
        image_local_url: "",
        date_input_hash: fecha_hora_rand(),
        date_output_hash: fecha_hora_rand(),
        fav: true_false[rand(2)]
    )
end
p "Imagenes creadas = #{Image.count}"
    
