const express = require('express')
const app = express()
const port = 3000

app.post('/appointment', (req, res) => {
  res.send('Appointment created with ID 1')
})

app.put('/appointment', (req, res) => {
  res.send('Appointment with ID 1 has been updated')
})

app.listen(port, () => {
  console.log(`Example app listening on port ${port}`)
})
