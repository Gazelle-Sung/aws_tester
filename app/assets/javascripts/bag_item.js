

//classifier_btns

function click_hat_btn(){
  var items = document.getElementsByClassName("item_info");
  var hats = document.getElementsByClassName("hat");
  var classifier_btns = document.getElementsByClassName("classifier_btn");
  for(var i= 0; i<items.length; i++){
    items[i].style.display = "none";
  }

  for(var j= 0; j<hats.length; j++){
    hats[j].style.display = "block";
  }
  for(var k = 0; k<classifier_btns.length; k++){
    classifier_btns[k].classList.remove("active_btn");
  }
  classifier_btns[0].classList.add("active_btn");
}

function click_clothes_btn(){
  var items = document.getElementsByClassName("item_info");
  var clothes = document.getElementsByClassName("clothes");
  var classifier_btns = document.getElementsByClassName("classifier_btn");
  for(var i= 0; i<items.length; i++){
    items[i].style.display = "none";
  }

  for(var j= 0; j<clothes.length; j++){
    clothes[j].style.display = "block";
  }
  for(var k = 0; k<classifier_btns.length; k++){
    classifier_btns[k].classList.remove("active_btn");
  }
  classifier_btns[1].classList.add("active_btn");
}

function click_bag_btn(){
  var items = document.getElementsByClassName("item_info");
  var bags = document.getElementsByClassName("bag");
  var classifier_btns = document.getElementsByClassName("classifier_btn");
  for(var i= 0; i<items.length; i++){
    items[i].style.display = "none";
  }

  for(var j= 0; j<bags.length; j++){
    bags[j].style.display = "block";
  }
  for(var k = 0; k<classifier_btns.length; k++){
    classifier_btns[k].classList.remove("active_btn");
  }
  classifier_btns[2].classList.add("active_btn");
}

function click_ticket_btn(){
  var items = document.getElementsByClassName("item_info");
  var tickets = document.getElementsByClassName("ticket");
  var classifier_btns = document.getElementsByClassName("classifier_btn");
  for(var i= 0; i<items.length; i++){
    items[i].style.display = "none";
  }

  for(var j= 0; j<tickets.length; j++){
    tickets[j].style.display = "block";
  }
  for(var k = 0; k<classifier_btns.length; k++){
    classifier_btns[k].classList.remove("active_btn");
  }
  classifier_btns[3].classList.add("active_btn");
}




//wear
function wear_hat(img_num){
  var save_hat_input = document.getElementById("save_hat_input");
  save_hat_input.value = img_num;
  
  var character_hat = document.getElementById("wearing_hat");
  character_hat.src = "/assets/character/items/hat_" + img_num + "_small.png";
}

function wear_onesie(img_num){
  var save_clothes_input = document.getElementById("save_clothes_input");
  save_clothes_input.value = img_num;
  
  var character_clothes = document.getElementById("wearing_clothes");
  character_clothes.src = "/assets/character/items/clothes_" + img_num + "_small.png";
}

function wear_bag(img_num){
  var save_bag_input = document.getElementById("save_bag_input");
  save_bag_input.value = img_num;
  
  var character_bag = document.getElementById("wearing_bag");
  character_bag.src = "/assets/character/items/bag_" + img_num + "_small.png";
}