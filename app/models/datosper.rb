class Datosper < ApplicationRecord
    has_many :puntajes
end
#Para mostrar juntos en los views estos campos.
def datos
    "#{apellido} #{nombres}"
end