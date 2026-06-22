# VoltPassNG

EV charging payment platform for Nigeria — similar to Electroverse + Paystack.

## Project structure

```
voltpassng/
├── backend/          # FastAPI REST API
├── mobile/           # Flutter driver app
├── dashboard/        # React operator dashboard
├── docker-compose.yml
└── .env.example      # Copy to .env and configure
```

## Quick start (development)

### 1. Environment setup

```bash
cp .env.example .env
# Edit .env with your Paystack keys and secrets
```

### 2. Start with Docker

```bash
docker compose up --build
```

Services:

| Service    | URL                        |
|------------|----------------------------|
| API        | http://localhost:8000      |
| API docs   | http://localhost:8000/docs |
| Dashboard  | http://localhost:5173      |
| PostgreSQL | localhost:5432             |
| Redis      | localhost:6379             |

### 3. Run locally (without Docker)

**Backend**

```bash
cd backend
python -m venv .venv
source .venv/bin/activate   # Windows: .venv\Scripts\activate
pip install -r requirements.txt
uvicorn app.main:app --reload
```

**Dashboard**

```bash
cd dashboard
npm install
npm run dev
```

**Mobile**

```bash
cd mobile
flutter pub get
flutter run
```

## Tech stack

- **Backend:** FastAPI, SQLAlchemy, PostgreSQL, Redis
- **Mobile:** Flutter (Dart)
- **Dashboard:** React, TypeScript, Vite
- **Payments:** Paystack
- **Infrastructure:** Docker Compose

## License

Proprietary — VoltPassNG
