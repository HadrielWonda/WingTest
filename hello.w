bring cloud;

let api = new cloud.Api();
let bucket = new cloud.Bucket();
let queue = new cloud.Queue();
let counter = new cloud.Counter();

api.post("/add", inflight (req) =>{
  queue.push("Give am 1");
  return cloud.ApiResponse{status: 201};
});

queue.setConsumer(inflight {message} =>{
   bucket.put(message,"Oga I don give am");
});
