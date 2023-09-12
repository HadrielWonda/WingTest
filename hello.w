bring cloud;

let api = new cloud.Api();
let bucket = new cloud.Bucket();
let queue = new cloud.Queue();
let counter = new cloud.Counter();

api.post("/add", inflight (req) =>{
  queue.push("Give am 1");
   return cloud.ApiResponse{status: 201};
});
