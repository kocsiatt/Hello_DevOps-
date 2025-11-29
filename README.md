# Hello DevOps

Egyszerű Flask alapú webalkalmazás, amely a `http://localhost:8080` címen egy szöveges HTTP választ ad.

## Követelmények

- Python 3.x
- pip csomagkezelő  
*(Opcionális)*  
- virtuális környezet használata (`python -m venv venv`)

---

## Build

A projekt „buildje” a szükséges Python csomagok telepítését jelenti.

### 1. (Opcionális) virtuális környezet létrehozása és aktiválása

**Windows:**

```bash
python -m venv venv
venv\Scripts\activate
```

### 2. Függőségek telepítése

```bash
pip install -r requirements.txt
```

### 3. Alkalmazás indítása

```bash
python app.py
```

Az alkalmazás elérhető a böngészőben:

```
http://localhost:8080
```

---

## Trunk-based Development

A trunk-based development olyan fejlesztési módszertan, ahol a fejlesztők a fő ágon (main) dolgoznak, és minden új fejlesztést rövid életű feature branch-ekben hoznak létre.

### Folyamat menete:

1. A `main` ág mindig stabil, működő állapotban van.  
2. Új fejlesztéshez egy rövid életű branch készül (pl. `feature/readme-update`).  
3. A fejlesztés kis, áttekinthető commitokból áll.  
4. A branch minél hamarabb visszaolvad (merge) a `main` ágba.  
5. A merge jellemzően Pull Requesten keresztül történik.

### Előnyök:

- Kevés merge conflict  
- Folyamatosan stabil fő ág  
- Könnyen automatizálható (CI/CD)  
- Jobb csapatmunka, nincs hosszú életű óriás-branch  

---

## Docker használata

Az alkalmazás Docker konténerben is futtatható.

### Image buildelése

```bash
docker build -t hello-devops:v1 .
```

### Konténer futtatása

```bash
docker run -p 8080:8080 hello-devops:v1
```

### A böngészőben elérhető:

```
http://localhost:8080
```

---

## Projekt felépítése

```
Hello_DevOps-/
 ├── app.py
 ├── requirements.txt
 ├── README.md
 ├── Dockerfile
 └── .gitignore
```
## CI - Docker image build és push (3.2 opció)

A repóhoz GitHub Actions alapú CI pipeline tartozik,
amely minden `main` branchre történő push esetén:

1. leklónozza a repót,
2. felépíti a Docker image-et a `Dockerfile` alapján,
3. feltölti az image-et a GitHub Container Registry-be:

   `ghcr.io/kocsiatt/hello-devops:latest`

A workflow fájl helye: `.github/workflows/ci-docker.yml`.
---

## CI Pipeline

A projekt GitHub Actions pipeline-t használ, amely minden push esetén:
- buildeli a Docker image-et,
- majd feltölti a GitHub Container Registry-be.

A workflow fájl: `.github/workflows/ci-docker.yml`.

## Szerző

kihd0w Kocsis Attila – 2025
