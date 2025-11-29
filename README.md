# Hello DevOps

Egyszerű Flask alapú webalkalmazás, amely a `http://localhost:8080` címen egy szöveges HTTP választ ad.

## Követelmények

- Python 3.x
- pip csomagkezelő

(Opcionális)
- virtuális környezet használata (`python -m venv venv`)

## Build

A projekt „buildje” a szükséges Python csomagok telepítését jelenti.

1. (Opcionális) virtuális környezet létrehozása és aktiválása:

   **Windows:**
   ```bash
   python -m venv venv
   venv\Scripts\activate
   

## Trunk-based Development

A trunk-based development egy olyan fejlesztési módszertan, ahol a fejlesztők a fő ágon (main vagy trunk)
dolgoznak, és minden módosítást kis, rövid életű feature branch-ekben készítenek el.

A folyamat menete:
1. A `main` ágon mindig működő, stabil kód található.
2. Új fejlesztést mindig egy új branch-en végzünk (pl. `feature/update-readme`).
3. A fejlesztés gyors és kisméretű commitokban történik.
4. A branch-et minél hamarabb vissza kell mergelni a `main` ágba.
5. A merge előtt kötelező a tesztelés (CI), így a `main` mindig stabil marad.

### Előnyök:
- Gyors integráció, kevés merge conflict
- Folyamatosan működő fő ág
- Könnyű automatizálni (CI/CD)
- Jobb csapatmunka, nincs “óriás-branch”

Ez egy példa módosítás egy feature branch-en.