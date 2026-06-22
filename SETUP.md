# After cloning, run these once:

# 1. Copy environment files
cp .env.example .env
cp backend/.env.example backend/.env
cp dashboard/.env.example dashboard/.env
cp mobile/.env.example mobile/.env

# 2. Generate Flutter platform folders (android/, ios/, etc.)
cd mobile && flutter create . --org com.voltpassng --project-name voltpassng_mobile

# 3. Install dashboard dependencies
cd dashboard && npm install

# 4. Start everything with Docker
docker compose up --build
