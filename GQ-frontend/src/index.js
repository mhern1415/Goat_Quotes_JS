const quotesBase = `http://localhost:3000/quotes`
const sportsBase = `http://localhost:3000/sports`


const quotebuttonListener = function() {
        const goatButton = document.getElementById(`quotebutton`)
        goatButton.addEventListener(`click`, () => {
                openquotemodal()
        })
}

const openquotemodal = function() { 
        const quotemodal = document.getElementById(`quotemodal`)
        quotemodal.style.display = `block`
}

const fetchSportsToForm = () => {
        fetch(sportsBase)
        .then(resp => resp.json())
        .then(sportsObj => {
                addSports(sportsObj)
        })
}

const renderSport = function(sport) {
        const newSport = new Sport(sport)
        newSport.render()  
}


const addSports = function(sportsObj) {
        sportsObj.forEach((sport) => {
                renderSport(sport)
        }) 
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

const renderFunc = function(quote) {
        const newQuote = new Quote(quote)
        newQuote.render()
}

const saveQuote = function(formInput) {  
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

const closeForm = function()  {
        const quotemodal = document.getElementById(`quotemodal`)
        quotemodal.style.display = `none`
}

const closeListener = function() {
        const closebtn = document.getElementById(`close`)
        closebtn.addEventListener(`click`, (e) => {
                e.preventDefault()
                closeForm()
        })
}

const deletegoatquote = function(e)  {
        const deletedQuote = e.target.parentNode.parentNode
        const deleteObject = deletedQuote.dataset.id 
        deletedQuote.remove()
        deletequote(deleteObject)
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

const listenerFunc = function() {
        quotebuttonListener()
        closeListener()
        submitListener()
}



const renderAll = function(allquote)  {
        allquote.forEach((quote) => {
                renderFunc(quote)
        })
        listenerFunc()
}



const fetchAndLoadAll = function () {
        fetch(quotesBase)
        .then(resp => resp.json())
        .then(allquote => {
                allquote.sort(function (a, b) {
                      const aName = a.athlete.name
                      const bName = b.athlete.name
                return (aName < bName) ? -1 : (aName > bName) ? 1 : 0;                    })
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

