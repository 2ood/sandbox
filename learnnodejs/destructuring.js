/*
const candyMachine = {
  status : {
    name : 'node',
    count : 5,
  },
  getCandy: function() {
    this.status.count--;
    return this.status.count;
  }
}

var status = candyMachine.status;
var getCandy = candyMachine.getCandy;
*/

const candyMachine = {
  status : {
    name:'node',
    count: 5,
  },
  getCandy() {
    status.count--;
    return status.count;
  }
}

const {status, getCandy} = candyMachine;

console.log(status);
console.log(getCandy());

//array도 가능.
const array = ['array', {},bool];
const [node,object,bool] = array;
