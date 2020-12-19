## Pasos a seguir para crear un repositorio compatible con el sistema all-as-code(https://github.com/nistalhelmuth/all-as-code):
1. Identificar el framework de programación para el proyecto (Django, Angular, Flutter, Wordpress, React, etc)
2. Localizar: imagen de Docker compatible con el framework identificado. Este puede ser buscado en: https://hub.docker.com/
3. Verificar que todos los archivos de configuración de dependencias sean parte del repositorio que contendrá el desarrollo, como referencia:
  * Django utiliza requirements.txt para listar las dependencias de python necesarias para el proyecto.
  * Node utiliza package.json para listar las dependencias de node necesarias para el proyecto.
4. Crear Dockerfile para compilar el proyecto con las dependencias y configuraciones necesarias para el proyecto específico. Para los ejemplos mencionados anteriormente se utilizó de guía la documentación oficial de Docker:
  * Django: https://docs.docker.com/compose/django/
  * WordPress: https://docs.docker.com/compose/wordpress/
5. Realizar pruebas locales para validar que el Dockerfile este funcionando correctamente antes de utilizar el proyecto all-as-code
6. Definir cuáles pasos son necesarios para una pipeline de desarrollo según las características del proyecto (Compilación, Pruebas Unitarias, Pruebas de Integración, Despliegue).
7. Crear un Jenkinsfile representativo a los pasos ideados anteriormente, puede tomar como referencia los repositorios anteriores o utilizar la documentación Oficial de jenkins https://www.jenkins.io/doc/book/pipeline/jenkinsfile/
8. Agregar el Archivo de Dockerfile y Jenkinsfile al repositorio.
9. Ejecutar el proyecto all-as-code y especificar el nombre del repositorio en github (usuario/repositorio).
