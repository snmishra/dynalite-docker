ARG NODEVERSION
FROM node:$NODEVERSION
RUN adduser --no-create-home dynalite

RUN npm install -g dynalite

USER dynalite

EXPOSE 4567
ENTRYPOINT ["dynalite"]
