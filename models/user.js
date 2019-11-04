const mongoose = require("mongoose");
const { Schema } = mongoose;

const userSchema = new Schema({
  googleId: {
    required: true,
    type: String
  },
  name: String,
  age: Number,
  email: String,
  daysOfPeriod: [
    {
      ref: "dayofperiod",
      type: Schema.Types.ObjectId
    }
  ]
});

mongoose.model("users", userSchema);
