FROM node:18-alpine

ENV NODE_ENV=production

RUN node --version
RUN npm --version
RUN yarn set version stable

COPY . /src
WORKDIR /src

RUN yarn install


# command to run on container start, user can append parameters to it
# e.g docker run <image> <parameter>
# e.g ENTRYPOINT ["yarn","start"]
ENTRYPOINT yarn start

# command to run when container starts, user can override it
# e.g docker run <image> <command> <parameter>
# e.g CMD ["yarn", "start"]
# CMD ["yarn","start"]