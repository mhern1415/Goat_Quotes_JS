class Sport{
    constructor(newSport){
            this.id = newSport.id 
            this.name = newSport.name
    }

    render(){
            const sportbox = document.querySelector(`#allsports`);
            const sportOption = document.createElement(`option`)
            sportOption.value = this.id
            sportOption.innerText = this.name
            sportbox.append(sportOption)
    }
}
