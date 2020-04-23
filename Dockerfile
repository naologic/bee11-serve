FROM node:12.15.0
LABEL maintainer="Naologic <contact@naologic.com>"

# Set args
ARG APP_DIR="/app"
ARG USER_ID=1000

# Set environment variables
ENV npm_run_command=start:dev

# Make the dir
RUN mkdir -p $APP_DIR
RUN mkdir -p /etc/pm2-web

#reduce logging, disable nest-cli analytics for ci environment
ENV NPM_CONFIG_LOGLEVEL=warn NG_CLI_ANALYTICS=false

# nest cli
ENV HOME "$USER_HOME_DIR"

WORKDIR $APP_DIR

# Install libraries
#RUN npm install -g pm2
RUN npm install -g nest

# Start from app
CMD ["sh", "-c", "npm", "run", "${npm_run_command}"]
