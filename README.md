# SAE gerico

1. **Clonez ce dépôt :**
```bash
git clone <url_du_repo>
```

2. **Téléchargez les fichiers pour les sous-modules :**
```bash
git submodule update --init --recursive
```

3. **Installez les dépendances :**
```bash
cd frontend
npm install
```
```bash
cd ../backend
npm install
```
4. **Dans le dossier backend, créez un fichier .env et ajoutez la ligne suivante :**
```bash
JWT_SECRET=cle_secrete
```
5. **Démarrez le projet avec Docker  :**
```bash
docker-compose up --build
```
6. **Accédez à l'application :**
Une fois le conteneur démarré, recherchez le lien du site dans la console, sous ce format :
Network et non localhost !!!
```bash
frontend-1  |   ➜  Network: http://xxx.xx.x.x:5173/
```
