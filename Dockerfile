FROM node:14.15.0
RUN npm install -g grunt

# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
# COPY package*.json .
# COPY yarn.lock .
# COPY MigratorConfig.js .
# COPY core .

COPY . .
RUN yarn setup
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source

EXPOSE 2368
EXPOSE 4200
CMD ["grunt", "dev"]
