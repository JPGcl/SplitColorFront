class Image < ApplicationRecord
    # Imagenes asociadas
    has_one_attached  :main_picture
    has_many_attached :canvas
    acts_as_favoritable

    validates :description, presence: true
    validates :input_hash,  presence: true
    validates :output_hash, presence: true
    validates :image_url,   presence: true
    validate  :main_picture_format

    #before_update :set_fav

    private
      # Cambia estado de favorito a true o false
      #def set_fav 
      #  self.fav = !self.fav
      #end

      def main_picture_format
        return unless main_picture.attached?
        return if main_picture.blob.content_type.start_with? 'image/'
        main_picture.purge_later
        errors.add(:main_picture, 'debe ser una imágen')
      end
end
