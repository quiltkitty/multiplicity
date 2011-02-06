function display(min,sec){ 
	var minutes=min
	var seconds=sec
	document.counter.timer.value = minutes + ":" + seconds;

 	if ((minutes == 0) && (seconds <= 11)) {
		document.counter.timer.style.backgroundColor = "#FF0000";
	}

	if ((seconds <= 0) && (minutes > 0)) {
		seconds = 59;
		minutes -= 1;
	}
	else {
		seconds -= 1
		if (seconds <= 9) {
			seconds = "0" + seconds;
		}
	}
 		document.counter.timer.value = minutes + ":" + seconds;
 		setTimeout("display(" + minutes + "," + seconds + ")", 1000);
//	}

 	if ((minutes == 0) && (seconds == 0)) {
 		document.counter.timer.value = "0:00";
		window.alert("Time is up. Press OK to continue.");
		window.location = "/block";
	}
} 
display(min,sec);

/*
 *  	document.cd.disp.value = dis(mins,secs); // setup additional displays here.
 	if((mins == 0) && (secs == 0)) {
  		window.alert("Time is up. Press OK to continue."); // change timeout message as required
  		// window.location = "yourpage.htm" // redirects to specified page once timer ends and ok button is pressed
 */