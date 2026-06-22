"""Application configuration loaded from environment variables."""

from functools import lru_cache

from pydantic_settings import BaseSettings, SettingsConfigDict


class Settings(BaseSettings):
    model_config = SettingsConfigDict(
        env_file=".env",
        env_file_encoding="utf-8",
        case_sensitive=False,
    )

    app_name: str = "VoltPassNG"
    app_env: str = "development"
    debug: bool = True
    secret_key: str = "change-me"
    api_v1_prefix: str = "/api/v1"
    allowed_origins: str = "http://localhost:5173"

    database_url: str = "postgresql+asyncpg://voltpass:change-me@localhost:5432/voltpassng"
    redis_url: str = "redis://localhost:6379/0"

    paystack_secret_key: str = ""
    paystack_public_key: str = ""
    paystack_webhook_secret: str = ""

    jwt_secret_key: str = "change-me-jwt"
    jwt_algorithm: str = "HS256"
    access_token_expire_minutes: int = 30

    @property
    def cors_origins(self) -> list[str]:
        return [origin.strip() for origin in self.allowed_origins.split(",") if origin.strip()]


@lru_cache
def get_settings() -> Settings:
    return Settings()
