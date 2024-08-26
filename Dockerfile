FROM jitsi/web:unstable

# Copy custom code into the Jitsi web directory
COPY . /usr/share/jitsi-meet

# Expose necessary ports
EXPOSE 80
EXPOSE 443

