# Instrucciones Ejecución Archivo Ejercicio.asm

1. Clonar el siguiente repositorio: https://github.com/mmongeo/academia-collaboration.

2. Acceder a la carpeta academia-collaboration y luego a la carpeta simics-project.

3. Asegurarse que carpeta simics-project esté configurado como un proyecto de Simics, entrando a la carpeta de instalación de Simics y ejecutando el binario project-setup desde la carpeta simics-project. Ejemplo: `../instalation-directory/simics-6.X.X/bin/project-setup --ignore-existing-files`.

4. Pegar el archivo ejercicio.asm dentro de la carpeta simics-project.

5. Ejecute el comando: `nasm ejercicio.asm -o ejercicio.bin` dentro de la carpeta simics-project.

6. Ejecute el comando: `./simics targets/qsp-x86/lfsr.simics` dentro de la carpeta simics-project.

7. Ejecute el comando dentro de la terminal de Simics: `load-file filename = ejercicio.bin offset = 0x0`.

8. En la consola de Simics Control Menu, selecione Debug y luego CPU Registers, para poder ver los registros con los cambios.

9. Para ver los cambios gradualmente, utilice el comando `stepi -q` en la terminal de Simics.

10. Los números pseudo-aleatorios correspondientes se irán reflejando gradualmente en el registro eax, aunque también se guardan consecutivamente en memoria, en incrementos de +4 bytes, desde el valor semilla al valor 100, en el espacio de memoria llamado numbers, apuntado por el registro edi.
