## **Usage**
1. **Run the script from any location:**
```bash
generate_backup.sh
```
2. **Backup result:**
- A compressed file will be generated with the name:
```
backup_kali_YYYY-MM-DD.tar.gz
```
- The file will be located at:
```
/mnt/hgfs/CompartidoVM/
```
3. **Verify the contents of the compressed file:**
```bash
tar -tvf /mnt/hgfs/CompartidoVM/backup_kali_YYYY-MM-DD.tar.gz
```
---
## **Requirements**
1. **Configured virtual machine environment:**
- A shared folder mounted at `/mnt/hgfs/CompartidoVM`.
2. **Execution permissions for the script:**
```bash
chmod +x generate_backup.sh
```
3. **Dependencies installed:**
- `dpkg` for generating the list of installed packages.
- `tar` for creating the compressed file.
---
## **Recent Changes**
### [Date of Update]
- Added full Zsh configuration backup (`.zshrc`) as `tmp/zshrc_backup.txt`.
- Improved script usability:
- Script can now be executed from any location.
- Automatic cleanup of temporary files.
---
## **Contributions**
1. Fork the repository and submit pull requests for any improvements.
2. Document any changes in this README.md file.
---
## **License**
This project is distributed under the MIT License. See the `LICENSE` file for details.
