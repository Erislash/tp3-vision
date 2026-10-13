# TP3 - Visión por Computadora: Reconstrucción 3D y Estimación de Pose

Todo el código está en `tp3.ipynb`

> La notebook usa rutas relativas a su propia carpeta (usa `Path.cwd()`), así que el directorio de trabajo debe ser esta carpeta

## Opción A: entorno virtual

Requiere Python 3.10 o superior. Desde esta carpeta:

```powershell
py -3.12 -m venv .venv
.\.venv\Scripts\Activate.ps1
pip install -r requirements.txt
```

En Linux/macOS:

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

### Ejecutar en VS Code

1. Abrir esta carpeta en VS Code (las extensiones Python y Jupyter tienen que estar instaladas).
2. Abrir `tp3.ipynb`
3. Select Kernel, Python Environments, `.venv`
4. Run All

Las figuras quedan en `figures/`.

## Opción B: Docker

Desde esta carpeta:

```bash
docker build -t tp3 .
docker run --rm -p 8888:8888 -v "${PWD}/figures:/app/figures" tp3
```

Abrimos http://localhost:8888, entrar a `tp3.ipynb` y ejecutar. Con el volumen montado, las figuras generadas aparecen en `figures/` del host.


## Nota sobre `cv::sfm::triangulatePoints`

El enunciado menciona el módulo `sfm` de opencv_contrib, que no viene en los paquetes de
pip. Se usó `cv2.triangulatePoints`, que resuelve el mismo problema (en principio)
