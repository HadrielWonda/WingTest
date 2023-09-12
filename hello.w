bring cloud;

let api = new cloud.Api();
let bucket = new cloud.Bucket();
let queue = new cloud.Queue();
let counter = new cloud.Counter(initial: 1);

api.post("/inc", inflight (req) =>{
  counter.inc();
  queue.push("Give am ${counter.peek()}");
  return cloud.ApiResponse{status: 201};
});

api.post("/dec", inflight (req) =>{
  counter.dec();
  queue.push("Collect ${counter.peek()} for him hand");
  return cloud.ApiResponse{status: 201};
});

queue.setConsumer(inflight {message} =>{
   bucket.put(message,"Oga I don take am");
});
