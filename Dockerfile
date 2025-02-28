FROM metabase/metabase:latest

# Create directory for data
RUN mkdir -p /data

# Explicitly expose port 10000
EXPOSE 10000

# Set environment variables
ENV MB_JETTY_PORT=10000
ENV MB_DB_TYPE=h2
ENV MB_DB_FILE=/data/metabase.db

# Use percentage-based memory limits instead of absolute values
ENV JAVA_TOOL_OPTIONS="-XX:MaxRAMPercentage=75.0 -XX:MinRAMPercentage=50.0"

# Set the working directory
WORKDIR /app

# Set proper permissions for the data directory
RUN chmod -R 777 /data
