# django-boilerplate

Este boilerplate para Django está construido utilizando el framework Django 4.x siguiendo algunas de las prácticas recomendadas en Two Scoops of Django 3.x. La documentación oficial de Django en conjunto con las buenas prácticas documentadas en el libro son recomendadas antes de modificar este proyecto.

## Integración MiUchile

Este template incluye el proyecto [django_sso](https://github.com/DCC-FCFM-UCHILE/django_sso) que corresponde a una integración que
permite utilizar las credenciales de MiUchile con este sistema.

Para poder utilizar esta funcionalidad en el ambiente de desarrollo (local o gitpod) debe enviar un correo a desarrollo@dcc.uchile.cl 
indicando los RUTs de los integrantes del equipo.

## Consideraciones

### Al clonar el repositorio

Al clonar un proyecto basado en este template recuerde hacerlo usando la opción `--recursive` para que se descargue junto con el submodulo django_sso.

```console
git clone --recursive git@github.com:DCC-FCFM-UCHILE/django-boilerplate.git
```

### Automatización

Este proyecto considera la automatización de algunas tareas al usar GitPod como ambiente de desarrollo, por ejemplo:

- Actualización automática de los requirements.
- Actualización automática de los submodules.
- Formateo automático usando PEP8 usando `black` y linter del código usando `flake8`.
- Modificación de los ALLOWED_HOSTS y CSRF_TRUSTED_ORIGINS en `core/settings/gitpod.py` (este archivo no debe ser commiteado!).
- Creación de un Django Admin con credenciales: desarrollo/desarroll0.

Puede revisar cómo funcionan estas automatizaciones y otros comandos útiles en:

- gitpod.yml
- gitpod.sh
- app/Makefile
