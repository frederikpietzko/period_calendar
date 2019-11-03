const mongoose = require("mongoose");
const { Schema } = mongoose;

const dayOfPeriodSchema = new Schema({
  googleId: String,
  year: Number,
  month: Number,
  day: Number,
  pain: Number,
  bloodAmount: Number
});

mongoose.model("dayOfPeriods", dayOfPeriodSchema);
