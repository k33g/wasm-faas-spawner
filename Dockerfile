FROM k33g/simplism:0.0.7

COPY faas-spawner.wasm .

ENV ADMIN_DISCOVERY_TOKEN=${ADMIN_DISCOVERY_TOKEN}
ENV ADMIN_SPAWN_TOKEN=${ADMIN_SPAWN_TOKEN}
EXPOSE 8080
CMD [ "/simplism",                  \
      "listen",                     \
      "faas-spawner.wasm",          \
      "handle",                     \
      "--http-port",                \
      "8080",                       \
      "--log-level",                \
      "info",                       \
      "--service-discovery",        \
      "true",                       \
      "--information",              \
      "👋 I'm the spawner service", \
      "--spawn-mode",               \
      "true"                        \
    ]
