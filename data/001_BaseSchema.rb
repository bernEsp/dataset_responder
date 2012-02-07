class BaseSchema < Sequel::Migration
  def up
   create_table! :reports do 
   primary_key :No_Arbol
   Integer :OID
   Float :Lat
   Float :Long
   String :UnidadN
   String :UnidadC
   String  :Delegacion
   String :Colonia
   String :Calle
   String :Calle_Calle
   String :Especie	
   String :Nom_sp
   String :Nom_comun	
   Float :Altura
   Float :DAP	
   Float :DB
   Float :DC_X	
   Float :DC_Y	
   Float :EFT	
   Text :EFT_t
   Float :EST
   Text :EST_t
   Float :EFC
   Text :EFC_t
   Float :ESC
   Text :ESC_t	
   Float :Muerdago
   Text :Muerdago_t	
   Float :Etapa	
   Text :Etapa_t	
   Float :Condicion	
   Text :Condicion_t	
   Float :StatusAR	
   Float :D_predio	
   Text :D_predio_t	
   Float :D_banqueta	
   Text :D_banquetas_t
   Float :D_postes	
   Text :D_postes_t	
   Float :D_cables	
   Text :D_cables_t	
   Float :D_alumbrado	
   Text :D_alumbrado_t	
   Float :D_otros	
   Text :D_otros_t	
   Float  :Trat_1	
   Text :Tratamiento1	
   Float :Trat_2	
   Text :Tratamiento2	
   Float :Trat_3	
   Text :Tratamiento3
   Text :Observaciones
   String :Fotografia	
   Text :Validado	
   Float :Poligono	
   Text :Listo
   end
  end

  def dow
   drop_table :datasetn
  end
end
