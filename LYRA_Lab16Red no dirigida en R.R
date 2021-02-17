###################
#                 #
# COPIAR TODO ESTO#
#                 #
###################
# Hecho con gusto por: Luz Yolanda Rivera Álvarez (UAEH)
# Laboratorio - Análisis de Redes en R - Indicadores básicos globales
library(EconGeo)
# CARGAR DATA
file.choose()
read.csv("/Users/luz/Documents/GitHub/ON/lesmis-el.csv")
EL= read.csv("/Users/luz/Documents/GitHub/ON/lesmis-el.csv")
#ver el encabezado
head(EL)

#TRASFORMAR A MATRIZ

MM <- get.matrix(EL)

#graficamos 
library(igraph)

g<- graph_from_data_frame( d= EL, directed = F)
plot(g)

#crear un gráfico interactivo
EL$Weight = NULL

#VUEVO A VER MI LISTA PARA VERIFICAR QUE SE ELIMINARON LOS PESOS

head(EL)

#llamar a paqueteria para tener mejores visualizaciones
library(networkD3)
simpleNetwork(EL)


#Ver matriz simétrica (red no dirigida- red bidireccional)