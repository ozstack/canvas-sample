import * as echarts from "echarts";
import { createCanvas } from "canvas";
import * as fs from "fs";

type EChartsOption = echarts.EChartsOption;
var option: EChartsOption;

option = {
  xAxis: {
    type: "category",
    data: ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"],
  },
  yAxis: {
    type: "value",
  },
  series: [
    {
      data: [120, 200, 150, 80, 70, 110, 130],
      type: "bar",
    },
  ],
  backgroundColor: "#fff",
};

const canvas = createCanvas(800, 600);
const chart = echarts.init(canvas);

chart.setOption(option);

const buffer = canvas.toBuffer("image/png");
fs.writeFileSync("d:\\image1.png", buffer);

chart.dispose();
