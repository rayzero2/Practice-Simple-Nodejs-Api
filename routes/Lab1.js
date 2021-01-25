const express = require("express");
const router = express.Router();

var data = {
  data: [],
};

router.get("/getMsg", function (req, res) {
  res.json(data);
});

router.post("/postMsg", function (req, res) {
  let num = 0;
  if (data.data.length != 0) {
    for (let index = 0; index < data.data.length; index++) {
      if (req.body.text == data.data[index].text) {
        data.data[index].count++;
      }
    }

    data.data.forEach((item) => {
      if (item.text == req.body.text) {
        num++;
      }
    });

    if (num == 0) {
      data.data.push({ text: req.body.text, count: 1 });
    }
  } else {
    data.data.push({ text: req.body.text, count: 1 });
  }
  res.send(data);
});

module.exports = router;



