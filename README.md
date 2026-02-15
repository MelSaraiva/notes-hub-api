# notes-hub-api

Backend REST API for **Notes Hub** — JWT authentication + user-scoped notes CRUD with PostgreSQL.

## 📌 Overview
**notes-hub-api** is the backend service for Notes Hub. It handles:
- User registration and login (JWT)
- Secure note management (create, list, view, edit, delete)
- Per-user data isolation (each user can access only their own notes)
- Database versioning with migrations

## ✅ Features (MVP)
- Account registration
- Login with **email or username + password**
- JWT-based authentication
- Notes CRUD (Create, Read, Update, Delete)
- Ownership enforcement (user can only manage their own notes)

## 🧰 Tech Stack
- Java 21
- Spring Boot
- Spring Security (JWT)
- Spring Data JPA
- PostgreSQL
- Flyway (migrations)
- Springdoc OpenAPI (Swagger UI)
- Actuator
- Maven

## 📂 Project Structure (high level)
- `common/` — shared components (error handling, shared models, utilities)
- `config/` — application-wide configuration
- `security/` — JWT and security configuration
- `modules/` — feature modules (auth, note, user)

## 🔐 API Documentation (Swagger)
Swagger UI and OpenAPI docs are available when the application is running.
(If secured, Swagger endpoints must be allowed in security rules.)

## 🗄️ Database & Migrations
This project uses **Flyway** to manage schema migrations.
Migrations live under: `src/main/resources/db/migration`.

## 🧪 Tests
- Unit and integration tests using Spring Boot test support
- Security tests using Spring Security Test

## ⚙️ Configuration
Environment-specific values should be configured via `application.properties` and/or local overrides.
Recommended: create a local config file (e.g. `application-local.properties`) and keep it out of Git.

Typical configs you will need:
- Database connection (URL, username, password)
- JWT settings (secret, expiration)

## 🚀 How to Run (local)
Prerequisites:
- Java 21
- Maven
- PostgreSQL

Steps (high level):
1. Start PostgreSQL locally
2. Configure application properties (DB + JWT)
3. Run the application

## 🧾 Repository Notes
This repository is part of the Notes Hub project.
Front-end repo: **notes-hub-web**
