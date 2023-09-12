# Testing &amp; playing with Winglang

## Installation


```
npm install -g @winglang/wing
npm i @winglang/wingsdk
```

Compile in Sim mode
```
wing compile -t sim hello.w
```

Run in Sim mode
```
node --experimental-repl-await

const sdk = require("@winglang/wingsdk"); // import the wing sdk library
const simulator = new sdk.testing.Simulator({ simfile : "./target/hello.wx"}); // create an instance of the Simulator
await simulator.start(); // start the simulator 

const queue = simulator.getResourceByPath("root/cloud.Queue"); // retrieve the queue resource
await queue.push("Wing");

const bucket = simulator.getResourceByPath("root/cloud.Bucket"); // retrieve the bucket resource
await bucket.list() // will show available files
await bucket.get("wing.txt") // will show the file content
```


