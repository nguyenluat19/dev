# Sử dụng Node chính thức
FROM node:18-alpine

# Tạo thư mục làm việc
WORKDIR /app

# Copy package files trước để cache dependencies
COPY package*.json ./

# Cài đặt dependencies
RUN npm install

# Copy toàn bộ source code
COPY . .

# Mở port mặc định CRA/Vite dev server
EXPOSE 3000

# Lệnh chạy development server
CMD ["npm", "start"]
