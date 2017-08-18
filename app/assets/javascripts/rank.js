function click_level_rank_btn(){
    var rank_for_level = document.getElementsByClassName("rank_for_level");
    var rank_for_pet = document.getElementsByClassName("rank_for_pet");
    var rank_for_quest = document.getElementsByClassName("rank_for_quest");
    var rank_for_coin = document.getElementsByClassName("rank_for_coin");
    var classifier_btns = document.getElementsByClassName("classifier_btn");
    
    for(var i=0; i<rank_for_level.length; i++){
        rank_for_level[i].style.display="inline-block"
    }
    
    for(var j=0; j<classifier_btns.length; j++){
        classifier_btns[j].classList.remove("rank_active_btn");
    }
    
    for(var a=0; a<rank_for_pet.length; a++){
        rank_for_pet[a].style.display="none"
    }
    for(var b=0; b<rank_for_quest.length; b++){
        rank_for_quest[b].style.display="none"
    }
    for(var c=0; c<rank_for_coin.length; c++){
        rank_for_coin[c].style.display="none"
    }
    
    classifier_btns[0].classList.add("rank_active_btn");
}


function click_pet_rank_btn(){
    var rank_for_level = document.getElementsByClassName("rank_for_level");
    var rank_for_pet = document.getElementsByClassName("rank_for_pet");
    var rank_for_quest = document.getElementsByClassName("rank_for_quest");
    var rank_for_coin = document.getElementsByClassName("rank_for_coin");
    var classifier_btns = document.getElementsByClassName("classifier_btn");
    
    for(var i=0; i<rank_for_pet.length; i++){
        rank_for_pet[i].style.display="inline-block"
    }
    
    for(var j=0; j<classifier_btns.length; j++){
        classifier_btns[j].classList.remove("rank_active_btn");
    }
    
    for(var a=0; a<rank_for_level.length; a++){
        rank_for_level[a].style.display="none"
    }
    for(var b=0; b<rank_for_quest.length; b++){
        rank_for_quest[b].style.display="none"
    }
    for(var c=0; c<rank_for_coin.length; c++){
        rank_for_coin[c].style.display="none"
    }
    
    classifier_btns[1].classList.add("rank_active_btn");
}


function click_quest_rank_btn(){
    var rank_for_level = document.getElementsByClassName("rank_for_level");
    var rank_for_pet = document.getElementsByClassName("rank_for_pet");
    var rank_for_quest = document.getElementsByClassName("rank_for_quest");
    var rank_for_coin = document.getElementsByClassName("rank_for_coin");
    var classifier_btns = document.getElementsByClassName("classifier_btn");
    
    for(var i=0; i<rank_for_quest.length; i++){
        rank_for_quest[i].style.display="inline-block"
    }
    
    for(var j=0; j<classifier_btns.length; j++){
        classifier_btns[j].classList.remove("rank_active_btn");
    }
    
    for(var a=0; a<rank_for_pet.length; a++){
        rank_for_pet[a].style.display="none"
    }
    for(var b=0; b<rank_for_level.length; b++){
        rank_for_level[b].style.display="none"
    }
    for(var c=0; c<rank_for_coin.length; c++){
        rank_for_coin[c].style.display="none"
    }
    
    classifier_btns[2].classList.add("rank_active_btn");
}
function click_coin_rank_btn(){
    var rank_for_level = document.getElementsByClassName("rank_for_level");
    var rank_for_pet = document.getElementsByClassName("rank_for_pet");
    var rank_for_quest = document.getElementsByClassName("rank_for_quest");
    var rank_for_coin = document.getElementsByClassName("rank_for_coin");
    var classifier_btns = document.getElementsByClassName("classifier_btn");
    
    for(var i=0; i<rank_for_coin.length; i++){
        rank_for_coin[i].style.display="inline-block"
    }
    
    for(var j=0; j<classifier_btns.length; j++){
        classifier_btns[j].classList.remove("rank_active_btn");
    }
    
    for(var a=0; a<rank_for_pet.length; a++){
        rank_for_pet[a].style.display="none"
    }
    for(var b=0; b<rank_for_quest.length; b++){
        rank_for_quest[b].style.display="none"
    }
    for(var c=0; c<rank_for_level.length; c++){
        rank_for_level[c].style.display="none"
    }
    
    classifier_btns[3].classList.add("rank_active_btn");
}