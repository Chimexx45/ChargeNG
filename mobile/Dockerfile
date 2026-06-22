# Flutter mobile app — see pubspec.yaml for dependencies
# Run: flutter pub get && flutter run

FROM ghcr.io/cirruslabs/flutter:stable AS build

WORKDIR /app
COPY pubspec.yaml pubspec.lock* ./
RUN flutter pub get

COPY . .
RUN flutter build apk --release

# Output-only stage (for CI); use flutter run locally for development
FROM alpine:3.20
COPY --from=build /app/build/app/outputs/flutter-apk/app-release.apk /app.apk
