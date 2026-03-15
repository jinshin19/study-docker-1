const express = require("express");
const cors = require("cors");

const app = express();

app.use(express());
app.use(cors());

app.get("/", (req, res) => {
  try {
    res.send({
      success: true,
      message: "Running!!",
    });
  } catch (error) {
    console.error("Error found", error);
    res.send({
      success: false,
      message: error?.message,
    });
  }
});

app.listen(3000, console.log("Server is running at port 3000"));
