function Add()
{
    var no1 =parseInt(document.getElementById('txtNo1').value);
    var no2= parseInt(document.getElementById('txtNo2').value);
    document.getElementById("txtResult").value= no1+no2;
       }
       function GetNumbers()
        {
            var list ='';
        for(var i =1 ;i<=10;i++)
        {
list += i + '<br>';
        }
        document.write(list);
        }
       
        function IsEven()
        {
            var no1 =parseInt(document.getElementById('txtNo1').value);
   
            console.log(no1);
             if(no1%2==0)
             {
                console.log('Even');
             }
             else 
             { 
                console.log('odd');
             }
        }

        function ChangeHeading()
        {
             document.getElementById("head1").innerHTML ="updated head";
        }