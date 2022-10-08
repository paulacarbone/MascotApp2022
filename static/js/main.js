const btnDelete = document.querySelectorAll('.btn-delete')
console.log(btnDelete)
if(btnDelete){
   const btnArray = Array.from(btnDelete);
   btnArray.forEach((btn)=> {

    btn.addEventListener('click',(e)=>{
        if(!confirm("Are you sure you want to delete?")){
            e.preventDefault();
        }
    })
   });
}