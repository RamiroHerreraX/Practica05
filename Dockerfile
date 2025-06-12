# Imagen base
FROM node:24

# Establece el directorio de trabajo
WORKDIR /app

# Copia archivos necesarios
COPY package.json package-lock.json ./
RUN npm install

# Copia el resto del código
COPY . .

# Expone el puerto (ajustaremos luego para el desafío)
EXPOSE 3000

# Comando para ejecutar la app
CMD ["npm", "start"]
