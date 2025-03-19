# 📄 III. Proyecto TuryBusETL

## 🚀 Pasos de Configuración

1. En Visual Studio, abra la solución `TuryBusETL.sln`.
![alt text](assets/etl-1.png)
2. Desde el **Explorador de Soluciones**, haga clic derecho sobre el proyecto **TuryBusETL** y seleccione `Build`.

### Configuración de las conexiones Source y Target

1. Desde el **Explorador de Soluciones**, en la sección `Connection Manager`, haga doble clic sobre `Source OLTP.conmgr` y edite los valores de conexión a la base de datos local.
![alt text](assets/etl-2.png)
2. Realice el mismo proceso con `Target DW.conmgr`.
![alt text](assets/etl-3.png)

### Ejecución de los paquetes SSIS

1. Abra los siguientes paquetes desde `SSIS Packages` en el **Explorador de Soluciones**:
   - `Bus.dtsx`
   - `Passenger.dtsx`
   - `Route.dtsx`
   - `Services.dtsx`
   - `Stop.dtsx`
2. Ejecute cada paquete individualmente haciendo clic en `Start` en la barra superior de **Visual Studio**.
![alt text](assets/etl-4.png)
![alt text](assets/etl-5.png)
![alt text](assets/etl-6.png)
![alt text](assets/etl-7.png)
![alt text](assets/etl-8.png)

### Verificación en SQL Server Management Studio (SSMS)

- Asegúrese de que las **tablas de dimensiones** (Dim tables) fueron pobladas correctamente.
- Verifique que la **tabla de hechos** (Fact table) fue poblada correctamente.

![alt text](assets/etl-9.png)

[**◀ Volver al README**](README.md)