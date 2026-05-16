# ---- Build Stage ----
FROM golang:1.23-alpine AS builder

WORKDIR /app

# Only copy go mod first (better caching)
COPY go.mod ./
RUN go mod download

# Copy rest of code
COPY . .

# Build binary
RUN CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -o app .

# ---- Final Stage ----
FROM alpine:3.19

WORKDIR /app

# Install only required packages
RUN apk add --no-cache ca-certificates

# Copy binary only (no source code)
COPY --from=builder /app/app .

# Run binary
CMD ["./app"]

RUN adduser -D appuser

USER appuser
