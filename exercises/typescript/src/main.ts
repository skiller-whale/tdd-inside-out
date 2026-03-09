import { WordleApp } from "./WordleApp";

const app = new WordleApp();
const outputLines = app.run(process.argv.slice(2));

for (const line of outputLines) {
  console.log(line);
}
