import { config } from "../config/env";

export default function DashboardPage() {
  return (
    <div>
      <h1 className="page-title">Operator overview</h1>
      <p className="page-subtitle">
        Manage charging stations and monitor live sessions across Nigeria.
      </p>

      <div className="card-grid">
        <div className="card">
          <div className="card__label">Active stations</div>
          <div className="card__value">—</div>
        </div>
        <div className="card">
          <div className="card__label">Sessions today</div>
          <div className="card__value">—</div>
        </div>
        <div className="card">
          <div className="card__label">Revenue (NGN)</div>
          <div className="card__value">—</div>
        </div>
      </div>

      <p style={{ marginTop: "2rem", fontSize: "0.875rem", color: "var(--color-muted)" }}>
        API: {config.apiBaseUrl}
      </p>
    </div>
  );
}
