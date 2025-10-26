FROM node:23-alpine AS pw-trace-dest

COPY ./downloadPwGit.sh /

RUN chmod +x /downloadPwGit.sh && \
      /downloadPwGit.sh

FROM nginx:alpine

COPY --from=pw-trace-dest /pw/playwright/packages/playwright-core/lib/vite/traceViewer/ /usr/share/nginx/html/
WORKDIR /usr/share/nginx/html/

EXPOSE 80