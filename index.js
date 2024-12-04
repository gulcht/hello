const express = require('express');
const cors = require('cors'); // นำเข้า cors
const app = express();
const port = 3000;

// เปิดใช้งาน CORS สำหรับทุกๆ request
app.use(cors());

app.get('/hello', (req, res) => {
  res.json({ message: 'Hello, World' });
});

app.listen(port, () => {
  console.log(`Server is running at port:${port}`);
});
