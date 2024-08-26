FROM jitsi/web:unstable

# Install dependencies
WORKDIR /usr/share/jitsi-meet
COPY package*.json ./
RUN npm install

# Copy the rest of your application code
COPY . .

# Build the application
RUN npm run build

# Expose necessary ports
EXPOSE 80
EXPOSE 443

CMD ["npm", "start"]
