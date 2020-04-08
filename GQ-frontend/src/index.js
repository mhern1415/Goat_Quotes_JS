const quotesBase = `http://localhost:3000/quotes`
const sportsURL = `http://localhost:3000/sports`


const addSport = function(sport) {
        const newSport = new Sport(sport)
        newSport.render()  
}


const addSports = function(sportsObj) {
        sportsObj.forEach((sport) => {
                addSport(sport)
        }) 
}

const fetchSportsToForm = () => {
        fetch(sportsURL)
        .then(resp => resp.json())
        .then(sportsObj => {
                addSports(sportsObj)
        })
}

const saveQuote = (formInput) => {  
        const goatquote = {
                method:"POST",
                headers:{"Content-Type": "application/json"},
                body:JSON.stringify(formInput)
        }
        fetch(quotesBase, goatquote)
        .then(resp => resp.json())
        .then(newquote => {
                renderFunc(newquote)
        })
}

const getNewQuote = function(datafromArray) {
        return {
                athlete:datafromArray[0].value, 
                sport:datafromArray[1].value, 
                content:datafromArray[2].value
        }
}

const resetform = function() {
        const QuoteForm = document.getElementById(`quoteform`)
        QuoteForm[0].value = ``
        QuoteForm[1].value = `blank`
        QuoteForm[2].value = ``
}

const submitListener = function()  {
        const submitbutton = document.getElementById(`submit`)
        submitbutton.addEventListener(`click`, (e) => {
                e.preventDefault()
                const formValue = e.target.parentNode 
                if (formValue[0].value === ``) {
                        alert(`An athlete is required!`)
                } else if (formValue[1].value === `blank`) {
                        alert(`A sport is required!`)
                } else if(formValue[2].value === ``) {
                        alert(`A quote is required!`)
                } else {
                        saveQuote(getNewQuote(formValue)) 
                        resetform()
                        closeForm()
                }
        })
}

const closeForm = function()  {
        const quotemodal = document.getElementById(`quotemodal`)
        const background = document.getElementById(`goatMain`)
        quotemodal.style.display = `none`
        background.removeAttribute(`style`)
}



const closeListener = function() {
        const closebtn = document.getElementById(`close`)
        closebtn.addEventListener(`click`, (e) => {
                e.preventDefault()
                closeForm()
        })
}


const openquotemodal = function() { 
        const quotemodal = document.getElementById(`quotemodal`)
        const background = document.getElementById(`goatMain`)
        quotemodal.style.display = `block`
        background.style.position = `fixed`
}

const quotebuttonListener = function() {
        const goatButton = document.getElementById(`quotebutton`)
        goatButton.addEventListener(`click`, () => {
                openquotemodal()
        })
}

const deletequote = function(deleteObject)  {
        const goatquote = {
                method:"DELETE"
        }
        fetch(quotesBase + `/${deleteObject}`, goatquote)
        .then(resp => resp.json())
        .then(goatObj => {
                alert(goatObj)
        })
}

const deletegoatquote = function(e)  {
        const deletedQuote = e.target.parentNode.parentNode
        const deleteObject = deletedQuote.dataset.id 
        deletedQuote.remove()
        deletequote(deleteObject)
}

const listenerFunc = function() {
        quotebuttonListener()
        closeListener()
        submitListener()
}

const renderFunc = function(quote) {
        const newQuote = new Quote(quote)
        newQuote.render()
}

const renderAll = function(allquote)  {
        allquote.forEach((quote) => {
                renderFunc(quote)
        })
        listenerFunc()
}
///
const fetchAndLoadAll = () => {
        fetch(quotesBase)
        .then(resp => resp.json())
        .then(allquote => {
                renderAll(allquote)
        })
}

const start = () => {
        document.addEventListener("DOMContentLoaded", () => {
                fetchAndLoadAll(); 
                fetchSportsToForm(); 
        })
}

start(); 

