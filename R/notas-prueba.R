# paquetes que vamos a requerir
install.packages(c("gitcreds", "gert", "gh"))


# Para iniciar conexión con GitHub
usethis::create_github_token() # redirige a github donde eligiras nombre especifico del token
# copia el token para después ingresarlo con gitcreds_set()
gitcreds::gitcreds_set() # aquí colocas el token (NO tu contraseña de github!!!)

# Configurar usuario de gitHub
usethis::edit_git_config() # que abre el archivo .gitconfig
# colocaremos nombre y correo de cuenta de github. SOLO borrar los # y respetar los demas espacios
# [user]
#   name = N O M B R E
#   email = correodeGithub

# inicializar el repositorio de Git
usethis::use_git() #

# conectar tu repositorio local de Git con los servidores de GitHub
usethis::use_github()

gh::gh_whoami() # para checar cómo quedó la configuración


# escribimos un nuevo archivo, volvemos a usar here::here para especificar path
writeLines("hola", here::here("R","prueba-here.R"))
# otra manera es usar use_r
usethis::use_r("archivo-prueba-github.R") # añade archivo al directorio R del proyecto actual

# Por ejemplo podríamos probar añadir algo nuevo
gert::git_add("R/archivo-prueba-github.R")

# añadimos commit de lo que se hizo
gert::git_commit("se subio archivo prueba")

# nos da info de los commits
gert::git_log()

# sube tus cambios del repo local a los de github
gert::git_push() # COMANDO IMPORTANTE

## Creen el RStudio project. Es MUY importante que el usuario debe sea igual que en github
usethis::create_project("jlcoyac_scRNAseq.github.io")

## Configura Git y GitHub

# Con use_git() preguntará si desean hacer un commit, y después pedirá reiniciar Rstudio para que obtengan un nuevo botón llamado "git()"
usethis::use_git()

usethis::use_github()
