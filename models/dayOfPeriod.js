const mongoose = require("mongoose");
const { Schema } = mongoose;

const dayOfPeriodSchema = new Schema({
  year: Number,
  month: Number,
  day: Number,
  pain: Number,
  bloodAmount: Number
});

mongoose.model("dayofperiod", dayOfPeriodSchema);
