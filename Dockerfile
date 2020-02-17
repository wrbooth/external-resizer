FROM gcr.io/distroless/static:latest
LABEL maintainers="Kubernetes Authors"
LABEL description="CSI External Resizer"

ARG ARCH

COPY ./bin/csi-resizer-${ARCH} csi-resizer
ENTRYPOINT ["/csi-resizer"]
