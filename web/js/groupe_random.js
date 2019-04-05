$(document).ready(function () {
    var groupe = ['Valentia', 'Olesea', 'Ganna', 'Tatyana',
        'Diallo', 'Tahiry', 'Vitaliy'];

//    var randomNumber = Math.floor(Math.random() * groupe.length);
//    document.getElementById('groupe4').innerHTML = groupe[randomNumber];

    //for (var i = 0; i < groupe.length; i++) {
    var ctr = groupe.length, temp, index;
    while (ctr > 0) {
        index = Math.floor(Math.random() * ctr);

       
        

        //var randomNumber = Math.floor(Math.random() * groupe.length);
        //document.getElementById('groupe4').innerHTML = groupe[randomNumber];

        var para = document.createElement("div");
        var node = document.createTextNode(groupe[index]);
        para.appendChild(node);
        var element = document.getElementById("groupe4");
        element.appendChild(para);

        //groupe.splice(randomNumber, 1);
        ctr--;
        temp = groupe[ctr];
        groupe[ctr] = groupe[index];
        groupe[index] = temp;
    }
    // }



    function shuffle(groupe) {
        var ctr = groupe.length, temp, index;

// While there are elements in the array
        while (ctr > 0) {
// Pick a random index
            index = Math.floor(Math.random() * ctr);


// Decrease ctr by 1
            ctr--;
// And swap the last element with it
            temp = groupe[ctr];
            groupe[ctr] = groupe[index];
            groupe[index] = temp;
        }
        return groupe;
    }

    console.log(shuffle(groupe));



});