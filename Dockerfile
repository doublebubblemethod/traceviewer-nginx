FROM node:23-alpine AS trace-dest
RUN npm install -g playwright
RUN npm install -g vite
WORKDIR /usr/local/lib/node_modules/playwright/node_modules/playwright-core/lib/vite/traceViewer/
RUN vite build

FROM nginx:alpine
COPY --from=trace-dest /usr/local/lib/node_modules/playwright/node_modules/playwright-core/lib/vite/traceViewer/dist/ /usr/share/nginx/html/
EXPOSE 80
ENV PORT=80
