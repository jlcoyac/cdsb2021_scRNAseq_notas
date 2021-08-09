## Cargar paquetes que usaremos en este código
library("sessioninfo")
library("here")
library("ggplot2")

## Hello world
print("Soy Leo")

## Crear directorio para las figuras
dir.create(here::here("figuras"), showWarnings = FALSE)

## Hacer una imagen de ejemplo
pdf(here::here("figuras", "mtcars_gear_vs_mpg.pdf"),
    useDingbats = FALSE
)
ggplot(mtcars, aes(group = gear, y = mpg)) +
  geom_boxplot()
dev.off()

## Para reproducir mi código
options(width = 120)
sessioninfo::session_info()


## Para poder conectar tu compu con GitHub
usethis::create_github_token() ## Abrirá una página web, escoje un nombre único
## y luego da click en el botón verde al final. Después copia el token
## (son 40 caracteres)

gitcreds::gitcreds_set() ## Ojo, copia el token, no tu password de git!
## Si no, terminaras en la situación descrita en
## https://github.com/r-lib/usethis/issues/1347


## Configura tu usuario de GitHub
usethis::edit_git_config()
# [user]
#   name = Leonardo Collado Torres
#   email = lcolladotor@gmail.com

## Para inicializar el repositorio de Git
usethis::use_git()

## Para conectar tu repositorio local de Git con los servidores de GitHub
usethis::use_github()


# se descargó previamente, así que solo se carga
library("here") # busca la raiz del proyecto en el que se encuentre

getwd() # regresa la path en donde nos encontramos
# nos movemos al subdirectorio R
setwd(here::here("R")) # podemos cambiar de directorio, aun así `here está en la raíz


# como ejemplo: vamos a guardar datos en archivo y cargarlos
a <- 1
c <- 23
save(a, c, file = here::here("datos-prueba.RData"))
# rm(a,c)
load(here::here("datos-prueba.RData"))

# creamos un directorio
dir.create(here::here("subdirectorio"), showWarnings = FALSE)
# podemos crear un archivo, indicando el subdirectorio, (en este caso el primer argumento)
file.create(here::here("subdirectorio", "nombrearchivo"))
# abrimos el nuevo archivo creado
file.show(here::here("subdirectorio", "nombrearchivo")) # podemos editarlo!!

# por ejemplo si quisieramos ver nuestros archivos del directorio
list.files(here::here(), recursive = TRUE)

usethis::use_r("notas-prueba.R") # no importando en qué path estemos
