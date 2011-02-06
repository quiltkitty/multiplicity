//Countdown timer

function countdown() {
	current_time = document.getElementById("timer").innerHTML;
	new_time = current_time - 1;
	document.getElementById("timer").innerHTML = new_time;
	alert(new_time);
	return new_time;
}

