FROM golang:1.12-alpine

WORKDIR /go/src/github.com/bevancoleman/traefik-auth-cloudflare
COPY . .
# Static build required so that we can safely copy the binary over.
RUN GOOS=linux GOARCH=arm GOARM=5 go install github.com/bevancoleman/traefik-auth-cloudflare

ENTRYPOINT ["traefik-auth-cloudflare"]
