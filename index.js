const express = require('express');
const app = express();
const port = 8080;

app.get('/', (req, res) => {
    res.send('Hallo saya dita setya kurniawan ya');
});

app.listen(port, () => {
    console.log(`Server berjalan di http://localhost:${port}`);
}); 