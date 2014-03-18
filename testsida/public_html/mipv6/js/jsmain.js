function showBigger(o, bShow){
   if(bShow){
        document.getElementById("dBigger").style.backgroundImage="url('"+o.src+"')";
        document.getElementById("dBigger").style.display = 'block';
   }
   else{
        document.getElementById("dBigger").style.display = 'none';
   }
}
