A light-weight docker image for running Yarn (https://yarnpkg.com/).

## Usage

``` bash
docker run  \
  --user $(id -u):$(id -g)                       `# Use the current user inside container`  \
  --volume `pwd`:`pwd`                           `# Mirror current directory inside container`  \
  --volume yarn-cache:/home/shared/.cache/yarn/  `# Add a persistent volume for the yarn cache`  \
  --workdir `pwd`                                `# Set current directory to the image's work directory`  \
  --tty                                          `# Attach a pseudo-terminal`  \
  --interactive                                  `# Add interactive capabilities to terminal prompt`  \
  yarn                                           `# Run the "yarn" docker image`
```

