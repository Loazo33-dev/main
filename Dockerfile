# Imagen base de Node.js
FROM node:18

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del proyecto
COPY . .

# Expone el puerto en el que corre tu backend (según tu docker-compose.yml: 5000)
EXPOSE 5000

# Comando por defecto que se ejecutará al iniciar el contenedor
CMD ["npm", "start"]
