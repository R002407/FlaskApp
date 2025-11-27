# Image Python officielle
FROM python:3.13-slim

# Définir le dossier de travail dans l'image
WORKDIR /app

# Copier les dépendances
COPY requirements.txt .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier le code
COPY . .

# Exposer le port utilisé par Flask
EXPOSE 5000

# Commande de lancement
CMD ["python", "app.py"]
