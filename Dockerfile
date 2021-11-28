# Mengambil image node
FROM node:alpine

# Membuat folder tempat project
WORKDIR /app

# Menambahkan `/app/node_modules/.bin` ke variable PATH
ENV PATH /app/node_modules/.bin:$PATH

# menginstall dependensi-dependensi yang diperlukan aplikasi
COPY package*.json ./
RUN npm install --silent

# Copy source code ke dalam container
COPY . ./

# Membuka port yang digunakan aplikasi
EXPOSE 7314