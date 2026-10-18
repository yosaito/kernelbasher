FROM --platform=linux/386 i386/debian:bookworm-slim@sha256:227236678b453cb31ec4d1386dce87c9f76b9682288f365b0139f0d47522d3f3
RUN apt-get update && apt-get install -y --no-install-recommends wine wine32 python3 python3-flask gunicorn \
    && rm -rf /var/lib/apt/lists/* \
    && useradd --uid 10001 --create-home --shell /usr/sbin/nologin kernelbasher
ENV WINEDEBUG=-all WINEARCH=win32 WINEDLLOVERRIDES="mscoree,mshtml=" WINEPREFIX=/state/wine HOME=/state PYTHONDONTWRITEBYTECODE=1 PYTHONUNBUFFERED=1
WORKDIR /app
COPY engine/ /app/engine/
COPY server.py entrypoint.sh /app/
RUN chmod 755 /app/entrypoint.sh
USER 10001:10001
ENTRYPOINT ["/app/entrypoint.sh"]
