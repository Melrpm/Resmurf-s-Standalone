var controls = false

$(function () {
    function display(screen) {
        if (screen == "customization") {
            $("#container").show();
            $("#lastSection").show();
        } 
        else if(screen == "charselection") {
            $("#characters").show();
        }
        else if(screen == "chardetails") {
            $("#chardetails").show();
        }
        else {
            $("#container").hide();
            $("#chardetails").hide();
            $("#characters").hide();
            $("#lastSection").hide();
        }
    }

    display(false)


    window.addEventListener('message', function(event) {
        var item = event.data;
        if (item.type === "ui") {
            if (item.status == true) {
                if (item.window == "ui1") {
                    display("customization")
                    controls = "ui1"

                    // get HAT value
                    hatDraw = item.clothes.hat[0];
                    hatText = item.clothes.hat[1];
                    hmaxDraw = item.drawables.hat
                    hmaxTexture = item.textures.hat

                    //document.getElementById('hmaxDraw').innerText = hmaxDraw;
                    //document.getElementById('hmaxTexture').innerText = hmaxTexture;
                    //document.getElementById('hvalue').innerText = hatDraw;
                    //document.getElementById('htvalue').innerText = hatText;
                    
                    var hatDrawables = document.getElementById("hatDraw");
                    hatDrawables.setAttribute("value", hatDraw);
                    hatDrawables.setAttribute("max", hmaxDraw);
                    var hatTextures = document.getElementById("hatText");
                    hatTextures.setAttribute("value", hatText);
                    hatTextures.setAttribute("max", hmaxTexture);
                    var hatTextb = document.getElementById("hvaluec");
                    hatTextb.setAttribute("value", hatDraw);

                    //hair

                    hairDraw = item.clothes.hair[0];
                    hairText = item.clothes.haircolor;
                    hairmaxDraw = item.drawables.hair
                    hairmaxTexture = item.textures.hair

                    //document.getElementById('hairmaxDraw').innerText = hairmaxDraw;
                    //document.getElementById('hairmaxTexture').innerText = hairmaxTexture;
                    //document.getElementById('hairvalue').innerText = hairDraw;
                   // document.getElementById('hairtvalue').innerText = hairText;
                    
                    var hairDrawables = document.getElementById("hairDraw");
                    hairDrawables.setAttribute("value", hairDraw);
                    hairDrawables.setAttribute("max", hairmaxDraw);
                    var hairTextures = document.getElementById("hairText");
                    hairTextures.setAttribute("value", hairText);
                    var hairTextb = document.getElementById("hairvaluec");
                    hairTextb.setAttribute("value", hairDraw);


                    
                    // get Glasses value
                    glassesDraw = item.clothes.glasses[0];
                    glassesText = item.clothes.glasses[1];
                    gmaxDraw = item.drawables.glasses
                    gmaxTexture = item.textures.glasses
    
                    //document.getElementById('gmaxDraw').innerText = gmaxDraw;
                    //document.getElementById('gmaxTexture').innerText = gmaxTexture;
                    //document.getElementById('gvalue').innerText = glassesDraw;
                   // document.getElementById('gtvalue').innerText = glassesText;
                    
                    var glassesDrawables = document.getElementById("glassesDraw");
                    glassesDrawables.setAttribute("value", glassesDraw);
                    glassesDrawables.setAttribute("max", gmaxDraw);
                    var glassesTextures = document.getElementById("glassesText");
                    glassesTextures.setAttribute("value", glassesText);
                    glassesTextures.setAttribute("max", gmaxTexture);
                    var glassesTextb = document.getElementById("gvaluec");
                    glassesTextb.setAttribute("value", glassesDraw);
                    

                    // get Ears value
                    earsDraw = item.clothes.ears[0];
                    earsText = item.clothes.ears[1];
                    emaxDraw = item.drawables.ears
                    emaxTexture = item.textures.ears

                    //document.getElementById('emaxDraw').innerText = emaxDraw;
                    //document.getElementById('emaxTexture').innerText = emaxTexture;
                    //document.getElementById('evalue').innerText = earsDraw;
                    //document.getElementById('etvalue').innerText = earsText;
                    
                    var earsDrawables = document.getElementById("earsDraw");
                    earsDrawables.setAttribute("value", earsDraw);
                    earsDrawables.setAttribute("max", emaxDraw);
                    var earsTextures = document.getElementById("earsText");
                    earsTextures.setAttribute("value", earsText);
                    earsTextures.setAttribute("max", emaxTexture);
                    var earsTextb = document.getElementById("evaluec");
                    earsTextb.setAttribute("value", earsDraw);

                    // get watches value
                    watchDraw = item.clothes.watch[0];
                    watchText = item.clothes.watch[1];
                    wmaxDraw = item.drawables.watch
                    wmaxTexture = item.textures.watch

                    //document.getElementById('wmaxDraw').innerText = wmaxDraw;
                    //document.getElementById('wmaxTexture').innerText = wmaxTexture;
                   // document.getElementById('wvalue').innerText = watchDraw;
                  //  document.getElementById('wtvalue').innerText = watchText;
                    
                    var watchDrawables = document.getElementById("watchDraw");
                    watchDrawables.setAttribute("value", watchDraw);
                    watchDrawables.setAttribute("max", wmaxDraw);
                    var watchTextures = document.getElementById("watchText");
                    watchTextures.setAttribute("value", watchText);
                    watchTextures.setAttribute("max", wmaxTexture);
                    var watchTextb = document.getElementById("wvaluec");
                    watchTextb.setAttribute("value", watchDraw);

                    // get bracelet value
                    braceletDraw = item.clothes.bracelet[0];
                    braceletText = item.clothes.bracelet[1];
                   bmaxDraw = item.drawables.bracelet
                    bmaxTexture = item.textures.bracelet
    
                    //document.getElementById('bmaxDraw').innerText = bmaxDraw;
                    //document.getElementById('bmaxTexture').innerText = bmaxTexture;
                   // document.getElementById('bvalue').innerText = braceletDraw;
                   // document.getElementById('btvalue').innerText = braceletText;
                    
                    var braceletDrawables = document.getElementById("braceletDraw");
                    braceletDrawables.setAttribute("value", braceletDraw);
                    braceletDrawables.setAttribute("max", bmaxDraw);
                    var braceletTextures = document.getElementById("braceletText");
                    braceletTextures.setAttribute("value", braceletText);
                    braceletTextures.setAttribute("max", bmaxTexture);
                    var braceletTextb = document.getElementById("bvaluec");
                    braceletTextb.setAttribute("value", braceletDraw);

                    //Get TORSO2 value
                    torso2Draw = item.clothes.torso2[0];
                    torso2Text = item.clothes.torso2[1];
                    t2maxDraw = item.drawables.torso2
                    t2maxTexture = item.textures.torso2

                    //document.getElementById('t2maxDraw').innerText = t2maxDraw;
                    //document.getElementById('t2maxTexture').innerText = t2maxTexture;
                   // document.getElementById('t2dvalue').innerText = torso2Draw;
                   // document.getElementById('t2tvalue').innerText = torso2Text;

                    var torso2Drawables = document.getElementById("torso2Draw");
                    torso2Drawables.setAttribute("value", torso2Draw);
                    torso2Drawables.setAttribute("max", t2maxDraw);
                    var torso2Textures = document.getElementById("torso2Text");
                    torso2Textures.setAttribute("value", torso2Text);
                    torso2Textures.setAttribute("max", t2maxTexture);
                    var torso2Textb = document.getElementById("t2valuec");
                    torso2Textb.setAttribute("value", torso2Draw);

                    //Get TORSO value
                    torsoDraw = item.clothes.torso[0];
                    torsoText = item.clothes.torso[1];
                    tmaxDraw = item.drawables.torso
                    tmaxTexture = item.textures.torso

                    //document.getElementById('tmaxDraw').innerText = tmaxDraw;
                    //document.getElementById('tmaxTexture').innerText = tmaxTexture;
                    //document.getElementById('tdvalue').innerText = torsoDraw;
                    //document.getElementById('ttvalue').innerText = torsoText;

                    var torsoDrawables = document.getElementById("torsoDraw");
                    torsoDrawables.setAttribute("value", torsoDraw);
                    torsoDrawables.setAttribute("max", tmaxDraw);
                    var torsoTextures = document.getElementById("torsoText");
                    torsoTextures.setAttribute("value", torsoText);
                    torsoTextures.setAttribute("max", tmaxTexture);
                    var torsoTextb = document.getElementById("tvaluec");
                    torsoTextb.setAttribute("value", torsoDraw);

                    
                    //Get UNDERSHIRT value
                    undershirtDraw = item.clothes.undershirt[0];
                    undershirtText = item.clothes.undershirt[1];
                    umaxDraw = item.drawables.undershirt
                    umaxTexture = item.textures.undershirt

                    //document.getElementById('umaxDraw').innerText = umaxDraw;
                    //document.getElementById('umaxTexture').innerText = umaxTexture;
                    //document.getElementById('udvalue').innerText = undershirtDraw;
                   // document.getElementById('utvalue').innerText = undershirtText;

                    var undershirtDrawables = document.getElementById("undershirtDraw");
                    undershirtDrawables.setAttribute("value", undershirtDraw);
                    undershirtDrawables.setAttribute("max", umaxDraw);
                    var undershirtTextures = document.getElementById("undershirtText");
                    undershirtTextures.setAttribute("value", undershirtText);
                    undershirtTextures.setAttribute("max", umaxTexture);
                    var undershirtTextb = document.getElementById("uvaluec");
                    undershirtTextb.setAttribute("value", undershirtDraw);

                    //Get PANTS value
                    pantsDraw = item.clothes.pants[0];
                    pantsText = item.clothes.pants[1];
                    pmaxDraw = item.drawables.pants
                    pmaxTexture = item.textures.pants

                    //document.getElementById('pmaxDraw').innerText = pmaxDraw;
                   // document.getElementById('pmaxTexture').innerText = pmaxTexture;
                   // document.getElementById('pdvalue').innerText = pantsDraw;
                   // document.getElementById('ptvalue').innerText = pantsText;

                    var pantsDrawables = document.getElementById("pantsDraw");
                    pantsDrawables.setAttribute("value", pantsDraw);
                    pantsDrawables.setAttribute("max", pmaxDraw);
                    var pantsTextures = document.getElementById("pantsText");
                    pantsTextures.setAttribute("value", pantsText);
                    pantsTextures.setAttribute("max", pmaxTexture);
                    var pantsTextb = document.getElementById("pvaluec");
                    pantsTextb.setAttribute("value", pantsDraw);

                    // get SHOES value
                    shoesDraw = item.clothes.shoes[0];
                    shoesText = item.clothes.shoes[1];
                    smaxDraw = item.drawables.shoes
                    smaxTexture = item.textures.shoes

                    //document.getElementById('smaxDraw').innerText = smaxDraw;
                    //document.getElementById('smaxTexture').innerText = smaxTexture;
                   // document.getElementById('sdvalue').innerText = shoesDraw;
                   // document.getElementById('stvalue').innerText = shoesText;

                    var shoesDrawables = document.getElementById("shoesDraw");
                    shoesDrawables.setAttribute("value", shoesDraw);
                    shoesDrawables.setAttribute("max", smaxDraw);
                    var shoesTextures = document.getElementById("shoesText");
                    shoesTextures.setAttribute("value", shoesText);
                    shoesTextures.setAttribute("max", smaxTexture);
                    var shoesTextb = document.getElementById("svaluec");
                    shoesTextb.setAttribute("value", shoesDraw);

                    // get parachute value
                    parachuteDraw = item.clothes.parachute[0];
                    parachuteText = item.clothes.parachute[1];
                    p2maxDraw = item.drawables.parachute
                    p2maxTexture = item.textures.parachute

                   // document.getElementById('p2maxDraw').innerText = p2maxDraw;
                    //document.getElementById('p2maxTexture').innerText = p2maxTexture;
                   // document.getElementById('p2dvalue').innerText = parachuteDraw;
                   // document.getElementById('p2tvalue').innerText = parachuteText;

                    var parachuteDrawables = document.getElementById("parachuteDraw");
                    parachuteDrawables.setAttribute("value", parachuteDraw);
                    parachuteDrawables.setAttribute("max", p2maxDraw);
                    var parachuteTextures = document.getElementById("parachuteText");
                    parachuteTextures.setAttribute("value", parachuteText);
                    parachuteTextures.setAttribute("max", p2maxTexture);
                    var parachuteTextb = document.getElementById("p2valuec");
                    parachuteTextb.setAttribute("value", parachuteDraw);

                    // get accessory value
                    accessoryDraw = item.clothes.accessory[0];
                    accessoryText = item.clothes.accessory[1];
                    amaxDraw = item.drawables.accessory
                    amaxTexture = item.textures.accessory

                    //document.getElementById('amaxDraw').innerText = amaxDraw;
                    //document.getElementById('amaxTexture').innerText = amaxTexture;
                   // document.getElementById('advalue').innerText = accessoryDraw;
                   // document.getElementById('atvalue').innerText = accessoryText;

                    var accessoryDrawables = document.getElementById("accessoryDraw");
                    accessoryDrawables.setAttribute("value", accessoryDraw);
                    accessoryDrawables.setAttribute("max", amaxDraw);
                    var accessoryTextures = document.getElementById("accessoryText");
                    accessoryTextures.setAttribute("value", accessoryText);
                    accessoryTextures.setAttribute("max", amaxTexture);
                    var accessoryTextb = document.getElementById("avaluec");
                    accessoryTextb.setAttribute("value", accessoryDraw);

                    // get kevlar value
                    kevlarDraw = item.clothes.kevlar[0];
                    kevlarText = item.clothes.kevlar[1];
                    kmaxDraw = item.drawables.kevlar
                    kmaxTexture = item.textures.kevlar

                    //document.getElementById('kmaxDraw').innerText = kmaxDraw;
                    //document.getElementById('kmaxTexture').innerText = kmaxTexture;
                   // document.getElementById('kdvalue').innerText = kevlarDraw;
                   // document.getElementById('ktvalue').innerText = kevlarText;

                    var kevlarDrawables = document.getElementById("kevlarDraw");
                    kevlarDrawables.setAttribute("value", kevlarDraw);
                    kevlarDrawables.setAttribute("max", kmaxDraw);
                    var kevlarTextures = document.getElementById("kevlarText");
                    kevlarTextures.setAttribute("value", kevlarText);
                    kevlarTextures.setAttribute("max", kmaxTexture);
                    var kevlarTextb = document.getElementById("kvaluec");
                    kevlarTextb.setAttribute("value", kevlarDraw);

                    // get badge value
                    badgeDraw = item.clothes.badge[0];
                    badgeText = item.clothes.badge[1];
                    b2maxDraw = item.drawables.badge
                    b2maxTexture = item.textures.badge

                    //document.getElementById('b2maxDraw').innerText = b2maxDraw;
                   // document.getElementById('b2maxTexture').innerText = b2maxTexture;
                   // document.getElementById('b2dvalue').innerText = badgeDraw;
                  //  document.getElementById('b2tvalue').innerText = badgeText;

                    var badgeDrawables = document.getElementById("badgeDraw");
                    badgeDrawables.setAttribute("value", badgeDraw);
                    badgeDrawables.setAttribute("max", b2maxDraw);
                    var badgeTextures = document.getElementById("badgeText");
                    badgeTextures.setAttribute("value", badgeText);
                    badgeTextures.setAttribute("max", b2maxTexture);
                    var badgeTextb = document.getElementById("b2valuec");
                    badgeTextb.setAttribute("value", badgeDraw);

                    
                    // get mask value
                    maskDraw = item.clothes.mask[0];
                    maskText = item.clothes.mask[1];
                    mmaxDraw = item.drawables.mask
                    mmaxTexture = item.textures.mask

                   // document.getElementById('mmaxDraw').innerText = mmaxDraw;
                   // document.getElementById('mmaxTexture').innerText = mmaxTexture;
                   // document.getElementById('mdvalue').innerText = maskDraw;
                   // document.getElementById('mtvalue').innerText = maskText;

                    var maskDrawables = document.getElementById("maskDraw");
                    maskDrawables.setAttribute("value", maskDraw);
                    maskDrawables.setAttribute("max", mmaxDraw);
                    var maskTextures = document.getElementById("maskText");
                    maskTextures.setAttribute("value", maskText);
                    maskTextures.setAttribute("max", mmaxTexture);
                    var maskTextb = document.getElementById("mvaluec");
                    maskTextb.setAttribute("value", maskDraw);

                    // skincolor

                    skinvalue = item.character.skincolor;

                    document.getElementById('skincolorbox').innerText = skinvalue; // Set box eyes value for small brackets

                    var skinrange = document.getElementById("skincolorrange"); // set color eyes value to range
                    skinrange.setAttribute("value", skinvalue);


                    // Eyes
                    eyesvalue = item.character.eyes;

                    document.getElementById('eyescolorbox').innerText = eyesvalue; // Set box eyes value for small brackets

                    var eyesrange = document.getElementById("eyesrange"); // set color eyes value to range
                    eyesrange.setAttribute("value", eyesvalue);
                    var eyescounter = document.getElementById("eyescolorbox"); // set color eyes to small box
                    eyescounter.setAttribute("value", eyesvalue);

                    // blemishes
                    blemishesvalue = item.character.blemishes;

                    document.getElementById('blemishesbox').innerText = blemishesvalue; // Set box eyes value for small brackets

                    var blemishesrange = document.getElementById("blemishesrange"); // set color eyes value to range
                    blemishesrange.setAttribute("value", blemishesvalue);
                    var blemishescounter = document.getElementById("blemishesbox"); // set color eyes to small box
                    blemishescounter.setAttribute("value", blemishesvalue);

                    //facial hair
                    facialhairvalue = item.character.facialhair;

                    document.getElementById('facialhairbox').innerText = facialhairvalue; // Set box eyes value for small brackets

                    var fhrange = document.getElementById("facialhairrange"); // set color eyes value to range
                    fhrange.setAttribute("value", facialhairvalue);
                    var fhbox = document.getElementById("facialhairbox"); // set color eyes to small box
                    fhbox.setAttribute("value", facialhairvalue);

                    //facial hair color

                    facialhaircolorvalue = item.character.facialhaircolor;

                    var fhcolorrange = document.getElementById("facialhaircolorrange"); // set color eyes value to range
                    fhcolorrange.setAttribute("value", facialhaircolorvalue);

                    //eyebrows hair
                    eyebrowsvalue = item.character.eyebrows;

                    document.getElementById('eyebrowsbox').innerText = eyebrowsvalue; // Set box value for small brackets

                    var ebrange = document.getElementById("eyebrowsrange"); // set color value to range
                    ebrange.setAttribute("value", eyebrowsvalue);
                    var ebbox = document.getElementById("eyebrowsbox"); // set color eyes to small box
                    ebbox.setAttribute("value", eyebrowsvalue);

                    //eyebrows color

                    eyebrowscolorvalue = item.character.eyebrowscolor;

                    var ebccolorrange = document.getElementById("eyebrowscolorrange"); // set color value to range
                    ebccolorrange.setAttribute("value", eyebrowscolorvalue);


                    
                    //ageing 

                    ageingvalue = item.character.ageing;

                    document.getElementById('ageingbox').innerText = ageingvalue; // Set box value for small brackets

                    var arange = document.getElementById("ageingrange"); // set color value to range
                    arange.setAttribute("value", ageingvalue);
                    var abox = document.getElementById("ageingbox"); // set color to small box
                    abox.setAttribute("value", ageingvalue);

                    //makeup

                    makeupvalue = item.character.makeup;

                    document.getElementById('makeupbox').innerText = makeupvalue; // Set box value for small brackets

                    var mkuprange = document.getElementById("makeuprange"); // set color value to range
                    mkuprange.setAttribute("value", makeupvalue);
                    var mkupbox = document.getElementById("makeupbox"); // set color to small box
                    mkupbox.setAttribute("value", makeupvalue);

                    //blush

                    blushvalue = item.character.blush;

                    document.getElementById('blushbox').innerText = blushvalue; // Set box value for small brackets

                    var blurange = document.getElementById("blushrange"); // set color value to range
                    blurange.setAttribute("value", blushvalue);
                    var blubox = document.getElementById("blushbox"); // set color to small box
                    blubox.setAttribute("value", blushvalue);

                    blushcolorvalue = item.character.blushcolor; //blush color

                    var blccolorrange = document.getElementById("blushcolorrange"); // set color value to range
                    blccolorrange.setAttribute("value", blushcolorvalue);

                    //complexion

                    complexionvalue = item.character.complexion;

                    document.getElementById('complexionbox').innerText = complexionvalue; // Set box value for small brackets

                    var comrange = document.getElementById("complexionrange"); // set color value to range
                    comrange.setAttribute("value", complexionvalue);
                    var combox = document.getElementById("complexionbox"); // set color to small box
                    combox.setAttribute("value", complexionvalue);

                    //sundamage

                    sundamagevalue = item.character.sundamage;

                    document.getElementById('sundamagebox').innerText = sundamagevalue; // Set box value for small brackets

                    var sundrange = document.getElementById("sundamagerange"); // set color value to range
                    sundrange.setAttribute("value", sundamagevalue);
                    var sundbox = document.getElementById("sundamagebox"); // set color to small box
                    sundbox.setAttribute("value", sundamagevalue);

                    
                    //lipstick

                    lipstickvalue = item.character.lipstick;

                    document.getElementById('lipstickbox').innerText = lipstickvalue; // Set box value for small brackets

                    var lsrange = document.getElementById("lipstickrange"); // set color value to range
                    lsrange.setAttribute("value", lipstickvalue);
                    var lsbox = document.getElementById("lipstickbox"); // set color to small box
                    lsbox.setAttribute("value", lipstickvalue);

                    lipstickcolorvalue = item.character.lipstickcolor; //lipstick color

                    var lsccolorrange = document.getElementById("lipstickcolorrange"); // set color value to range
                    lsccolorrange.setAttribute("value", lipstickcolorvalue);

                    //moles

                    molesvalue = item.character.moles;

                    document.getElementById('molesbox').innerText = molesvalue; // Set box value for small brackets

                    var mlsrange = document.getElementById("molesrange"); // set color value to range
                    mlsrange.setAttribute("value", molesvalue);
                    var mlsbox = document.getElementById("molesbox"); // set color to small box
                    mlsbox.setAttribute("value", molesvalue);

                    //chesthair

                    chesthairvalue = item.character.chesthair;

                    document.getElementById('chesthairbox').innerText = chesthairvalue; // Set box value for small brackets

                    var cthrange = document.getElementById("chesthairrange"); // set color value to range
                    cthrange.setAttribute("value", chesthairvalue);
                    var cthbox = document.getElementById("chesthairbox"); // set color to small box
                    cthbox.setAttribute("value", chesthairvalue);

                    chesthaircolorvalue = item.character.chesthaircolor; //chesthair color

                    var chccolorrange = document.getElementById("chesthaircolorrange"); // set color value to range
                    chccolorrange.setAttribute("value", chesthaircolorvalue);
                    
                    //bodyblemishes

                    bodyblemishesvalue = item.character.bodyblemishes;

                    document.getElementById('bodyblemishesbox').innerText = bodyblemishesvalue; // Set box value for small brackets

                    var bbrange = document.getElementById("bodyblemishesrange"); // set color value to range
                    bbrange.setAttribute("value", bodyblemishesvalue);
                    var bbbox = document.getElementById("bodyblemishesbox"); // set color to small box
                    bbbox.setAttribute("value", bodyblemishesvalue);          
                    
                    // Nose Width

                    Nosewidthvalue = item.face.Nosewidth;

                    document.getElementById('Nosewidthbox').innerText = Nosewidthvalue; // Set box value for small brackets

                    var Nosewidthrange = document.getElementById("Nosewidthrange"); // set color value to range
                    Nosewidthrange.setAttribute("value", Nosewidthvalue);
                    var Nosewidthbox = document.getElementById("Nosewidthbox"); // set color to small box
                    Nosewidthbox.setAttribute("value", Nosewidthvalue);    

                    // Nose Height

                    Noseheightvalue = item.face.Noseheight;

                    document.getElementById('Noseheightbox').innerText = Noseheightvalue; // Set box value for small brackets

                    var Noseheightrange = document.getElementById("Noseheightrange"); // set color value to range
                    Noseheightrange.setAttribute("value", Noseheightvalue);
                    var Noseheightbox = document.getElementById("Noseheightbox"); // set color to small box
                    Noseheightbox.setAttribute("value", Noseheightvalue);    

                    // Nose Length

                    Noselengthvalue = item.face.Noselength;

                    document.getElementById('Noselengthbox').innerText = Noselengthvalue; // Set box value for small brackets

                    var Noselengthrange = document.getElementById("Noselengthrange"); // set color value to range
                    Noselengthrange.setAttribute("value", Noselengthvalue);
                    var Noselengthbox = document.getElementById("Noselengthbox"); // set color to small box
                    Noselengthbox.setAttribute("value", Noselengthvalue);    
                    
                    // Nosebridge

                    Nosebridgevalue = item.face.Nosebridge;

                    document.getElementById('Nosebridgebox').innerText = Nosebridgevalue; // Set box value for small brackets

                    var Nosebridgerange = document.getElementById("Nosebridgerange"); // set color value to range
                    Nosebridgerange.setAttribute("value", Nosebridgevalue);
                    var Nosebridgebox = document.getElementById("Nosebridgebox"); // set color to small box
                    Nosebridgebox.setAttribute("value", Nosebridgevalue);    

                    //Nosetip

                    Nosetipvalue = item.face.Nosetip;

                    document.getElementById('Nosetipbox').innerText = Nosetipvalue; // Set box value for small brackets

                    var Nosetiprange = document.getElementById("Nosetiprange"); // set color value to range
                    Nosetiprange.setAttribute("value", Nosetipvalue);
                    var Nosetipbox = document.getElementById("Nosetipbox"); // set color to small box
                    Nosetipbox.setAttribute("value", Nosetipvalue);  

                    // Nosebridgeshift

                    Nosebridgeshiftvalue = item.face.Nosebridgeshift;

                    document.getElementById('Nosebridgeshiftbox').innerText = Nosebridgeshiftvalue; // Set box value for small brackets

                    var Nosebridgeshiftrange = document.getElementById("Nosebridgeshiftrange"); // set color value to range
                    Nosebridgeshiftrange.setAttribute("value", Nosebridgeshiftvalue);
                    var Nosebridgeshiftbox = document.getElementById("Nosebridgeshiftbox"); // set color to small box
                    Nosebridgeshiftbox.setAttribute("value", Nosebridgeshiftvalue);  

                    // Eyebrowheight

                    Eyebrowheightvalue = item.face.Eyebrowheight;

                    document.getElementById('Eyebrowheightbox').innerText = Eyebrowheightvalue; // Set box value for small brackets

                    var Eyebrowheightrange = document.getElementById("Eyebrowheightrange"); // set color value to range
                    Eyebrowheightrange.setAttribute("value", Eyebrowheightvalue);
                    var Eyebrowheightbox = document.getElementById("Eyebrowheightbox"); // set color to small box
                    Eyebrowheightbox.setAttribute("value", Eyebrowheightvalue);  

                    // Eyerowwidth

                    Eyerowwidthvalue = item.face.Eyerowwidth;

                    document.getElementById('Eyerowwidthbox').innerText = Eyerowwidthvalue; // Set box value for small brackets

                    var Eyerowwidthrange = document.getElementById("Eyerowwidthrange"); // set color value to range
                    Eyerowwidthrange.setAttribute("value", Eyerowwidthvalue);
                    var Eyerowwidthbox = document.getElementById("Eyerowwidthbox"); // set color to small box
                    Eyerowwidthbox.setAttribute("value", Eyerowwidthvalue);  

                    // Cheekboneheight

                    Cheekboneheightvalue = item.face.Cheekboneheight;

                    document.getElementById('Cheekboneheightbox').innerText = Cheekboneheightvalue; // Set box value for small brackets

                    var Cheekboneheightrange = document.getElementById("Cheekboneheightrange"); // set color value to range
                    Cheekboneheightrange.setAttribute("value", Cheekboneheightvalue);
                    var Cheekboneheightbox = document.getElementById("Cheekboneheightbox"); // set color to small box
                    Cheekboneheightbox.setAttribute("value", Cheekboneheightvalue);  

                    //Cheekbonewidth

                    Cheekbonewidthvalue = item.face.Cheekbonewidth;

                    document.getElementById('Cheekbonewidthbox').innerText = Cheekbonewidthvalue; // Set box value for small brackets

                    var Cheekbonewidthrange = document.getElementById("Cheekbonewidthrange"); // set color value to range
                    Cheekbonewidthrange.setAttribute("value", Cheekbonewidthvalue);
                    var Cheekbonewidthbox = document.getElementById("Cheekbonewidthbox"); // set color to small box
                    Cheekbonewidthbox.setAttribute("value", Cheekbonewidthvalue);    
                    

                    //Cheekswidth

                    Cheekswidthvalue = item.face.Cheekswidth;

                    document.getElementById('Cheekswidthbox').innerText = Cheekswidthvalue; // Set box value for small brackets

                    var Cheekswidthrange = document.getElementById("Cheekswidthrange"); // set color value to range
                    Cheekswidthrange.setAttribute("value", Cheekswidthvalue);
                    var Cheekswidthbox = document.getElementById("Cheekswidthbox"); // set color to small box
                    Cheekswidthbox.setAttribute("value", Cheekswidthvalue);  

                    //Eyes

                    Eyesvalue = item.face.Eyes;

                    document.getElementById('Eyesbox').innerText = Eyesvalue; // Set box value for small brackets

                    var Eyesrange = document.getElementById("Eyesrange"); // set color value to range
                    Eyesrange.setAttribute("value", Eyesvalue);
                    var Eyesbox = document.getElementById("Eyesbox"); // set color to small box
                    Eyesbox.setAttribute("value", Eyesvalue);  

                    //Lips

                    Lipsvalue = item.face.Lips;

                    document.getElementById('Lipsbox').innerText = Lipsvalue; // Set box value for small brackets

                    var Lipsrange = document.getElementById("Lipsrange"); // set color value to range
                    Lipsrange.setAttribute("value", Lipsvalue);
                    var Lipsbox = document.getElementById("Lipsbox"); // set color to small box
                    Lipsbox.setAttribute("value", Lipsvalue); 
                    
                    
                    //Jawwidth

                    Jawwidthvalue = item.face.Jawwidth;

                    document.getElementById('Jawwidthbox').innerText = Jawwidthvalue; // Set box value for small brackets

                    var Jawwidthrange = document.getElementById("Jawwidthrange"); // set color value to range
                    Jawwidthrange.setAttribute("value", Jawwidthvalue);
                    var Jawwidthbox = document.getElementById("Jawwidthbox"); // set color to small box
                    Jawwidthbox.setAttribute("value", Jawwidthvalue);  

                    //Jawheight

                    Jawheightvalue = item.face.Jawheight;

                    document.getElementById('Jawheightbox').innerText = Jawheightvalue; // Set box value for small brackets

                    var Jawheightrange = document.getElementById("Jawheightrange"); // set color value to range
                    Jawheightrange.setAttribute("value", Jawheightvalue);
                    var Jawheightbox = document.getElementById("Jawheightbox"); // set color to small box
                    Jawheightbox.setAttribute("value", Jawheightvalue);  

                    //Chinlength

                    Chinlengthvalue = item.face.Chinlength;

                    document.getElementById('Chinlengthbox').innerText = Chinlengthvalue; // Set box value for small brackets

                    var Chinlengthrange = document.getElementById("Chinlengthrange"); // set color value to range
                    Chinlengthrange.setAttribute("value", Chinlengthvalue);
                    var Chinlengthbox = document.getElementById("Chinlengthbox"); // set color to small box
                    Chinlengthbox.setAttribute("value", Chinlengthvalue);  

                    //Chinposition

                    Chinpositionvalue = item.face.Chinposition;

                    document.getElementById('Chinpositionbox').innerText = Chinpositionvalue; // Set box value for small brackets

                    var Chinpositionrange = document.getElementById("Chinpositionrange"); // set color value to range
                    Chinpositionrange.setAttribute("value", Chinpositionvalue);
                    var Chinpositionbox = document.getElementById("Chinpositionbox"); // set color to small box
                    Chinpositionbox.setAttribute("value", Chinpositionvalue);  

                    
                    //Chinwidth

                    Chinwidthvalue = item.face.Chinwidth;

                    document.getElementById('Chinwidthbox').innerText = Chinwidthvalue; // Set box value for small brackets

                    var Chinwidthrange = document.getElementById("Chinwidthrange"); // set color value to range
                    Chinwidthrange.setAttribute("value", Chinwidthvalue);
                    var Chinwidthbox = document.getElementById("Chinwidthbox"); // set color to small box
                    Chinwidthbox.setAttribute("value", Chinwidthvalue);  

                    //Chinshape

                    Chinshapevalue = item.face.Chinshape;

                    document.getElementById('Chinshapebox').innerText = Chinshapevalue; // Set box value for small brackets

                    var Chinshaperange = document.getElementById("Chinshaperange"); // set color value to range
                    Chinshaperange.setAttribute("value", Chinshapevalue);
                    var Chinshapebox = document.getElementById("Chinshapebox"); // set color to small box
                    Chinshapebox.setAttribute("value", Chinshapevalue);  

                    //Neckwidth

                    Neckwidthvalue = item.face.Neckwidth;

                    document.getElementById('Neckwidthbox').innerText = Neckwidthvalue; // Set box value for small brackets

                    var Neckwidthrange = document.getElementById("Neckwidthrange"); // set color value to range
                    Neckwidthrange.setAttribute("value", Neckwidthvalue);
                    var Neckwidthbox = document.getElementById("Neckwidthbox"); // set color to small box
                    Neckwidthbox.setAttribute("value", Neckwidthvalue);  

 
                
                

                    // heading
                    heading = item.heading

                    var headingDirection = document.getElementById("rotate");
                    headingDirection.setAttribute("value", heading);
                

                } 
            
                else if (item.window == "ui2") {
                    display("charselection")
                    controls = "ui2"
                    var item = event.data;
                    characters = item.characters
                    setCharacterElements(characters)

                }
                else if (item.window == "ui3") {
                    display("charselection")

                }
            
            }
            else
            display(false)
    
        }

})



function setCharacterElements(characters) {

    var tableRows = '';

    characters.forEach((character) => {
    tableRows += `<div class="row">
    <div class="col">
    <div id="slot">
        
    <label class="font-weight-bold" for="titles" id="subject">Name: ${character.FirstName} ${character.LastName} </label><br>
    <label class="font-weight-bold" for="titles" id="subject">Age: ${character.Age} </label><br>
    <label class="font-weight-bold" for="titles" id="subject">CK:</label><br>
    <button id="play" type="button" onclick="setCharacter(${character.charId})" class="btn btn-secondary">Play</button>
        </div>
    </div>      
    </div>`
    });
    
    document.getElementById('container2').innerHTML = tableRows;

    }


 
  


$("#create").click(function () {
    if (controls == "ui2") {
    display(false)
    display("chardetails")
    return
    }
})



$("#submit").click(function () {

    var firstname = document.getElementById("cfname").value;
    var lastname = document.getElementById("clname").value;
    var age = document.getElementById("cage").value;
    var gender = document.getElementById("gender").value;

    if(cfname.value===""){
        fnameError.innerHTML="Please enter your character first name";
        setTimeout(()=>{
         fnameError.innerHTML="";
        }, 2000);
     }
     else if(clname.value===""){
         lnameError.innerHTML="Please enter your character last name";
         setTimeout(()=>{
             lnameError.innerHTML="";
            }, 2000);
     }
     else if(cage.value===""){
         AgeError.innerHTML="Please enter your characters age";
         setTimeout(()=>{
             AgeError.innerHTML="";
            }, 2000);
     }
     else {
        $.post('http://vn_clothing/charinfo', JSON.stringify({

    firstname,
    lastname,
    age,
    gender

    }));
    display(false)
    return
}
 });







// Sliders Changing outputs

// hat
    $("#hatDraw").bind("input", function() {
        if (controls == "ui1") {
        var drawable = document.getElementById("hatDraw").value;
        var texture = 0;
        var componentId = 0;
        document.getElementById('hatDraw').value = drawable;
        var index = true;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
            index
        }));
    }
    });    

    $("#hatText").bind("input", function() {
        if (controls == "ui1") {
        var drawable = document.getElementById("hatDraw").value;
        var texture = document.getElementById("hatText").value;
        var componentId = 0;
        var index = true;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
            index
        }));
    }
    });    

    $("#hvaluec").bind("input", function() {
        if (controls == "ui1") {
        var drawable = document.getElementById("hvaluec").value;
        var texture = 0;
        var componentId = 0;
        document.getElementById('hvaluec').innerText = drawable;

        var index = true;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
            index
        }));
    }
    });    

    //hair

    $("#hairDraw").bind("input", function() {
        var drawable = document.getElementById("hairDraw").value;
        var texture = 0;
        var componentId = 2;
        var hair = true;
        document.getElementById('hairDraw').value = drawable;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
            hair
        }));
    });    

    $("#hairText").bind("input", function() {
        var drawable = document.getElementById("hairDraw").value;
        var texture = document.getElementById("hairText").value;
        var componentId = 2;
        var hair = true;
        $.post('http://vn_clothing/changehair', JSON.stringify({
            drawable,
            texture,
            componentId,
            hair,
        }));
    });    

    $("#hairvaluec").bind("input", function() {
        var drawable = document.getElementById("hairvaluec").value;
        var texture = 0;
        var componentId = 2;
        document.getElementById('hairvaluec').innerText = drawable;
        var hair = true;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
            hair
        }));
    });    
    


    // glasses

    $("#glassesDraw").bind("input", function() {
        var drawable = document.getElementById("glassesDraw").value;
        var texture = 0;
        var componentId = 1;
        var index = true;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
            index
        }));
    });    

    $("#glassesText").bind("input", function() {
        var drawable = document.getElementById("glassesDraw").value;
        var texture = document.getElementById("glassesText").value;
        var componentId = 1;
        var index = true;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
            index
        }));
    });    

    $("#gvaluec").bind("input", function() {
        var drawable = document.getElementById("gvaluec").value;
        var texture = 0;
        var componentId = 1;
        var index = true;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
            index
        }));
    });    


        // ears

        $("#earsDraw").bind("input", function() {
            var drawable = document.getElementById("earsDraw").value;
            var texture = 0;
            var componentId = 2;
            var index = true;
    
            $.post('http://vn_clothing/changeclothing', JSON.stringify({
                drawable,
                texture,
                componentId,
                index
            }));
        });    
    
        $("#earsText").bind("input", function() {
            var drawable = document.getElementById("earsDraw").value;
            var texture = document.getElementById("earsText").value;
            var componentId = 2;
            var index = true;
    
            $.post('http://vn_clothing/changeclothing', JSON.stringify({
                drawable,
                texture,
                componentId,
                index
            }));
        });    

        $("#evaluec").bind("input", function() {
            var drawable = document.getElementById("evaluec").value;
            var texture = 0;
            var componentId = 2;
            var index = true;
    
            $.post('http://vn_clothing/changeclothing', JSON.stringify({
                drawable,
                texture,
                componentId,
                index
            }));
        });    


    //torso2

    $("#torso2Draw").bind("input", function() {
        var drawable = document.getElementById("torso2Draw").value;
        var texture = 0;
        var componentId = 11;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    $("#torso2Text").bind("input", function() {
        var drawable = document.getElementById("torso2Draw").value;
        var texture = document.getElementById("torso2Text").value;
        var componentId = 11;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    $("#t2valuec").bind("input", function() {
        var drawable = document.getElementById("t2valuec").value;
        var texture = 0;
        var componentId = 11;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
        }));
    });    


    //torso

    $("#torsoDraw").bind("input", function() {
        var drawable = document.getElementById("torsoDraw").value;
        var texture = 0;
        var componentId = 3;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    $("#torsoText").bind("input", function() {
        var drawable = document.getElementById("torsoDraw").value;
        var texture = document.getElementById("torsoText").value;
        var componentId = 3;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    $("#tvaluec").bind("input", function() {
        var drawable = document.getElementById("tvaluec").value;
        var texture = 0;
        var componentId = 3;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
        }));
    });    

        //undershirt

    $("#undershirtDraw").bind("input", function() {
        var drawable = document.getElementById("undershirtDraw").value;
        var texture = 0;
        var componentId = 8;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    $("#undershirtText").bind("input", function() {
        var drawable = document.getElementById("undershirtDraw").value;
        var texture = document.getElementById("undershirtText").value;
        var componentId = 8;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    $("#uvaluec").bind("input", function() {
        var drawable = document.getElementById("uvaluec").value;
        var texture = 0;
        var componentId = 8;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
        }));
    }); 

    // watches

    $("#watchDraw").bind("input", function() {
        var drawable = document.getElementById("watchDraw").value;
        var texture = 0;
        var componentId = 6;
        var index = true;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
            index
        }));
    });    

    $("#watchText").bind("input", function() {
        var drawable = document.getElementById("watchDraw").value;
        var texture = document.getElementById("watchText").value;
        var componentId = 6;
        var index = true;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
            index
        }));
    });  
    
    $("#wvaluec").bind("input", function() {
        var drawable = document.getElementById("wvaluec").value;
        var texture = 0;
        var componentId = 6;
        var index = true;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
            index
        }));
    }); 

       // bracelet

       $("#braceletDraw").bind("input", function() {
        var drawable = document.getElementById("braceletDraw").value;
        var texture = 0;
        var componentId = 7;
        var index = true;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
            index
        }));
    });    

    $("#braceletText").bind("input", function() {
        var drawable = document.getElementById("braceletDraw").value;
        var texture = document.getElementById("braceletText").value;
        var componentId = 7;
        var index = true;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
            index
        }));
    });    

    $("#bvaluec").bind("input", function() {
        var drawable = document.getElementById("bvaluec").value;
        var texture = 0;
        var componentId = 7;
        var index = true;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
            index
        }));
    }); 


    //pants

    $("#pantsDraw").bind("input", function() {
        var drawable = document.getElementById("pantsDraw").value;
        var texture = 0;
        var componentId = 4;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    $("#pantsText").bind("input", function() {
        var drawable = document.getElementById("pantsDraw").value;
        var texture = document.getElementById("pantsText").value;
        var componentId = 4;
        
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    $("#pvaluec").bind("input", function() {
        var drawable = document.getElementById("pvaluec").value;
        var texture = 0;
        var componentId = 4;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
        }));
    }); 

    // shoes

    $("#shoesDraw").bind("input", function() {
        var drawable = document.getElementById("shoesDraw").value;
        var texture = 0;
        var componentId = 6;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    $("#shoesText").bind("input", function() {
        var drawable = document.getElementById("shoesDraw").value;
        var texture = document.getElementById("shoesText").value;
        var componentId = 6;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    
    $("#svaluec").bind("input", function() {
        var drawable = document.getElementById("svaluec").value;
        var texture = 0;
        var componentId = 6;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
        }));
    }); 


    // parachute

    $("#parachuteDraw").bind("input", function() {
        var drawable = document.getElementById("parachuteDraw").value;
        var texture = 0;
        var componentId = 5;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    $("#parachuteText").bind("input", function() {
        var drawable = document.getElementById("parachuteDraw").value;
        var texture = document.getElementById("parachuteText").value;
        var componentId = 5;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    
    $("#p2valuec").bind("input", function() {
        var drawable = document.getElementById("p2valuec").value;
        var texture = 0;
        var componentId = 5;

        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
        }));
    }); 


    //accessory

    $("#accessoryDraw").bind("input", function() {
        var drawable = document.getElementById("accessoryDraw").value;
        var texture = 0;
        var componentId = 7;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    $("#accessoryText").bind("input", function() {
        var drawable = document.getElementById("accessoryDraw").value;
        var texture = document.getElementById("accessoryText").value;
        var componentId = 7;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    
    $("#avaluec").bind("input", function() {
        var drawable = document.getElementById("avaluec").value;
        var texture = 0;
        var componentId = 7;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
        }));
    }); 


    // kevlar

    $("#kevlarDraw").bind("input", function() {
        var drawable = document.getElementById("kevlarDraw").value;
        var texture = 0;
        var componentId = 9;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    $("#kevlarText").bind("input", function() {
        var drawable = document.getElementById("kevlarDraw").value;
        var texture = document.getElementById("kevlarText").value;
        var componentId = 9;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    
    $("#kvaluec").bind("input", function() {
        var drawable = document.getElementById("kvaluec").value;
        var texture = 0;
        var componentId = 9;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
        }));
    }); 


        // mask

    $("#maskDraw").bind("input", function() {
        var drawable = document.getElementById("maskDraw").value;
        var texture = 0;
        var componentId = 1;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    $("#maskText").bind("input", function() {
        var drawable = document.getElementById("maskDraw").value;
        var texture = document.getElementById("maskText").value;
        var componentId = 1;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    
    $("#mvaluec").bind("input", function() {
        var drawable = document.getElementById("mvaluec").value;
        var texture = 0;
        var componentId = 1;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
        }));
    }); 


        // badge

    $("#badgeDraw").bind("input", function() {
        var drawable = document.getElementById("badgeDraw").value;
        var texture = 0;
        var componentId = 10;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    $("#badgeText").bind("input", function() {
        var drawable = document.getElementById("badgeDraw").value;
        var texture = document.getElementById("badgeText").value;
        var componentId = 10;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId
        }));
    });    

    
    $("#b2valuec").bind("input", function() {
        var drawable = document.getElementById("b2valuec").value;
        var texture = 0;
        var componentId = 10;
        $.post('http://vn_clothing/changeclothing', JSON.stringify({
            drawable,
            texture,
            componentId,
        }));
    }); 



    // heading 

    $("#rotate").bind("input", function() {
        var pheading = document.getElementById("rotate").value;
        $.post('http://vn_clothing/rotate', JSON.stringify({
        pheading

        }));
    });    

    //eyes

    $("#eyesrange").bind("input", function() {
        var eyescolor = document.getElementById("eyesrange").value;
        $.post('http://vn_clothing/changeeyes', JSON.stringify({
        eyescolor

        }));
    });    

    $("#eyescolorbox").bind("input", function() {
        var eyescolor = document.getElementById("eyescolorbox").value;
        $.post('http://vn_clothing/changeeyes', JSON.stringify({
        eyescolor

        }));
    });    

    //skincolor

    $("#skincolorrange").bind("input", function() {
        var scale = document.getElementById("skincolorrange").value;
        $.post('http://vn_clothing/changeskincolor', JSON.stringify({
            scale

        }));
    });    

    $("#skincolorbox").bind("input", function() {
        var scale = document.getElementById("skincolorbox").value;
        $.post('http://vn_clothing/changeskincolor', JSON.stringify({
            scale

        }));
    });    

//blemish
    $("#blemishesrange").bind("input", function() {
        var index = document.getElementById("blemishesrange").value;
        overlayId = 0
        $.post('http://vn_clothing/changeoverlay', JSON.stringify({
            index,
            overlayId

        }));
    });    
    $("#blemishesbox").bind("input", function() {
        var index = document.getElementById("blemishesbox").value;
        overlayId = 0
        $.post('http://vn_clothing/changeoverlay', JSON.stringify({
            index,
            overlayId

        }));
    });    

    //facilahir

    $("#facialhairrange").bind("input", function() {
        var index = document.getElementById("facialhairrange").value;
        overlayId = 1
        $.post('http://vn_clothing/changeoverlay', JSON.stringify({
            index,
            overlayId

        }));
    });    

    $("#facialhairbox").bind("input", function() {
        var index = document.getElementById("facialhairbox").value;
        overlayId = 1
        $.post('http://vn_clothing/changeoverlay', JSON.stringify({
            index,
            overlayId

        }));
    });    

    //facial ahir color


    $("#facialhaircolorrange").bind("input", function() {
        var index = document.getElementById("facialhaircolorrange").value;
        overlayId = 1
        $.post('http://vn_clothing/changeoverlaycolor', JSON.stringify({
            index,
            overlayId

        }));
    });      

    //eyebrows

    $("#eyebrowsrange").bind("input", function() {
        var index = document.getElementById("eyebrowsrange").value;
        overlayId = 2
        $.post('http://vn_clothing/changeoverlay', JSON.stringify({
            index,
            overlayId

        }));
    });    

    $("#eyebrowsbox").bind("input", function() {
        var index = document.getElementById("eyebrowsbox").value;
        overlayId = 2
        $.post('http://vn_clothing/changeoverlay', JSON.stringify({
            index,
            overlayId

        }));
    });    

    //eyebrows color


    $("#eyebrowscolorrange").bind("input", function() {
        var index = document.getElementById("eyebrowscolorrange").value;
        overlayId = 2
        $.post('http://vn_clothing/changeoverlaycolor', JSON.stringify({
            index,
            overlayId

        }));
    });    

    $("#eyebrowscolorbox").bind("input", function() {
        var index = document.getElementById("eyebrowscolorbox").value;
        overlayId = 2
        $.post('http://vn_clothing/changeoverlaycolor', JSON.stringify({
            index,
            overlayId

        }));
    });    

       //ageing


       $("#ageingrange").bind("input", function() {
        var index = document.getElementById("ageingrange").value;
        overlayId = 3
        $.post('http://vn_clothing/changeoverlay', JSON.stringify({
            index,
            overlayId

        }));
    });    

    $("#ageingbox").bind("input", function() {
        var index = document.getElementById("ageingsbox").value;
        overlayId = 3
        $.post('http://vn_clothing/changeoverlay', JSON.stringify({
            index,
            overlayId

        }));
    });    

           //makeup


           $("#makeuprange").bind("input", function() {
            var index = document.getElementById("makeuprange").value;
            overlayId = 4
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    
    
        $("#makeupbox").bind("input", function() {
            var index = document.getElementById("makeupbox").value;
            overlayId = 4
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    

            //makeup


            $("#blushrange").bind("input", function() {
            var index = document.getElementById("blushrange").value;
            overlayId = 5
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    
    
        $("#blushbox").bind("input", function() {
            var index = document.getElementById("blushbox").value;
            overlayId = 5
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    

        $("#blushcolorrange").bind("input", function() {
            var index = document.getElementById("blushcolorrange").value;
            overlayId = 5
            $.post('http://vn_clothing/changeoverlaycolor', JSON.stringify({
                index,
                overlayId
    
            }));
        });    

        //complexion

        $("#complexionrange").bind("input", function() {
            var index = document.getElementById("complexionrange").value;
            overlayId = 6
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    
    
        $("#complexionhbox").bind("input", function() {
            var index = document.getElementById("complexionbox").value;
            overlayId = 6
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    

        //sundamange

        $("#sundamagerange").bind("input", function() {
            var index = document.getElementById("sundamagerange").value;
            overlayId = 7
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    
    
        $("#sundamangebox").bind("input", function() {
            var index = document.getElementById("sundamangebox").value;
            overlayId = 7
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    

        //lipstick

        $("#lipstickrange").bind("input", function() {
            var index = document.getElementById("lipstickrange").value;
            overlayId = 8
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    
    
        $("#lipstickbox").bind("input", function() {
            var index = document.getElementById("lipstickbox").value;
            overlayId = 8
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    

        $("#lipstickcolorrange").bind("input", function() {
            var index = document.getElementById("lipstickcolorrange").value;
            overlayId = 8
            $.post('http://vn_clothing/changeoverlaycolor', JSON.stringify({
                index,
                overlayId
    
            }));
        });    

        //moles

        $("#molesrange").bind("input", function() {
            var index = document.getElementById("molesrange").value;
            overlayId = 9
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    
    
        $("#molesbox").bind("input", function() {
            var index = document.getElementById("molesbox").value;
            overlayId = 9
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    

        //chesthair

        $("#chesthairrange").bind("input", function() {
            var index = document.getElementById("chesthairrange").value;
            overlayId = 10
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    
    
        $("#chesthairbox").bind("input", function() {
            var index = document.getElementById("chesthairbox").value;
            overlayId = 10
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    

        $("#chesthaircolorrange").bind("input", function() {
            var index = document.getElementById("chesthaircolorrange").value;
            overlayId = 10
            $.post('http://vn_clothing/changeoverlaycolor', JSON.stringify({
                index,
                overlayId
    
            }));
        });    

        //bodyblemishes
        
        $("#bodyblemishesrange").bind("input", function() {
            var index = document.getElementById("bodyblemishesrange").value;
            overlayId = 11
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    

        $("#bodyblemishesbox").bind("input", function() {
            var index = document.getElementById("bodyblemishesbox").value;
            overlayId = 11
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    

        $("#bodyblemishesrange").bind("input", function() {
            var index = document.getElementById("bodyblemishesrange").value;
            overlayId = 11
            $.post('http://vn_clothing/changeoverlay', JSON.stringify({
                index,
                overlayId
    
            }));
        });    

        //Nose width

        $("#Nosewidthbox").bind("input", function() {
            var scale = document.getElementById("Nosewidthbox").value;
            index = 0
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    

        $("#Nosewidthrange").bind("input", function() {
            var scale = document.getElementById("Nosewidthrange").value;
            index = 0
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    

        
        //Nose height

        $("#Noseheightbox").bind("input", function() {
            var scale = document.getElementById("Noseheightbox").value;
            index = 1
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    

        $("#Noseheightrange").bind("input", function() {
            var scale = document.getElementById("Noseheightrange").value;
            index = 1
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    

        
        //Noselengt

        $("#Noselengthbox").bind("input", function() {
            var scale = document.getElementById("Noselengthbox").value;
            index = 2
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    

        $("#Noselengthrange").bind("input", function() {
            var scale = document.getElementById("Noselengthrange").value;
            index = 2
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    


        
        //Nosebridgebox

        $("#Nosebridgebox").bind("input", function() {
            var scale = document.getElementById("Nosebridgebox").value;
            index = 3
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    

        $("#Nosebridgerange").bind("input", function() {
            var scale = document.getElementById("Nosebridgerange").value;
            index = 3
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    


        
        //Nose tip

        $("#Nosetipbox").bind("input", function() {
            var scale = document.getElementById("Nosetipbox").value;
            index = 4
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    

        $("#Nosetiprange").bind("input", function() {
            var scale = document.getElementById("Nosetiprange").value;
            index = 4
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    

        //Nosebridgeshift

        $("#Nosebridgeshiftbox").bind("input", function() {
            var scale = document.getElementById("Nosebridgeshiftbox").value;
            index = 5
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

        $("#Nosebridgeshiftrange").bind("input", function() {
            var scale = document.getElementById("Nosebridgeshiftrange").value;
            index = 5
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

        //Eyebrowheight

        $("#Eyebrowheightbox").bind("input", function() {
            var scale = document.getElementById("Eyebrowheightbox").value;
            index = 6
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

        $("#Eyebrowheightrange").bind("input", function() {
            var scale = document.getElementById("Eyebrowheightrange").value;
            index = 6
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

                    //Eyerowwidth

        $("#Eyerowwidthbox").bind("input", function() {
            var scale = document.getElementById("Eyerowwidthbox").value;
            index = 7
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

        $("#Eyerowwidthrange").bind("input", function() {
            var scale = document.getElementById("Eyerowwidthrange").value;
            index = 7
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

        //Cheekboneheight

        $("#Cheekboneheightbox").bind("input", function() {
            var scale = document.getElementById("Cheekboneheightbox").value;
            index = 8
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

        $("#Cheekboneheightrange").bind("input", function() {
            var scale = document.getElementById("Cheekboneheightrange").value;
            index = 8
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        }); 

        //Cheekbonewidth

        $("#Cheekbonewidthbox").bind("input", function() {
            var scale = document.getElementById("Cheekbonewidthbox").value;
            index = 9
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

        $("#Cheekbonewidthrange").bind("input", function() {
            var scale = document.getElementById("Cheekbonewidthrange").value;
            index = 9
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });  

        //Eyerowwidth

        $("#Cheekswidthbox").bind("input", function() {
            var scale = document.getElementById("Cheekswidthbox").value;
            index = 10
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

        $("#Cheekswidthrange").bind("input", function() {
            var scale = document.getElementById("Cheekswidthrange").value;
            index = 10
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

       //Eyes

       $("#Eyesbox").bind("input", function() {
            var scale = document.getElementById("Eyesbox").value;
            index = 11
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

        $("#Eyesrange").bind("input", function() {
            var scale = document.getElementById("Eyesrange").value;
            index = 11
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

        //lips

        $("#Lipsbox").bind("input", function() {
            var scale = document.getElementById("Lipsbox").value;
            index = 12
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

        $("#Lipsrange").bind("input", function() {
            var scale = document.getElementById("Lipsrange").value;
            index = 12
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

                            //jaw width

        $("#Jawwidthbox").bind("input", function() {
            var scale = document.getElementById("Jawwidthbox").value;
            index = 13
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

        $("#Jawwidthrange").bind("input", function() {
            var scale = document.getElementById("Jawwidthrange").value;
            index = 13
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index

            }));
        });    

           //Jawheight

        $("#Jawheightbox").bind("input", function() {
            var scale = document.getElementById("Jawheightbox").value;
            index = 14
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    
    
        $("#Jawheightrange").bind("input", function() {
            var scale = document.getElementById("Jawheightrange").value;
            index = 14
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    

            //Jawheight

            $("#JChinlengthbox").bind("input", function() {
            var scale = document.getElementById("Chinlengthbox").value;
            index = 15
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    
    
        $("#Jawheightrange").bind("input", function() {
            var scale = document.getElementById("Jawheightrange").value;
            index = 15
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    
    
                            //Chinpositionn
    
            $("#Chinpositionbox").bind("input", function() {
            var scale = document.getElementById("Chinpositionbox").value;
            index = 16
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    
    
        $("#Chinpositionrange").bind("input", function() {
            var scale = document.getElementById("Chinpositionrange").value;
            index = 16
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    

        //Chinwidth

        $("#Chinwidthbox").bind("input", function() {
            var scale = document.getElementById("Chinwidthbox").value;
            index = 17
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    
    
        $("#Chinwidthrange").bind("input", function() {
            var scale = document.getElementById("Chinwidthrange").value;
            index = 17
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    

        //Chinpositionn

        $("#Chinshapebox").bind("input", function() {
            var scale = document.getElementById("Chinshapebox").value;
            index = 18
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    
    
        $("#Chinshaperange").bind("input", function() {
            var scale = document.getElementById("Chinshaperange").value;
            index = 18
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    

        //neck width

        $("#Neckwidthbox").bind("input", function() {
            var scale = document.getElementById("Neckwidthbox").value;
            index = 19
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    
    
        $("#Neckwidthrange").bind("input", function() {
            var scale = document.getElementById("Neckwidthrange").value;
            index = 19
            $.post('http://vn_clothing/changefacefeature', JSON.stringify({
                scale,
                index
    
            }));
        });    



    // if the person uses the escape key, it will exit the resource
    document.onkeyup = function (data) {
        if (data.which == 27) {
            $.post('http://vn_clothing/exit', JSON.stringify({}));
            return
        }
    };
    $("#close").click(function () {
        $.post('http://vn_clothing/exit', JSON.stringify({}));
        return
    })

    $("#clear").click(function () {
        $.post('http://vn_clothing/clearped', JSON.stringify({}));
        return
    })

    $("#clearhead").click(function () {
        $.post('http://vn_clothing/clearhead', JSON.stringify({}));
        return
    })

    $("#clearclothing").click(function () {
        $.post('http://vn_clothing/clearclothing', JSON.stringify({}));
        return
    })

    $("#clearaccessories").click(function () {
        $.post('http://vn_clothing/clearaccessories', JSON.stringify({}));
        return
    })

    $("#clearface").click(function () {
        $.post('http://vn_clothing/clearface', JSON.stringify({}));
        return
    })

    $("#clearfacials").click(function () {
        $.post('http://vn_clothing/clearfacials', JSON.stringify({}));
        return
    })

    $("#clothingstab").click(function () {
        $.post('http://vn_clothing/setcamclothing', JSON.stringify({}));
        return
    })

    $("#otherstab").click(function () {
        $.post('http://vn_clothing/setcamothers', JSON.stringify({}));
        return
    })

    $("#headtab").click(function () {
        $.post('http://vn_clothing/setcamhead', JSON.stringify({}));
        return
    })

    $("#facetab").click(function () {
        $.post('http://vn_clothing/setcamhead', JSON.stringify({}));
        return
    })

    $("#facialtab").click(function () {
        $.post('http://vn_clothing/setcamhead', JSON.stringify({}));
        return
    })

    $("#facialtab2").click(function () {
        $.post('http://vn_clothing/setcamhead', JSON.stringify({}));
        return
    })

    $("#purchase").click(function () {
        $.post('http://vn_clothing/confirm', JSON.stringify({}));
        return
    })



    




    
    //when the user clicks on the submit button, it will run
   /*  $("#submit").click(function () {
        let inputValue = $("#input").val()
        if (inputValue.length >= 255) {
            $.post("http://vn_clothing/error", JSON.stringify({
                error: "Input was greater than 255"
            }))
            return
        } else if (!inputValue) {
            $.post("http://vn_clothing/error", JSON.stringify({
                error: "There was no value in the input field"
            }))
            return
        }
        // if there are no errors from above, we can send the data back to the original callback and hanndle it from there
        $.post('http://vn_clothing/main', JSON.stringify({
            text: inputValue,
        }));
        return;
    }) */
})


window.addEventListener("keydown", function (event) {
    if (event.defaultPrevented) {
      return; // Do nothing if the event was already processed
    }
  
    switch (event.key) {
      case "ArrowDown":

        break;
      case "ArrowUp":

        break;
      case "ArrowLeft":

        var pheading = 20;
        $.post('http://vn_clothing/rotateArrow', JSON.stringify({
        pheading

        }));
        break;
      case "ArrowRight":

        var pheading = -20;
        $.post('http://vn_clothing/rotateArrow', JSON.stringify({
        pheading

        }));
        
        break;
      default:
        return; // Quit when this doesn't handle the key event.
    }
  
    // Cancel the default action to avoid it being handled twice
    event.preventDefault();
  }, true);



