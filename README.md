# Sistema de Hotel en .NET 7 Blazor

Este proyecto es un sistema de gestión de hotel desarrollado en .NET 7 utilizando Blazor Server y Blazor WebAssembly. El sistema permite gestionar reservas, habitaciones, clientes y otros aspectos relacionados con la administración de un hotel.

## Configuración del Proyecto

### Requisitos Previos

- [.NET 7 SDK](https://dotnet.microsoft.com/download/dotnet/7.0)
- [SQL Server](https://www.microsoft.com/es-es/sql-server/sql-server-downloads)

### Pasos para Configurar el Proyecto

1. Clonar este repositorio en tu máquina local.
2. Abrir la solución en Visual Studio 2022 o superior.
3. Configurar la cadena de conexión a la base de datos en `appsettings.json`.
4. Ejecutar el script SQL proporcionado (`sqlData.sql`) para crear la base de datos y las tablas necesarias.
5. Compilar y ejecutar la aplicación.

## Funcionalidades Principales

- **Gestión de Reservas:** Permite realizar y gestionar reservas de habitaciones.
- **Administración de Habitaciones:** Permite agregar, editar y eliminar habitaciones.
- **Gestión de Clientes:** Permite gestionar la información de los clientes.
- **Reportes:** Genera reportes sobre ocupación, ingresos, etc.

## Tecnologías Utilizadas

- **Blazor Server:** Para la parte del servidor de la aplicación web.
- **Blazor WebAssembly:** Para la parte del cliente de la aplicación web.
- **Entity Framework Core:** Para el acceso a la base de datos.
- **SQL Server:** Como base de datos para almacenar la información.

## Contribuciones

Si deseas contribuir a este proyecto, ¡no dudes en hacer un *pull request*!
