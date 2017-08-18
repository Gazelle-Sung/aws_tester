
function select_pet(pet_num, DB_id, i){
	var pet_lists = document.getElementsByClassName("pet_list");
	var pet_name = document.getElementsByClassName("pet_name");
	var my_pet_name = document.getElementById("my_pet_name");
	
	var for_saving = document.getElementById("save_pet_input");
	
	for(var j= 0; j<pet_lists.length; j++){
    pet_lists[j].classList.remove("active_pet");
  }
	pet_lists[i].classList.add("active_pet");
	var my_current_pet = document.getElementById("my_current_pet");
	
	my_current_pet.src = "/assets/animal/animal_"+pet_num+".png";
	my_pet_name.innerHTML = pet_name[i].innerHTML;
	
	for_saving.value = DB_id;
}
