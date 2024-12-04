# ใช้ Node.js official image เป็นฐาน
FROM node:18

# ตั้งค่าตำแหน่งทำงานในคอนเทนเนอร์
WORKDIR /usr/src/app

# คัดลอก package.json และ package-lock.json (ถ้ามี)
COPY package*.json ./

# ติดตั้ง dependencies
RUN npm install

# คัดลอกไฟล์โปรเจคทั้งหมดเข้าไปในคอนเทนเนอร์
COPY . .

# เปิด port 3000
EXPOSE 3000

# รันแอปเมื่อคอนเทนเนอร์เริ่มทำงาน
CMD ["node", "index.js"]
