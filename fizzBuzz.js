var isFizzNumber = function(number) {
	if(number % 3 === 0)
		console.log('Fizz');
}

var isBuzzNumber = function(number) {
	if(number % 5 === 0)
		console.log('Buzz');
}

var isFizzBuzzNumber = function(number) {
	if(number % 5 === 0 && number % 3 === 0)
		console.log('FizzBuzz');
}

for (var i = 0; i <= 33; i++) {
	if(!isBuzzNumber && !isFizzNumber && !isFizzBuzzNumber)
		console.log(i);
};