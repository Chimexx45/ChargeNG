"""VoltPassNG API v1 route aggregator."""

from fastapi import APIRouter

router = APIRouter()

# TODO: include route modules as they are built
# router.include_router(auth.router, prefix="/auth", tags=["auth"])
# router.include_router(stations.router, prefix="/stations", tags=["stations"])
# router.include_router(sessions.router, prefix="/sessions", tags=["sessions"])
# router.include_router(payments.router, prefix="/payments", tags=["payments"])


@router.get("/health", tags=["health"])
async def health_check() -> dict[str, str]:
    return {"status": "ok", "service": "voltpassng-api"}
