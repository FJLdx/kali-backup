## Script de Backups

Este repositorio incluye un script en Bash para generar respaldos de configuraciones importantes en un sistema Kali Linux.

### Características del script:
- Genera un archivo comprimido con:
  - Configuración de Neovim, Bspwm, Zsh y Bash.
  - Lista de paquetes instalados.
  - Alias personalizados.
- Copia automáticamente el respaldo a una carpeta compartida.
- Elimina los archivos temporales tras completar el proceso.

### Uso:
1. Haz el script ejecutable:
   ```bash
   chmod +x generate_backup.sh
