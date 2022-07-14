class Menu < ApplicationRecord
    validates_uniqueness_of :name, notice: 'El nombre del menú ya existe'
    validates_presence_of :name, notice: 'El nombre del menú es requerido'
    validates_presence_of :icon, notice: 'El icono del menú es requerido y debe estar en formato de clase de fontawesome'
    validates_presence_of :description, notice: 'La descripción del menú es requerida'

    before_update :set_fav

    private

    # Cambia estado de favorito a true o false
    def set_fav 
      self.fav = !self.fav
    end


end
