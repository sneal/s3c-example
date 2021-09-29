FROM gcr.io/projectsigstore/cosign:v1.2.1 as cs
FROM docker.io/library/golang:1.17.1

COPY --from=cs /bin/cosign /usr/local/bin

RUN curl -sSfL https://raw.githubusercontent.com/anchore/syft/main/install.sh | sh -s -- -b /usr/local/bin v0.24.1 && \
    curl -sSfL https://raw.githubusercontent.com/anchore/grype/main/install.sh | sh -s -- -b /usr/local/bin v0.20.0 && \
    cosign version && syft version && grype version
