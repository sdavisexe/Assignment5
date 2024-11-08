FROM alpine AS builder
COPY data.txt /tmp/
FROM fedora:latest AS final
COPY --from=builder /tmp/data.txt /data.txt