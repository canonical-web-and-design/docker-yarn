FROM node:7-slim

# Create a shared home directory
# This helps anonymous users have a home
ENV HOME=/home/shared
RUN mkdir -p $HOME
RUN chmod -R 777 $HOME

# By default, run yarn
ENTRYPOINT ["yarn"]

