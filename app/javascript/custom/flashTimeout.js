function flashTimeout() {
    let flash = document.getElementById("flash")
    if(flash !== null){
        setTimeout(function (){
            flash.classList.add("hidden")
        }, 3000)
    }
}

export {flashTimeout}