FROM python:3.12-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt jupyterlab==4.4.* nbconvert

# El contexto de build es esta misma carpeta (src/)
COPY . .

# Por defecto abre JupyterLab en http://localhost:8888 (local).
# Para ejecutar todo sin interfaz, ver README.
EXPOSE 8888
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--no-browser", "--allow-root", "--ServerApp.token=", "--ServerApp.password="]
