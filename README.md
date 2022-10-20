# Como realizar primer despliegue del docker 

``` bash
docker build . -t volatility3-l0h 
```


Se ejecuta una vez para crear la imagen, hacerlo dentro de la propia carpeta


_________________________________________________________________________________

# Como ejecutar el contenedor: 


* LINUX: 
    ``` bash
    docker run -it --rm -v $(pwd)/evidencias:/data_imported -v $(pwd)/plugins:/volatility/volatility/plugins volatility3-l0h 
    ```

* WINDOWS: 
    ``` powershell
    docker run -it --rm -v "$((pwd).path + '\evidencias'):/data_imported" -v "$((pwd).path + '\plugins'):/volatility/volatility3/plugins" volatility3-l0h
    ```

_________________________________________________________________________________

# Como usar el contenedor:

Una vez iniciado el contenedor en el encontrareis un sistema linux. Este mismo incluye los plugins de la carpeta, asi como los archivos tramitados.

Dentro del contenedor el comando es "volatility"
