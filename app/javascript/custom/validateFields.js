function validateFields() {
    Array.from(document.querySelectorAll("input[type=text]")).forEach(i => function (){
        console.log(i.value)
        i.addEventListener("change", function (){
            console.log(i)
        })
    })
}

export { validateFields }