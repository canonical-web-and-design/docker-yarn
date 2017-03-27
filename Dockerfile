FROM node:7-slim

# Create a shared home directory
# This helps anonymous users have a home
ENV HOME=/home/shared
RUN mkdir -p $HOME
RUN chmod -R 777 $HOME
RUN mkdir -p /home/shared/.cache/yarn/
RUN chmod -R 777 /home/shared/.cache/yarn/

# By default, run yarn
ENTRYPOINT ["yarn"]

