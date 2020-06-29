$(function () {
    function display(screen) {
        if (screen == "ui1") {
            $("#container").show();
        }
        else if (screen == "ui2") {
            $("#container2").show();
        } else {
            $("#container").hide();
            $("#container2").hide();
        }
    }

    display(false)

    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                if (item.window == "ui1") {
                display("ui1")
                faction = item.faction
                document.getElementById('factionName').innerText = faction.name
                document.getElementById('factionName').value = faction.id
                characters = item.faction.membersnames
                ranks = item.faction.ranklist
                setCharacterElements(characters)
                createDropdown(ranks)
                createDropdownDelRank(ranks)

                    if (faction.type == 0) {

                    document.getElementById('factionType').innerText = 'This is a government faction'

                    }  else if(faction.type == 1) {

                    document.getElementById('factionType').innerText = 'This is a legal faction/business'

                    }  else if(faction.type == 2) {

                    document.getElementById('factionType').innerText = 'This is an illegal faction'

                    }
        
                } else if (item.window == "ui2") {
                display("ui2")
                } 
            }else {
                display(false)
                }
        }
    })


function setCharacterElements(characters) {

    var tableRows = '';

    characters.forEach((character) => {
 

    tableRows += '<tr><th scope="row">'+character[0]+'</th><td>'+character[1]+'</td><td>'+character[2]+'</td><td><button onclick="Get('+character[0]+','+faction.id+')" id="closeticket" type="submit">X</button></td></tr>'
    

    });
    
    document.getElementById('tableBody').innerHTML = tableRows;

    }

    function createDropdown(ranks) {

        var rankoptions = "<option disabled='disabled'>Ranks</option>"

        for (const [ key, rank ] of Object.entries(ranks)) {
            rankoptions += `<option value='${key}'>${key}</option>`;
          }

        document.getElementById('ranks').innerHTML = rankoptions;
    }

    function createDropdownDelRank(ranks) {

        var rankoptions = "<option disabled='disabled'>Ranks</option>"

        for (const [ key, rank ] of Object.entries(ranks)) {
            rankoptions += `<option value='${key}'>${key}</option>`;
          }

        document.getElementById('ranksdel').innerHTML = rankoptions;
    }




    document.getElementById('ranks').addEventListener('click', function (event) {
        event.stopPropagation();
      });
    


    // if the person uses the escape key, it will exit the resource
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('http://factions1/exit', JSON.stringify({}));
            return
        }
    };
    $("#close").click(function () {
        $.post('http://factions1/exit', JSON.stringify({}));
        return
    })
   
    $("#invitebutton").click(function () {
        var charid = document.getElementById('charidinvite').value;
        var factionid = faction.id;
        document.getElementById('charidinvite').value = "";
        
        $.post('http://factions1/invitedchar', JSON.stringify({
            factionid,
            charid
        }))
        return
    })

    $("#createrank").click(function () {

        var factionid = faction.id;
        var rankname = document.getElementById('rankname').value;
        var wage = document.getElementById('rankwage').value;
        var permission = document.getElementById("checkbox").checked
        
        $.post('http://factions1/createrank', JSON.stringify({
            factionid,
            rankname,
            wage,
            permission
        }))
        document.getElementById('checkbox').checked = false;
        document.getElementById('rankwage').value = "";
        document.getElementById('rankname').value = "";
        return
    })

    $("#setrank").click(function () {

        var factionid = faction.id;
        var charid = document.getElementById('setrankid').value;
        var rank = document.getElementById('ranks').value;
        
        $.post('http://factions1/setrank', JSON.stringify({
            factionid,
            charid,
            rank
        }))
        document.getElementById('setrankid').value = "";
        document.getElementById('ranks').value = "Select";
        return
    })
})

$("#createfactionbutton").click(function () {

    var factionname = document.getElementById('factionnamebox').value;
    var factiontype = document.getElementById('factionnamedropdown').value;
    
    $.post('http://factions1/createfaction', JSON.stringify({
        factionname,
        factiontype,
    }))
    return
})

$("#deleterankbutton").click(function () {

    var factionid = faction.id;
    var rankname = document.getElementById('ranksdel').value;

    
    $.post('http://factions1/deleterank', JSON.stringify({
        factionid,
        rankname,
    }))
    return
})


$("#deleteFaction").click(function () {

    var factionid = faction.id;

    
    $.post('http://factions1/deletefaction', JSON.stringify({
        factionid,
    }))
    return
})


