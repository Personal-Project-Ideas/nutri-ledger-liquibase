FROM liquibase/liquibase

# Baixa o driver JDBC do PostgreSQL
RUN wget -O /liquibase/lib/postgresql.jar https://jdbc.postgresql.org/download/postgresql-42.7.2.jar

COPY changelog.yaml changelog.yaml
COPY migrations/ migrations/

CMD liquibase update \
  --changeLogFile=changelog.yaml \
  --url="jdbc:postgresql://${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}?sslmode=disable" \
  --username="${POSTGRES_USER}" \
  --password="${POSTGRES_PASSWORD}" \
  --logLevel=info