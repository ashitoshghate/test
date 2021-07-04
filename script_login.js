const total_time=10;

let time=total_time*60;

const  countdowne1=document.getElementById('countdown');

setInterval(updateCountdown,1000);

function updateCountdown(){

    const minutes=Math.floor(time/60);
    let seconds=time%60;
    seconds=seconds<10 ? '0' + seconds:seconds;
    countdowne1.innerHTML = `${minutes} : ${seconds}`;
    time--;
}
setTimeout(function(){alert("time is up");},600000);