const list = [];
if(list.length==0)
 document.getElementById("listCount").innerHTML ="There are no students";
  

 AddStudent = ()=>
 {
  document.getElementById("div1").style.display="block";
 }

 DeleteStudent =() =>
 {
 if(confirm("Do you want to delete record"))
 {
     list.pop();
 }
 DisplayRecords();
 console.log(list.length);
 }

 Add =(event)=>
 {
    var studnet = {name :"ajay", address:"delhi", batch:"B002"};
    console.log(event);
 console.log(event.key); 
if(event.key=='Enter')
list.push(studnet);
console.log(list.length)
DisplayRecords();
}


DisplayRecords = ()=>
{
    var studentlist ="";

    // for(var i=0;i<list.length;i++)
    // {
    //     // studentlist+= "<li>" + list[i].name + ' ' + list[i].address + "</li>";
    //     studentlist+= `<li> ${list[i].name} --  ${list[i].address} </li>`;

    // }

    list.forEach(student => {
        studentlist+= `<li> ${student.name} --  ${student.address} </li>`;
    });




 document.getElementById("studentlist").innerHTML = studentlist;
}

const count = list.filter(BatchCount);

BatchCount = (student)=>
{
    return student.batch="B002";
}



const batchCount = list.filter(x=>x.batch=="B002");
console.log(batchCount.length);











