class Texto {
  PFont gotica;
  String [] textos;
  int numero;
  Texto() {
    textos = new String [60];
    textos [1] = "Alaila y Ellie se encuentran en el\n centro para su primera cita";
    textos [2] = "ALAILA:\n(Fiuf, llegué quince minutos antes, quizá es \ndemasiado temprano...\nespero que Ellie no crea que estoy \ndesesperada.)";
    textos [3] = "ALAILA:\n(¡Ah! ¡Ahí está!)";
    textos [4] = "ELLIE:\nAli, hola! Te veo muy arreglada\n¿Estás lista para la cita de hoy?";
    textos [5] = "ALAILA:\n ¡S-sí!\n(Wow, Ellie está muy linda hoy, quizá debería \nhacerle un cumplido)";
    textos [6] = "";
    textos [7] = "ALAILA:\nSi la grasa fuese oro, tu serías un tesoro.";
    textos [8] = "ELLIE:\nEso no es gracioso.";
    textos [9] = "";
    textos [10] = "ALAILA:\nDale, fue gracioso, no seas mala onda.";
    textos [11] = "ELLIE:\nBueno, ¡para mi no fue gracioso!";
    textos [12] = "ELLIE:\nEs obvio que no te estás tomando esta cita en serio.\nMejor dejémoslo para otro día.";
    textos [13] = "ALAILA:\nEllie, ¡esperá!";
    textos [14] = "ELLIE:\nNos vemos Alaila.";
    textos [15] = "";
    textos [16] = "ALAILA:\nPerdón,creí que iba a ser gracioso.\nPero es verdad, fue de mal gusto...";
    textos [17] = "ELLIE:\nNo pasa nada, ahora lo sabés para la próxima.";
    textos [18] = "ELLIE:\nBueno, decime ¿dónde tenías pensado ir?";
    textos [19] = "";
    textos [20] ="ALAILA:\nSos como la ojota de mi mamá,\nte veo venir y se me acelera el corazón.";
    textos [21] ="ELLIE:\nJajajajajajajaja, ¿De dónde sacaste ese piropo?";
    textos [22] ="ALAILA:\nEh... online, estuve toda la noche investigando.";
    textos [23] ="ELLIE:\nJajajaja, agradezco el esfuerzo.";
    textos [24] ="ALAILA:\nEstás muy linda hoy Ellie...";
    textos [25] ="ALAILA:\nBueno- ¡Siempre te ves muy linda! solo que\nhoy estás... más linda.\n(Dios, por qué es tan dificil hacer un cumplido)";
    textos [26] ="ELLIE:\nJajaja, siempre sos tan sincera, es muy tierno.\nGracias, vos también estás muy linda.";
    textos [27] ="ALAILA:\nEn realidad, no pensé a dónde ir...";
    textos [28] ="ELLIE:\nUgh, ¿en serio no planeaste nada?";
    textos [29] ="ALAILA:\nLa verdad, ayer estaba tan nerviosa\nque no planee nada.";
    textos [30] ="ELLIE:\nJaja, no pasa nada. ¿Qué te parece si vamos a \nla plaza?";
    textos [31] ="ALAILA:\n¡Me encantaría!";
    textos [32] ="Alaila y Ellie van a la plaza";
    textos [33] ="";
    textos [34] ="ALAILA:\n¿Qué tal si vamos a la plaza?\nHoy es un muy lindo día.";
    textos [35] ="ELLIE:\nMe parece perfecto, vayamos.";
    textos [36] ="ALAILA:\nHay una cafetería que abrió hace poco cerca,\nvi las reviews online y todos dicen que\nes muy linda.";
    textos [37] ="ELLIE:\nWow, ¡estuviste estudiando!";
    textos [38] ="ELLIE:\nBueno, vamos para allá entonces.";
    textos [39] ="Alaila y Ellie van a la cafetería.";
    textos [40] ="Ambas se quedaron hablando por mucho\ntiempo, sin darse cuenta que se\nestaba haciendo tarde.";
    textos [41] ="ALAILA:\njajajaj, sí, entonces dijo:'dejé las cosas en la\nfarmacia y me fui a comprar\nplata'.";
    textos [42] ="ELLIE:\n¡jajajajaja!";
    textos [43] ="ALAILA:\nPobre Nol, jajaja...¡ah! ¡está re oscuro afuera!\n¿Se hizo tan tarde?";
    textos [44] ="ELLIE:\nEs verdad... la estaba pasando tan bien\n que no me había dado cuenta.";
    textos [45] ="ELLIE:\n¿Vamos volviendo?";
    textos [46] ="ALAILA:\n¡Bueno!";
    textos [47] ="Alaila y Ellie vuelven por el mismo camino\nhasta llegar a la plaza, en la que\n se tienen que separar.";
    textos [48] ="ELLIE:\nEstuvo linda la cita de hoy.";
    textos [49] ="Ellie abraza a Alaila";
    textos [50] ="ELLIE:\nNos vemos Ali.";
    textos [51] ="";
    textos [52] ="ELLIE:\nHoy la pasé muy bien Ali...\nOjalá se repita.";
    textos [53] ="ELLIE:\nNos vemos.";
    textos [54] ="";
  }

  void actualizar() {
    fill(0);
    textSize(15);
    textAlign(LEFT);
    text(textos[numero], width/2.8, height/1.4);
    popStyle();
  }
}
