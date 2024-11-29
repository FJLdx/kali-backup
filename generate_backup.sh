#!/bin/bash

# Fecha actual para el nombre del archivo
DATE=$(date +"%Y-%m-%d")

# Ruta de la carpeta compartida
SHARED_FOLDER="/mnt/hgfs/CompartidoVM"

# Nombre del archivo comprimido
BACKUP_FILE="backup_kali_${DATE}.tar.gz"

# Archivos y directorios a respaldar
BACKUP_ITEMS=(
  "/home/$USER/.config/nvim/init.lua"  # Configuración de Neovim
  "/home/$USER/.zshrc"                # Configuración de Zsh
  "/home/$USER/.config/bspwm"         # Configuración de Bspwm
  "/home/$USER/.config/sxhkd"         # Configuración de atajos de teclado (Bspwm)
  "/home/$USER/.bashrc"               # Configuración de Bash (por si aún se usa)
)

# Generar lista de paquetes instalados
echo "Generando lista de paquetes instalados..."
dpkg --get-selections > /tmp/installed_packages.txt
BACKUP_ITEMS+=("/tmp/installed_packages.txt")

# Generar lista de alias personalizados
echo "Generando lista de alias personalizados..."
alias > /tmp/aliases_backup.txt
BACKUP_ITEMS+=("/tmp/aliases_backup.txt")

# Crear el archivo comprimido
echo "Creando archivo comprimido..."
tar -czvf "$BACKUP_FILE" "${BACKUP_ITEMS[@]}"

# Mover el archivo a la carpeta compartida
if [ -d "$SHARED_FOLDER" ]; then
  echo "Copiando el archivo a la carpeta compartida..."
  mv "$BACKUP_FILE" "$SHARED_FOLDER/"
  echo "Archivo copiado exitosamente a $SHARED_FOLDER."
else
  echo "Error: La carpeta compartida no está montada en $SHARED_FOLDER."
fi

# Limpieza de archivos temporales
echo "Limpiando archivos temporales..."
rm /tmp/installed_packages.txt
rm /tmp/aliases_backup.txt

# Confirmación final
echo "Proceso completado."
