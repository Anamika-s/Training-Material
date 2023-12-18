const students = [];

function AddRecord(student){
// students.push("ajay");
// students.push("deepak");
students.push(student);
}
let record ="";
function DisplayRecords()
{
    
    for(var i=0;i<students.length;i++)
    {
    // console.log(students[i].name);
record += '<li>' + students[i].name + '</li>';
}
document.getElementById("list").innerHTML = record
}

var student = {name :"ajay", address:"delhi", marks:90};
AddRecord(student);

var student = {name :"deepak", address:"delhi", marks:90};

AddRecord(student);
DisplayRecords();
