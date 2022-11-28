document.addEventListener("DOMContentLoaded", function(){
    const canvasEl = document.getElementById("mycanvas")

    canvasEl.height = 500
    canvasEl.width = 500
    
    const ctx = canvasEl.getContext('2d')
    ctx.fillStyle = 'blue';
    ctx.fillRect(0,10,200,200)

    ctx.beginPath();
    ctx.arc(100, 100, 20, 0, 2 * Math.PI, true);
    ctx.strokeStyle = "purple";
    ctx.lineWidth = 15;
    ctx.stroke();
    ctx.fillStyle = 'white'
    ctx.fill();
});
