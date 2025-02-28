FROM metabase/metabase:latest

# Explicitly expose port 3000
EXPOSE 3000

# Set environment variable to listen on port 3000
ENV MB_JETTY_PORT=3000

# Memory optimization for limited environments
ENV JAVA_OPTS="-Xmx450m -Xms150m"

# Use the embedded H2 database for Metabase's application data
ENV MB_DB_TYPE=h2
ENV MB_DB_FILE=/var/lib/metabase/metabase.db
