const mongoose = require("mongoose");
const DayOfPeriod = mongoose.model("dayOfPeriods");

/**
 * Creates a
 * @param {object} attr The attributes of the document to be created.
 */
const createsDayOfPeriod = async attr => {
  const day = new DayOfPeriod(attr);
  await day.save();
  return attr;
};

const deleteDayOfPeriodByDate = async (year, month, day) => {
  await DayOfPeriod.findOneAndRemove({ year, month, day });
  return {};
};

const findDayOfPeriodByDate = async (year, month, day) => {
  const day = await DayOfPeriod.findOne({ year, month, day });
  return day;
};

const findDaysOfPeriodInYear = async year => {
  const days = await DayOfPeriod.find({ year });
  return days;
};

const findDaysOfPeriodInMonth = async (year, month) => {
  const days = await DayOfPeriod.find({ year, month });
  return days;
};

const patchDayOfPeriod = async (year, month, day, attr) => {
  const day = await DayOfPeriod.findOneAndUpdate({ year, month, day }, attr);
  return day;
};

module.exports = {
  createsDayOfPeriod,
  deleteDayOfPeriodByDate,
  findDayOfPeriodByDate,
  findDaysOfPeriodInMonth,
  findDaysOfPeriodInYear,
  patchDayOfPeriod
};
