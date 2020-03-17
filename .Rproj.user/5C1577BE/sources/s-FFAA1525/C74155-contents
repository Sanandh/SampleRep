function PlaySound(path) 
{
      var audioElement = document.createElement('audio');
      audioElement.setAttribute('src', path);
      audioElement.play();
}
		
function answerCheck(answer){
  var questionAfter = "What+is+the+Javascript+multiplication+symbol%3F";
	var answerAfter = "d";
	var correctAnswer = "c";
  document.getElementById("results").style.visibility = "visible";
  alert(document.getElementById("choice1").text);
	if(correctAnswer == answer){
//Is this not the last question?
				if(questionAfter.length >= 1 && answerAfter.length >= 1){
					//Play the sound
					PlaySound('correctanswer.mp3');
					document.getElementById("results").innerHTML = 
					"<center><h2>Correct!<br>Ready for the Next Question?</h2><a href=javascript:UpdateQuestions() type=\"button\" class=\"btn-lg btn-success\">Yes</button></center>";
					document.getElementById("results").scrollIntoView();
				}
				else{
					//Play the sound for winning the whole thing
					PlaySound('correctanswer.mp3');
					document.getElementById("results").innerHTML = "<center><h1>You won the game with 0 incorrect responses!</h1><h2>Try this game again?</h2><a href=\"?startover=yes\" type=\"button\" class=\"btn-lg btn-danger\">Yes</button></center>";
					document.getElementById("results").scrollIntoView();
				} //End of last question check
				
			}
			else{
				PlaySound('wrong.mp3');
				document.getElementById("results").innerHTML = "<center><h2>That was not correct!<br>Try this game again?</h2><a href=\"?startover=yes\" type=\"button\" class=\"btn-lg btn-danger\">Yes</button></center>";
				
				//Increment the wrong count
				$('#urlcatcher').load('wrongcounter.php');

				//Mark it shamefully red
				if(answer == "a"){
				  $('#choice1').addClass('wrongChoice');
				}
				if(answer == "b"){
				  $('#choice2').addClass('wrongChoice');
				}
				if(answer == "c"){
				  $('#choice3').addClass('wrongChoice');
				}
				if(answer == "d"){
				  $('#choice4').addClass('wrongChoice');
				}
			}
			//Make it green right or wong
			if(correctAnswer == "a"){
			  $('#choice1').addClass('correctChoice');
			}
			if(correctAnswer == "b"){
			  $('#choice2').addClass('correctChoice');
			}
			if(correctAnswer == "c"){
			  $('#choice3').addClass('correctChoice');
			}
			if(correctAnswer == "d"){
			  $('#choice4').addClass('correctChoice');
			}
			
			document.getElementById("results").scrollIntoView();
			
		}
		
		function FiftyFifty(){
			  var correctAnswer = "c";
			  if(correctAnswer == "a" || correctAnswer == "c"){
				  $('#choice2').addClass('removeChoice');
				  $('#choice4').addClass('removeChoice');
			  }
			  else if(correctAnswer == "b" || correctAnswer == "d"){
				  $('#choice1').addClass('removeChoice');
				  $('#choice3').addClass('removeChoice');
			  }
		}

		function SkipQ(){
			  var correctAnswer = "c";
			  if(correctAnswer == "a"){
				  $('#choice2').addClass('removeChoice');
				  $('#choice3').addClass('removeChoice');
				  $('#choice4').addClass('removeChoice');
			  }
			  else if(correctAnswer == "b"){
				  $('#choice1').addClass('removeChoice');
				  $('#choice3').addClass('removeChoice');
				  $('#choice4').addClass('removeChoice');
			  }
			  else if(correctAnswer == "c"){
				  $('#choice1').addClass('removeChoice');
				  $('#choice2').addClass('removeChoice');
				  $('#choice4').addClass('removeChoice');
				  $('#choice3').addClass('removeChoice');
			  }
			  else if(correctAnswer == "d"){
				  $('#choice1').addClass('removeChoice');
				  $('#choice2').addClass('removeChoice');
				  $('#choice3').addClass('removeChoice');
			  }
		}
		
function UpdateQuestions() 
{
  
      
      document.getElementById("choice1").className = "millbox2";
      document.getElementById("choice2").className = "millbox2";
      document.getElementById("choice3").className = "millbox2";
      document.getElementById("choice4").className = "millbox2";
      document.getElementById('results').style.visibility = 'hidden';
     var content=document.getElementById("choice4").value;
     var id;
     alert(content);
     if(id==2)
     {
       document.getElementById("qbox1").innerHTML="Which is the highest mountain peakin the world?";
       document.getElementById("choice1").innerHTML="A.K2";
       document.getElementById("choice2").innerHTML="B.Nile";
       document.getElementById("choice3").innerHTML="C.Yangtze";
       document.getElementById("choice4").innerHTML="D.Brahamputra";
     }
     if(id==3)
     {
       document.getElementById("qbox1").innerHTML="Which is the longest river in the world?";
        document.getElementById("choice1").innerHTML="A.K2";
       document.getElementById("choice2").innerHTML="B.Nile";
       document.getElementById("choice3").innerHTML="C.Yangtze";
       document.getElementById("choice4").innerHTML="D.Brahamputra";
     }
     if(id==4)
     {
       document.getElementById("qbox1").innerHTML="Which is the largest country in the world by area?";
        document.getElementById("choice1").innerHTML="A.China";
       document.getElementById("choice2").innerHTML="B.Canada";
       document.getElementById("choice3").innerHTML="C.USA";
       document.getElementById("choice4").innerHTML="D.Russia";
     }
      if(id==5)
     {
       document.getElementById("qbox1").innerHTML="Which is the largest Ocean in the world?";
        document.getElementById("choice1").innerHTML="A.Pacific Ocean";
       document.getElementById("choice2").innerHTML="B.Atlantic Ocean";
       document.getElementById("choice3").innerHTML="C.Indian Ocean";
       document.getElementById("choice4").innerHTML="D.Artic Ocean";
     }
     
      if(id==6)
     {
       document.getElementById("qbox1").innerHTML="Which is the largest continent by area?";
        document.getElementById("choice1").innerHTML="A.Africa";
       document.getElementById("choice2").innerHTML="B.Asia";
       document.getElementById("choice3").innerHTML="C.North America";
       document.getElementById("choice4").innerHTML="D.Europe";
     }
      if(id==7)
     {
       document.getElementById("qbox1").innerHTML="Which country/region has the highest population density in the world?";
        document.getElementById("choice1").innerHTML="A.Monaco";
       document.getElementById("choice2").innerHTML="B.Singapore";
       document.getElementById("choice3").innerHTML="C.Macao";
       document.getElementById("choice4").innerHTML="D.Hong Kong";
     }
     if(id==8)
     {
       document.getElementById("qbox1").innerHTML="Which country has the highest population.";
        document.getElementById("choice1").innerHTML="A.India";
       document.getElementById("choice2").innerHTML="B.China";
       document.getElementById("choice3").innerHTML="C.USA";
       document.getElementById("choice4").innerHTML="D.Russia";
     }
     if(id==9)
     {
       document.getElementById("qbox1").innerHTML="Which is the tallest building in the world?";
        document.getElementById("choice1").innerHTML="A.Eiffel tower";
       document.getElementById("choice2").innerHTML="B.Sanghai tower";
       document.getElementById("choice3").innerHTML="C.Burj Khalifa";
       document.getElementById("choice4").innerHTML="D.Petronas twin towers";
     }
     if(id==10)
     {
       document.getElementById("qbox1").innerHTML="Which is the tallest building in the world?";
        document.getElementById("choice1").innerHTML="A.Eiffel tower";
       document.getElementById("choice2").innerHTML="B.Sanghai tower";
       document.getElementById("choice3").innerHTML="C.Burj Khalifa";
       document.getElementById("choice4").innerHTML="D.Petronas twin towers";
     }
      if(id==11)
     {
       document.getElementById("qbox1").innerHTML="Which is the longest train rout in the world? (Without train change)?";
        document.getElementById("choice1").innerHTML="A.Moscow-Pyongyang";
       document.getElementById("choice2").innerHTML="B.Moscow-Vladivostok";
       document.getElementById("choice3").innerHTML="C.Moscow-Beijing";
       document.getElementById("choice4").innerHTML="D.Toronto-Vancouver";
     }
     if(id==11)
     {
       document.getElementById("qbox1").innerHTML="Which is the largest fresh water lake in the world?";
        document.getElementById("choice1").innerHTML="A.Lake Superior";
       document.getElementById("choice2").innerHTML="B.Lake Huron";
       document.getElementById("choice3").innerHTML="C.Lake Victoria";
       document.getElementById("choice4").innerHTML="D.Lake Baikal";
     }
      if(id==12)
     {
       document.getElementById("qbox1").innerHTML="Which is the largest city in the world by area?";
        document.getElementById("choice1").innerHTML="A.New York";
       document.getElementById("choice2").innerHTML="B.New Delhi";
       document.getElementById("choice3").innerHTML="C.Moscow";
       document.getElementById("choice4").innerHTML="D.Paris";
     }
       if(id==13)
     {
       document.getElementById("qbox1").innerHTML="Which is the largest city in the world by area?";
        document.getElementById("choice1").innerHTML="A.New York";
       document.getElementById("choice2").innerHTML="B.New Delhi";
       document.getElementById("choice3").innerHTML="C.Moscow";
       document.getElementById("choice4").innerHTML="D.Paris";
     }
     if(id==14)
     {
       document.getElementById("qbox1").innerHTML="Which is the hottest inhabited place on earth?";
        document.getElementById("choice1").innerHTML="A.CERN, Geneva";
       document.getElementById("choice2").innerHTML="B.Lut Desert, Iran";
       document.getElementById("choice3").innerHTML="C.Bangkok, Thailand";
       document.getElementById("choice4").innerHTML="D.Dallol, Ethopia";
     }
     if(id==15)
     {
       document.getElementById("qbox1").innerHTML="Which airport is located at the highest altitude?";
        document.getElementById("choice1").innerHTML="A.Bangda airport, Tibet";
       document.getElementById("choice2").innerHTML="B.Daocheng Yading airport, China";
       document.getElementById("choice3").innerHTML="C.Leh airport, India";
       document.getElementById("choice4").innerHTML="D.Bagdogra airport, India";
     }
}


		
		
