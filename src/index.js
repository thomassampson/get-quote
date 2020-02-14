const axios = require("axios");
require("dotenv").config();

const call = () => {
  axios
    .get(`${process.env.qotm_endpoint}/qotm-consul/`)
    .then(res => console.log(res.data.quote))
    .catch(err => console.log(err));
};

setInterval(call, 3000);
