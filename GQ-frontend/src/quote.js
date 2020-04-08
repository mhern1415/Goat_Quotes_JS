class Quote{
    constructor(gQuote){
            this.id = gQuote.id
            this.content = gQuote.content
            this.athlete = gQuote.athlete.name
            this.sport = gQuote.sport.name 
    }

    render(){
            const quotesection = document.getElementById(`quotesection`)
            const quotediv = document.createElement(`div`)
            quotediv.dataset.id = this.id 
            quotediv.className = `quotediv ${this.sport}`
            const quotebody = document.createElement(`div`)
            quotebody.className = `quotebody`
            const sportDiv = document.createElement(`div`)
            const sportHeader = document.createElement(`h4`)
            sportDiv.className = `${this.sport}`;
            sportHeader.innerText = `Sport: ${this.sport}`
            sportDiv.append(sportHeader)
            const contentDiv = document.createElement(`div`)
            const quoteArea = document.createElement(`p`)
            quoteArea.innerText = this.content
            contentDiv.append(quoteArea)
            const athleteDiv = document.createElement(`div`)
            const athleteHeader = document.createElement(`h4`)
            athleteHeader.innerText = `GOAT: ${this.athlete}`
            athleteDiv.append(athleteHeader)
            const deleteButton = document.createElement(`button`)
            deleteButton.className = `deletebutton`
            deleteButton.innerText = `Delete`
            deleteButton.dataset.id = this.id 
            deleteButton.addEventListener('click', (e) => {
                    let confirmDelete = confirm(`Are you sure you want to delete that quote?`)
                    if (confirmDelete == true) {
                            deletegoatquote(e)
                    } 
            })
            quotebody.append(athleteDiv)
            quotebody.append(sportDiv)
            quotebody.append(contentDiv)
            quotebody.append(deleteButton)
            quotediv.append(quotebody)
            quotesection.append(quotediv)
    }


}