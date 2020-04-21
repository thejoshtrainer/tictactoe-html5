


//Global Variables
		var thisUser;
		var waitForOnLoad = true;
		var painted;
		var content;
		var winningCombinations;
		var turn = 1;
		var theCanvas;
		var c;
		var cxt;
		var squaresFilled = 0;
		var w;
		var y;
		var gameOver = false;

	
onConfigured = function() {

			painted = new Array();
			content = new Array();
			winningCombinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];

			for(var l = 0; l <= 8; l++){
			painted[l] = false;
			content[l]='';
			}
}
		
	
		//Instanciate Arrays
		window.onload=function(){
			
			painted = new Array();
			content = new Array();
			winningCombinations = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]];

			for(var l = 0; l <= 8; l++){
			painted[l] = false;
			content[l]='';
			}
		}

		//Game methods
	
	
		function canvasClicked(canvasNumber){
			if(gameOver==false){
			thisUser=syncConnector.getMyUserDetails();
			theCanvas = "canvas"+canvasNumber;
			c = document.getElementById(theCanvas);
			cxt = c.getContext("2d");
			if(painted[canvasNumber-1] ==false){
				if(turn==1){
					if(document.getElementById("player1b").innerHTML==thisUser.data.fullName)
					{
						cxt.beginPath();
						cxt.moveTo(10,10);
						cxt.lineTo(40,40);
						cxt.moveTo(40,10);
						cxt.lineTo(10,40);
						cxt.stroke();
						cxt.closePath();
						content[canvasNumber-1] = 'X';
						otherplayerx(canvasNumber);
						turn=2;
						painted[canvasNumber-1] = true;
						squaresFilled++;
						checkForWinners(content[canvasNumber-1]);
					}
				}

				else{
					if(document.getElementById("player2b").innerHTML==thisUser.data.fullName)
					{
						cxt.beginPath();
						cxt.arc(25,25,20,0,Math.PI*2,true);
						cxt.stroke();
						cxt.closePath();
						content[canvasNumber-1] = 'O';
						otherplayero(canvasNumber);
						turn=1;
						painted[canvasNumber-1] = true;
						squaresFilled++;
						checkForWinners(content[canvasNumber-1]);
					}
				}



				if(squaresFilled==9){
					alert("THE GAME IS OVER!");
					
				}
			
			}
			else{
				alert("THAT SPACE IS ALREADY OCCUPIED WITH YOUR HEART!");
			}

		}
		}
		function checkForWinners(symbol){
			
			for(var a = 0; a < winningCombinations.length; a++){
			if(content[winningCombinations[a][0]]==symbol&&content[winningCombinations[a][1]]==	symbol&&content[winningCombinations[a][2]]==symbol){
				gameOver=true
				
			}
			}

		}

		function playAgain(){

				location.reload(true);
				syncConnector.dispatchSyncMessage("clearall",null,!1)
				
				
		}
		function playAgain2(){

				location.reload(true);
				if(document.getElementById("player1b").innerHTML!="Player 1"){locaiton.reload(true);}			
		}



		function player1a(){
			if(document.getElementById("player1b").innerHTML=="Player 1"){
			if(syncConnector){
			thisUser=syncConnector.getMyUserDetails();
			document.getElementById("player1b").innerHTML=thisUser.data.fullName;
			syncConnector.dispatchSyncMessage("player1p",thisUser.data.fullName,!1);
			if(document.getElementById("player2b").innerHTML==""){
			document.getElementById("msgText").innerHTML="Waiting for other player"
			}
		}}}
		function player2a(){
			if(document.getElementById("player2b").innerHTML=="Player 2"){
			if(syncConnector){
			thisUser=syncConnector.getMyUserDetails();
			document.getElementById("player2b").innerHTML=thisUser.data.fullName;
			syncConnector.dispatchSyncMessage("player2p",thisUser.data.fullName,!1);
			if(document.getElementById("player1b").innerHTML==""){
			document.getElementById("msgText").innerHTML="Waiting for other player"
			}
		}}}
			


var x,syncConnector=ConnectCustomSDK.SyncConnector||{};syncConnector&&(syncConnector.init(onConfigured,"com.adobe.connect.tictactoe","1.0.001","connectsdkhook"),syncConnector.registerCallback("syncMessageReceived",syncMessageReceived),syncConnector.allowParticipantPublish("player1p",!0),syncConnector.allowParticipantPublish("player2p",!0),syncConnector.allowParticipantPublish("pb1",!0),syncConnector.allowParticipantPublish("pb2",!0),syncConnector.allowParticipantPublish("pb3",!0),syncConnector.allowParticipantPublish("pb4",!0),syncConnector.allowParticipantPublish("pb5",!0),syncConnector.allowParticipantPublish("pb6",!0),syncConnector.allowParticipantPublish("pb7",!0),syncConnector.allowParticipantPublish("pb8",!0),syncConnector.allowParticipantPublish("pb9",!0),
syncConnector.allowParticipantPublish("clearall",!0));

function syncMessageReceived(e)
{
	var t=e.msgNm;
	var n=e.msgVal;
	switch(t)
	{
		case"infobox":document.getElementById("msgText").innerHTML=n;
		break;
		case"turnbox":turn=e.msgVal;
		break;
		case"clearall":playAgain2();
		break;
		case"player1p":document.getElementById("player1b").innerHTML=n;
		break;
		case"player2p":document.getElementById("player2b").innerHTML=n;
		break;
		case"pb1":
		theCanvas = "canvas1";
		c = document.getElementById(theCanvas);
		cxt = c.getContext("2d");
		canvasNumber=1
		if(e.msgVal=="X")
		{
			cxt.beginPath();
					cxt.moveTo(10,10);
					cxt.lineTo(40,40);
					cxt.moveTo(40,10);
					cxt.lineTo(10,40);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'X';
					turn=2;
		}
		else
		{
			cxt.beginPath();
					cxt.arc(25,25,20,0,Math.PI*2,true);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'O';
					turn=1;
		}
		painted[canvasNumber-1] = true;
		squaresFilled++;
		checkForWinners(content[canvasNumber-1]);
		break;
		case"pb2":
		theCanvas = "canvas2";
		c = document.getElementById(theCanvas);
		cxt = c.getContext("2d");
		canvasNumber=2
		if(e.msgVal=="X")
		{
			cxt.beginPath();
			cxt.moveTo(10,10);
			cxt.lineTo(40,40);
			cxt.moveTo(40,10);
			cxt.lineTo(10,40);
			cxt.stroke();
			cxt.closePath();
			content[canvasNumber-1] = 'X';
			turn=2;
		}
		else
		{
			cxt.beginPath();
			cxt.arc(25,25,20,0,Math.PI*2,true);
			cxt.stroke();
			cxt.closePath();
			content[canvasNumber-1] = 'O';
			turn=1;
		}
		painted[canvasNumber-1] = true;
		squaresFilled++;
		checkForWinners(content[canvasNumber-1]);
		break;
		case"pb3":
		theCanvas = "canvas3";
		c = document.getElementById(theCanvas);
		cxt = c.getContext("2d");
		canvasNumber=3
		if(e.msgVal=="X")
		{
			cxt.beginPath();
					cxt.moveTo(10,10);
					cxt.lineTo(40,40);
					cxt.moveTo(40,10);
					cxt.lineTo(10,40);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'X';
					turn=2;
		}
		else
		{
			cxt.beginPath();
					cxt.arc(25,25,20,0,Math.PI*2,true);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'O';
					turn=1;
		}
		painted[canvasNumber-1] = true;
		squaresFilled++;
		checkForWinners(content[canvasNumber-1]);
		break;
		case"pb4":
		theCanvas = "canvas4";
		c = document.getElementById(theCanvas);
		canvasNumber=4
		cxt = c.getContext("2d");
		if(e.msgVal=="X")
		{
			cxt.beginPath();
					cxt.moveTo(10,10);
					cxt.lineTo(40,40);
					cxt.moveTo(40,10);
					cxt.lineTo(10,40);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'X';
					turn=2;
		}
		else
		{
			cxt.beginPath();
					cxt.arc(25,25,20,0,Math.PI*2,true);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'O';
					turn=1;
		}
		painted[canvasNumber-1] = true;
		squaresFilled++;
		checkForWinners(content[canvasNumber-1]);
		break;
		case"pb5":
		theCanvas = "canvas5";
		c = document.getElementById(theCanvas);
		canvasNumber=5
		cxt = c.getContext("2d");
		if(e.msgVal=="X")
		{
			cxt.beginPath();
					cxt.moveTo(10,10);
					cxt.lineTo(40,40);
					cxt.moveTo(40,10);
					cxt.lineTo(10,40);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'X';
					turn=2;
		}
		else
		{
			cxt.beginPath();
					cxt.arc(25,25,20,0,Math.PI*2,true);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'O';
					turn=1;
		}
		painted[canvasNumber-1] = true;
		squaresFilled++;
		checkForWinners(content[canvasNumber-1]);
		break;
		case"pb6":
		theCanvas = "canvas6";
		c = document.getElementById(theCanvas);
		canvasNumber=6
		cxt = c.getContext("2d");
		if(e.msgVal=="X")
		{
			cxt.beginPath();
					cxt.moveTo(10,10);
					cxt.lineTo(40,40);
					cxt.moveTo(40,10);
					cxt.lineTo(10,40);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'X';
					turn=2;
		}
		else
		{
			cxt.beginPath();
					cxt.arc(25,25,20,0,Math.PI*2,true);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'O';
					turn=1;
		}
		painted[canvasNumber-1] = true;
		squaresFilled++;
		checkForWinners(content[canvasNumber-1]);
		break;
		case"pb7":
		theCanvas = "canvas7";
		c = document.getElementById(theCanvas);
		canvasNumber=7
		cxt = c.getContext("2d");
		if(e.msgVal=="X")
		{
			cxt.beginPath();
					cxt.moveTo(10,10);
					cxt.lineTo(40,40);
					cxt.moveTo(40,10);
					cxt.lineTo(10,40);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'X';
					turn=2;
		}
		else
		{
			cxt.beginPath();
					cxt.arc(25,25,20,0,Math.PI*2,true);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'O';
					turn=1;
		}
		painted[canvasNumber-1] = true;
		squaresFilled++;
		checkForWinners(content[canvasNumber-1]);
		break;
		case"pb8":
		theCanvas = "canvas8";
		c = document.getElementById(theCanvas);
		canvasNumber=8
		cxt = c.getContext("2d");
		if(e.msgVal=="X")
		{
			cxt.beginPath();
					cxt.moveTo(10,10);
					cxt.lineTo(40,40);
					cxt.moveTo(40,10);
					cxt.lineTo(10,40);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'X';
					turn=2;
		}
		else
		{
			cxt.beginPath();
					cxt.arc(25,25,20,0,Math.PI*2,true);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'O';
					turn=1;
		}
		painted[canvasNumber-1] = true;
		squaresFilled++;
		checkForWinners(content[canvasNumber-1]);
		break;
		case"pb9":
		theCanvas = "canvas9";
		c = document.getElementById(theCanvas);
		canvasNumber=9
		cxt = c.getContext("2d");
		if(e.msgVal=="X")
		{
			cxt.beginPath();
					cxt.moveTo(10,10);
					cxt.lineTo(40,40);
					cxt.moveTo(40,10);
					cxt.lineTo(10,40);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'X';
					turn=2;
		}
		else
		{
			cxt.beginPath();
					cxt.arc(25,25,20,0,Math.PI*2,true);
					cxt.stroke();
					cxt.closePath();
					content[canvasNumber-1] = 'O';
					turn=1;
		}
		painted[canvasNumber-1] = true;
		squaresFilled++;
		checkForWinners(content[canvasNumber-1]);
	}
}

function otherplayerx(canvasNumber){
	if(canvasNumber==1){
					syncConnector.dispatchSyncMessage("pb1","X",!1)
					}
					else if(canvasNumber==2){
					syncConnector.dispatchSyncMessage("pb2","X",!1)
					}
					else if(canvasNumber==3){
					syncConnector.dispatchSyncMessage("pb3","X",!1)
					}
					else if(canvasNumber==4){
					syncConnector.dispatchSyncMessage("pb4","X",!1)
					}
					else if(canvasNumber==5){
					syncConnector.dispatchSyncMessage("pb5","X",!1)
					}
					else if(canvasNumber==6){
					syncConnector.dispatchSyncMessage("pb6","X",!1)
					}
					else if(canvasNumber==7){
					syncConnector.dispatchSyncMessage("pb7","X",!1)
					}
					else if(canvasNumber==8){
					syncConnector.dispatchSyncMessage("pb8","X",!1)
					}
					else if(canvasNumber==9){
					syncConnector.dispatchSyncMessage("pb9","X",!1)
					}
					}
					
function otherplayero(canvasNumber){
	if(canvasNumber==1){
					syncConnector.dispatchSyncMessage("pb1","O",!1)
					}
					else if(canvasNumber==2){
					syncConnector.dispatchSyncMessage("pb2","O",!1)
					}
					else if(canvasNumber==3){
					syncConnector.dispatchSyncMessage("pb3","O",!1)
					}
					else if(canvasNumber==4){
					syncConnector.dispatchSyncMessage("pb4","O",!1)
					}
					else if(canvasNumber==5){
					syncConnector.dispatchSyncMessage("pb5","O",!1)
					}
					else if(canvasNumber==6){
					syncConnector.dispatchSyncMessage("pb6","O",!1)
					}
					else if(canvasNumber==7){
					syncConnector.dispatchSyncMessage("pb7","O",!1)
					}
					else if(canvasNumber==8){
					syncConnector.dispatchSyncMessage("pb8","O",!1)
					}
					else if(canvasNumber==9){
					syncConnector.dispatchSyncMessage("pb9","O",!1)
					}}
