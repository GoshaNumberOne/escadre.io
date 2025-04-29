# Базовый образ (Node.js версии 18)
FROM node:18

# Рабочая директория внутри контейнера
WORKDIR /app

# Копируем package.json и package-lock.json
COPY package*.json ./

# Устанавливаем зависимости
RUN npm install

# Копируем ВЕСЬ проект в контейнер
COPY . .

# Собираем проект (Next.js)
RUN npm run build

# Команда запуска (по умолчанию `next start`)
CMD ["npm", "start"]
