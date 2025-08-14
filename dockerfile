# Menggunakan node.js versi 20 sebagai image dasar
FROM node:20

# Menentukan direktori kerja dalam kontainer
workdir /usr/src/app

# Menyalin file package.json dan package-lock.json ke dalam direktori kerja
copy package*.json ./

# Menginstall dependensi node.js
RUN npm install

# Menyalin seluruh suber kode aplikasi
copy . .

# Menyalin aplikasi node.js
cmd ["node", "index.js"]