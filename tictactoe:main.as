<?xml version="1.0" encoding="utf-8"?>
<mx:Application xmlns:mx="http://www.adobe.com/2006/mxml" layout="absolute" 
				width="100%" height="100%" x="0" y="0" xmlns:components="com.adobe.sync.components.*"
				creationComplete="onCreationComplete()"  backgroundImage="{sprint_logo}" backgroundColor="0xffffff">
	
	<mx:Script>
		<![CDATA[
			import com.adobe.sync.events.*;
			import com.adobe.sync.events.SyncSwfEvent;
			
			import flash.events.*;
			import flash.filters.*;
			import flash.net.*;
			import flash.utils.*;
			
			import mx.binding.*;
			import mx.collections.*;
			import mx.containers.*;
			import mx.controls.*;
			import mx.controls.dataGridClasses.*;
			import mx.core.*;
			import mx.events.*;
			import mx.events.ListEvent;
			import mx.rpc.events.*;
			import mx.rpc.http.mxml.*;
			import mx.states.*;
			import mx.styles.*;
			

			protected function caughtUp (event:SyncSwfEvent) : void
			{
				connector.allowParticipantPublish("player1",true);
				connector.allowParticipantPublish("player2",true);
				connector.allowParticipantPublish("winner",true);
				connector.allowParticipantPublish("player1pr",true);
				connector.allowParticipantPublish("player1p",true);
				connector.allowParticipantPublish("player2pr",true);
				connector.allowParticipantPublish("player2p",true);
				connector.allowParticipantPublish("clearall",true);
				connector.allowParticipantPublish("pb1",true);
				connector.allowParticipantPublish("pb2",true);
				connector.allowParticipantPublish("pb3",true);
				connector.allowParticipantPublish("pb4",true);
				connector.allowParticipantPublish("pb5",true);
				connector.allowParticipantPublish("pb6",true);
				connector.allowParticipantPublish("pb7",true);
				connector.allowParticipantPublish("pb8",true);
				connector.allowParticipantPublish("pb9",true);
				connector.allowParticipantPublish("turnbox",true);
				connector.allowParticipantPublish("infobox",true);
				connector.allowParticipantPublish("catsgame",true);
				
			}

			private function onCreationComplete() : void
			{
				player1.text = "Click Player 1 to play!";
				player2.text = "Click Player 2 to play!";
				connector.allowParticipantPublish("player1",true);
				connector.allowParticipantPublish("player2",true);
				connector.allowParticipantPublish("winner",true);
				connector.allowParticipantPublish("player1pr",true);
				connector.allowParticipantPublish("player1p",true);
				connector.allowParticipantPublish("player2pr",true);
				connector.allowParticipantPublish("player2p",true);
				connector.allowParticipantPublish("clearall",true);
				connector.allowParticipantPublish("pb1",true);
				connector.allowParticipantPublish("pb2",true);
				connector.allowParticipantPublish("pb3",true);
				connector.allowParticipantPublish("pb4",true);
				connector.allowParticipantPublish("pb5",true);
				connector.allowParticipantPublish("pb6",true);
				connector.allowParticipantPublish("pb7",true);
				connector.allowParticipantPublish("pb8",true);
				connector.allowParticipantPublish("pb9",true);
				connector.allowParticipantPublish("turnbox",true);
				connector.allowParticipantPublish("infobox",true);
				connector.allowParticipantPublish("catsgame",true);
			}
			

			
			protected function syncMessageReceived (event:SyncSwfEvent):void
			{
				if(event.data.msgNm == "pb1")
				{
					pb1.label=event.data.msgVal;
					if (connector.userName==player1.text)
					{
						infobox.text = player1.text + "'s turn!";
						turnbox.text="1";
					}
					else
					{
						infobox.text = player2.text + "'s turn!";
						turnbox.text="2";
					}
					testwinx();
					testwino();
				}
				else if(event.data.msgNm == "pb2")
				{
					pb2.label=event.data.msgVal;
					if (connector.userName==player1.text)
					{
						infobox.text = player1.text + "'s turn!";
						turnbox.text="1";
					}
					else
					{
						infobox.text = player2.text + "'s turn!";
						turnbox.text="2";
					}
					testwinx();
					testwino();
				}
				else if(event.data.msgNm == "pb3")
				{
					pb3.label=event.data.msgVal;
					if (connector.userName==player1.text)
					{
						infobox.text = player1.text + "'s turn!";
						turnbox.text="1";
					}
					else
					{
						infobox.text = player2.text + "'s turn!";
						turnbox.text="2";
					}
					testwinx();
					testwino();
				}
				else if(event.data.msgNm == "pb4")
				{
					pb4.label=event.data.msgVal;
					if (connector.userName==player1.text)
					{
						infobox.text = player1.text + "'s turn!";
						turnbox.text="1";
					}
					else
					{
						infobox.text = player2.text + "'s turn!";
						turnbox.text="2";
					}
					testwinx();
					testwino();
				}
				else if(event.data.msgNm == "pb5")
				{
					pb5.label=event.data.msgVal;
					if (connector.userName==player1.text)
					{
						infobox.text = player1.text + "'s turn!";
						turnbox.text="1";
					}
					else
					{
						infobox.text = player2.text + "'s turn!";
						turnbox.text="2";
					}
					testwinx();
					testwino();
				}
				else if(event.data.msgNm == "pb6")
				{
					pb6.label=event.data.msgVal;
					if (connector.userName==player1.text)
					{
						infobox.text = player1.text + "'s turn!";
						turnbox.text="1";
					}
					else
					{
						infobox.text = player2.text + "'s turn!";
						turnbox.text="2";
					}
					testwinx();
					testwino();
				}
				else if(event.data.msgNm == "pb7")
				{
					pb7.label=event.data.msgVal;
					if (connector.userName==player1.text)
					{
						infobox.text = player1.text + "'s turn!";
						turnbox.text="1";
					}
					else
					{
						infobox.text = player2.text + "'s turn!";
						turnbox.text="2";
					}
					testwinx();
					testwino();
				}
				else if(event.data.msgNm == "pb8")
				{
					pb8.label=event.data.msgVal;
					if (connector.userName==player1.text)
					{
						infobox.text = player1.text + "'s turn!";
						turnbox.text="1";
					}
					else
					{
						infobox.text = player2.text + "'s turn!";
						turnbox.text="2";
					}
					testwinx();
					testwino();
				}
				else if(event.data.msgNm == "pb9")
				{
					pb9.label=event.data.msgVal;
					if (connector.userName==player1.text)
					{
						infobox.text = player1.text + "'s turn!";
						turnbox.text="1";
					}
					else
					{
						infobox.text = player2.text + "'s turn!";
						turnbox.text="2";
					}
					testwinx();
					testwino();
				}
				else if(event.data.msgNm == "player1p")
				{
					player1.text=event.data.msgVal;
					if(player2.text != ""){whofirst()}
				}
				else if(event.data.msgNm == "player2p")
				{
					player2.text=event.data.msgVal;
					if(player1.text != ""){whofirst()}
				}
				else if(event.data.msgNm == "clearall")
				{
					resetplocal();
					infobox.text=event.data.msgVal;
				}
				else if(event.data.msgNm == "turnbox")
				{
					turnbox.text=event.data.msgVal;
				}
				else if(event.data.msgNm == "infobox")
				{
					infobox.text=event.data.msgVal;
				}
				else if(event.data.msgNm == "catsgame")
				{
					infobox.text=event.data.msgVal;
				}
				else if(event.data.msgNm == "winner")
				{
/* 					testwinx();
					testwino(); */
				}
			}


			protected function testwino():void
			{
				var lasttext:String = "\n\nPress Reset to play again."
				
				if(pb1.label=="O" && pb2.label=="O" && pb3.label=="O")
				{
					infobox.text = player2.text + " wins!!!!" + lasttext;
					pb1.setStyle("disabledColor",0xff0000);
					pb2.setStyle("disabledColor",0xff0000);
					pb3.setStyle("disabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "123", false);
					winner();
				}
				else if (pb4.label=="O" && pb5.label=="O" && pb6.label=="O")
				{
					infobox.text = player2.text + " wins!!!!" + lasttext;
					pb4.setStyle("disabledColor",0xff0000);
					pb5.setStyle("disabledColor",0xff0000);
					pb6.setStyle("disabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "456", false);
					winner();	
				}
				else if (pb7.label=="O" && pb8.label=="O" && pb9.label=="O")
				{
					infobox.text = player2.text + " wins!!!!" + lasttext;
					pb7.setStyle("disabledColor",0xff0000);
					pb8.setStyle("disabledColor",0xff0000);
					pb9.setStyle("disabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "789", false);
					winner();	
				}
				else if (pb1.label=="O" && pb4.label=="O" && pb7.label=="O")
				{
					infobox.text = player2.text + " wins!!!!" + lasttext;
					pb1.setStyle("disabledColor",0xff0000);
					pb4.setStyle("disabledColor",0xff0000);
					pb7.setStyle("disabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "147", false);
					winner()
				}
				else if (pb2.label=="O" && pb5.label=="O" && pb8.label=="O")
				{
					infobox.text = player2.text + " wins!!!!" + lasttext;
					pb2.setStyle("disabledColor",0xff0000);
					pb5.setStyle("disabledColor",0xff0000);
					pb8.setStyle("disabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "258", false);
					winner();
				}
				else if (pb3.label=="O" && pb6.label=="O" && pb9.label=="O")
				{
					infobox.text = player2.text + " wins!!!!" + lasttext;
					pb3.setStyle("disabledColor",0xff0000);
					pb6.setStyle("disabledColor",0xff0000);
					pb9.setStyle("disabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "369", false);
					winner();
				}
				else if (pb1.label=="O" && pb5.label=="O" && pb9.label=="O")
				{
					infobox.text = player2.text + " wins!!!!" + lasttext;
					pb1.setStyle("disableddisabledColor",0xff0000);
					pb5.setStyle("disableddisabledColor",0xff0000);
					pb9.setStyle("disableddisabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "159", false);
					winner();
				}
				else if (pb3.label=="O" && pb5.label=="O" && pb7.label=="O")
				{
					infobox.text = player2.text + " wins!!!!" + lasttext;
					pb3.setStyle("disableddisabledColor",0xff0000);
					pb5.setStyle("disableddisabledColor",0xff0000);
					pb7.setStyle("disableddisabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "357", false);
					winner();
				}
				else
				{
					catsgame();
					
				}
				
			}
			
			protected function testwinx():void
			{
				var lasttext:String = "\n\nPress Reset to play again."
				
				if(pb1.label=="X" && pb2.label=="X" && pb3.label=="X")
				{
					infobox.text = player1.text + " wins!!!!" + lasttext;
					pb1.setStyle("disabledColor",0xff0000);
					pb2.setStyle("disabledColor",0xff0000);
					pb3.setStyle("disabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "123", false);
					winner();
				}
				else if (pb4.label=="X" && pb5.label=="X" && pb6.label=="X")
				{
					infobox.text = player1.text + " wins!!!!" + lasttext;
					pb4.setStyle("disabledColor",0xff0000);
					pb5.setStyle("disabledColor",0xff0000);
					pb6.setStyle("disabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "456", false);
					winner();	
				}
				else if (pb7.label=="X" && pb8.label=="X" && pb9.label=="X")
				{
					infobox.text = player1.text + " wins!!!!" + lasttext;
					pb7.setStyle("disabledColor",0xff0000);
					pb8.setStyle("disabledColor",0xff0000);
					pb9.setStyle("disabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "789", false);
					winner();	
				}
				else if (pb1.label=="X" && pb4.label=="X" && pb7.label=="X")
				{
					infobox.text = player1.text + " wins!!!!" + lasttext;
					pb1.setStyle("disabledColor",0xff0000);
					pb4.setStyle("disabledColor",0xff0000);
					pb7.setStyle("disabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "147", false);
					winner()
				}
				else if (pb2.label=="X" && pb5.label=="X" && pb8.label=="X")
				{
					infobox.text = player1.text + " wins!!!!" + lasttext;
					pb2.setStyle("disabledColor",0xff0000);
					pb5.setStyle("disabledColor",0xff0000);
					pb8.setStyle("disabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "258", false);
					winner();
				}
				else if (pb3.label=="X" && pb6.label=="X" && pb9.label=="X")
				{
					infobox.text = player1.text + " wins!!!!" + lasttext;
					pb3.setStyle("disabledColor",0xff0000);
					pb6.setStyle("disabledColor",0xff0000);
					pb9.setStyle("disabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "369", false);
					winner();
				}
				else if (pb1.label=="X" && pb5.label=="X" && pb9.label=="X")
				{
					infobox.text = player1.text + " wins!!!!" + lasttext;
					pb1.setStyle("disableddisabledColor",0xff0000);
					pb5.setStyle("disableddisabledColor",0xff0000);
					pb9.setStyle("disableddisabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "159", false);
					winner();
				}
				else if (pb3.label=="X" && pb5.label=="X" && pb7.label=="X")
				{
					infobox.text = player1.text + " wins!!!!" + lasttext;
					pb3.setStyle("disableddisabledColor",0xff0000);
					pb5.setStyle("disableddisabledColor",0xff0000);
					pb7.setStyle("disableddisabledColor",0xff0000);
					connector.allowParticipantPublish("winner",true);
					connector.dispatchSyncMessage("winner", "357", false);
					winner();
				}
				else
				{
					catsgame();
				}
			}
			
			protected function catsgame() :void
			{
				if (pb1.label!="" && pb2.label!="" && pb3.label!="" && pb4.label!="" && pb5.label!="" && pb6.label!="" && pb7.label!="" && pb8.label!="" && pb9.label!="")
				{
					if (infobox.text.indexOf("win")<=0)
					{
						infobox.text = "Cats Game!!! \n \nNo Winner! \n\nPress Reset to play again.";
 						connector.allowParticipantPublish("winner",true);
						connector.dispatchSyncMessage("winner", "catsgame", false); 
						winner();
					}
				}
			}
			protected function winner():void
			{
   				pb1.enabled=false;
				pb2.enabled=false;
				pb3.enabled=false;
				pb4.enabled=false;
				pb5.enabled=false;
				pb6.enabled=false;
				pb7.enabled=false;
				pb8.enabled=false;
				pb9.enabled=false;
				/* fscommand("quit") */ 
			}
			protected function resetwinner():void
			{
 				pb1.enabled=true;
				pb2.enabled=true;
				pb3.enabled=true;
				pb4.enabled=true;
				pb5.enabled=true;
				pb6.enabled=true;
				pb7.enabled=true;
				pb8.enabled=true;
				pb9.enabled=true; 
			}
			protected function player1p(event:MouseEvent):void
			{
				if(player1.text=="Click Player 1 to play!")
				{
					resetplayer();
					player1.text=connector.userName;
					connector.allowParticipantPublish("player1p",true);
					connector.dispatchSyncMessage("player1p", connector.userName, false);
					if(player2.text !="Click Player 2 to play!")
					{
						whofirst();
					}
					else
					{
						infobox.text = "Waiting for a player 2."
						connector.allowParticipantPublish("player1pr",true);
						connector.dispatchSyncMessage("player1pr", "Waiting for a player 2.", false);
					}
				}

			}
			protected function player2p(event:MouseEvent):void
			{
				if(player2.text=="Click Player 2 to play!")
				{
					resetplayer();
					player2.text=connector.userName;
					connector.allowParticipantPublish("player2p",true);
					connector.dispatchSyncMessage("player2p", connector.userName, false);
					if(player1.text !="Click Player 1 to play!")
					{
						whofirst();
					}
					else
					{
						infobox.text = "Waiting for a player 1."
						connector.allowParticipantPublish("player1pr",true);
						connector.dispatchSyncMessage("player1pr", "Waiting for a player 1.", false);
					}
				}

			}
			protected function resetplayer():void
			{
				pb1.label="";
				pb2.label="";
				pb3.label="";
				pb4.label="";
				pb5.label="";
				pb6.label="";
				pb7.label="";
				pb8.label="";
				pb9.label="";
				infobox.text=""
				resetwinner();
			}
			protected function whofirst():void
			{
				if(player1.text != "Click Player 1 to play!" && player2.text != "Click Player 2 to play!")
					var player:Number = Math.floor(Math.random()*2+1)
						turnbox.text=String(player)
					if(player == 1)
					{
						infobox.text=player1.text + " Goes First!"
						connector.allowParticipantPublish("turnbox",true);
						connector.dispatchSyncMessage("turnbox", "1", false);
						connector.allowParticipantPublish("infobox",true);
						connector.dispatchSyncMessage("infobox", player1.text + " Goes First!", false);
					}
					else
					{
						infobox.text=player2.text + " Goes First!"
						connector.allowParticipantPublish("turnbox",true);
						connector.dispatchSyncMessage("turnbox", "2", false);
						connector.allowParticipantPublish("infobox",true);
						connector.dispatchSyncMessage("infobox", player2.text + " Goes First!", false);
					}
			}
			protected function resetp(event:MouseEvent):void
			{
				player2.text="Click Player 2 to play!";
				player1.text="Click Player 1 to play!";
				pb1.label="";
				pb2.label="";
				pb3.label="";
				pb4.label="";
				pb5.label="";
				pb6.label="";
				pb7.label="";
				pb8.label="";
				pb9.label="";
				infobox.text="";
				pb1.setStyle("disabledColor",0x0b333c);
				pb2.setStyle("disabledColor",0x0b333c);
				pb3.setStyle("disabledColor",0x0b333c);
				pb4.setStyle("disabledColor",0x0b333c);
				pb5.setStyle("disabledColor",0x0b333c);
				pb6.setStyle("disabledColor",0x0b333c);
				pb7.setStyle("disabledColor",0x0b333c);
				pb8.setStyle("disabledColor",0x0b333c);
				pb9.setStyle("disabledColor",0x0b333c);
				resetwinner();
				connector.allowParticipantPublish("clearall",true);
				connector.dispatchSyncMessage("clearall", infobox.text, false);
			}
			
			protected function resetplocal():void
			{
				player2.text="Click Player 2 to play!";
				player1.text="Click Player 1 to play!";
				pb1.label="";
				pb2.label="";
				pb3.label="";
				pb4.label="";
				pb5.label="";
				pb6.label="";
				pb7.label="";
				pb8.label="";
				pb9.label="";
				pb1.setStyle("disabledColor",0x0b333c);
				pb2.setStyle("disabledColor",0x0b333c);
				pb3.setStyle("disabledColor",0x0b333c);
				pb4.setStyle("disabledColor",0x0b333c);
				pb5.setStyle("disabledColor",0x0b333c);
				pb6.setStyle("disabledColor",0x0b333c);
				pb7.setStyle("disabledColor",0x0b333c);
				pb8.setStyle("disabledColor",0x0b333c);
				pb9.setStyle("disabledColor",0x0b333c);
				infobox.text="";
				resetwinner();
			}
			
			protected function b1(event:MouseEvent):void
			{
				if(pb1.label=="")
				{
					if(turnbox.text == "1" && player1.text == connector.userName)
					{
						pb1.label="X";
						connector.allowParticipantPublish("pb1",true);
						connector.dispatchSyncMessage("pb1", "X", false);
						turnbox.text="2";
						infobox.text=player2.text + "'s turn!";
					}
						else if(turnbox.text == "2" && player2.text == connector.userName)
					{
						pb1.label="O"
						connector.allowParticipantPublish("pb1",true);
						connector.dispatchSyncMessage("pb1", "O", false);
						turnbox.text="1";
						infobox.text=player1.text + "'s turn!";
					}		
					else
					{
						if (player1.text != connector.userName && player2.text != connector.userName)
						{
							infobox.text = "Please wait until next game."
						}
						else
						{
							infobox.text = "Not your turn!";
						}
					}
				}
				testwinx();
				testwino();
			}


			protected function b2(event:MouseEvent):void
			{
				if(pb2.label=="")
				{
					if(turnbox.text == "1" && player1.text == connector.userName)
					{
						pb2.label="X";
						connector.allowParticipantPublish("pb2",true);
						connector.dispatchSyncMessage("pb2", "X", false);
						turnbox.text="2";
						infobox.text=player2.text + "'s turn!";
					}
					else if(turnbox.text == "2" && player2.text == connector.userName)
					{
						pb2.label="O"
						connector.allowParticipantPublish("pb2",true);
						connector.dispatchSyncMessage("pb2", "O", false);
						turnbox.text="1";
						infobox.text=player1.text + "'s turn!";
					}		
					else
					{
						if (player1.text != connector.userName && player2.text != connector.userName)
						{
							infobox.text = "Please wait until next game."
						}
						else
						{
							infobox.text = "Not your turn!";
						}
					}
				}
				testwinx();
				testwino();
			}
			protected function b3(event:MouseEvent):void
			{
				if(pb3.label=="")
				{
					if(turnbox.text == "1" && player1.text == connector.userName)
					{
						pb3.label="X";
						connector.allowParticipantPublish("pb3",true);
						connector.dispatchSyncMessage("pb3", "X", false);
						turnbox.text="2";
						infobox.text=player2.text + "'s turn!";
					}
					else if(turnbox.text == "2" && player2.text == connector.userName)
					{
						pb3.label="O"
						connector.allowParticipantPublish("pb3",true);
						connector.dispatchSyncMessage("pb3", "O", false);
						turnbox.text="1";
						infobox.text=player1.text + "'s turn!";
					}		
					else
					{
						if (player1.text != connector.userName && player2.text != connector.userName)
						{
							infobox.text = "Please wait until next game."
						}
						else
						{
							infobox.text = "Not your turn!";
						}
					}
				}
				testwinx();
				testwino();
			}
			protected function b4(event:MouseEvent):void
			{
				if(pb4.label=="")
				{
					if(turnbox.text == "1" && player1.text == connector.userName)
					{
						pb4.label="X";
						connector.allowParticipantPublish("pb4",true);
						connector.dispatchSyncMessage("pb4", "X", false);
						turnbox.text="2";
						infobox.text=player2.text + "'s turn!";
					}
					else if(turnbox.text == "2" && player2.text == connector.userName)
					{
						pb4.label="O"
						connector.allowParticipantPublish("pb4",true);
						connector.dispatchSyncMessage("pb4", "O", false);
						turnbox.text="1";
						infobox.text=player1.text + "'s turn!";
					}		
					else
					{
						if (player1.text != connector.userName && player2.text != connector.userName)
						{
							infobox.text = "Please wait until next game."
						}
						else
						{
							infobox.text = "Not your turn!";
						}
					}
				}
				testwinx();
				testwino();
			}
			
			protected function b5(event:MouseEvent):void
			{
				if(pb5.label=="")
				{
					if(turnbox.text == "1" && player1.text == connector.userName)
					{
						pb5.label="X";
						connector.allowParticipantPublish("pb5",true);
						connector.dispatchSyncMessage("pb5", "X", false);
						turnbox.text="2";
						infobox.text=player2.text + "'s turn!";
					}
					else if(turnbox.text == "2" && player2.text == connector.userName)
					{
						pb5.label="O"
						connector.allowParticipantPublish("pb5",true);
						connector.dispatchSyncMessage("pb5", "O", false);
						turnbox.text="1";
						infobox.text=player1.text + "'s turn!";
					}		
					else
					{
						if (player1.text != connector.userName && player2.text != connector.userName)
						{
							infobox.text = "Please wait until next game."
						}
						else
						{
							infobox.text = "Not your turn!";
						}
					}
				}	
				testwinx();
				testwino();
			}
			
			protected function b6(event:MouseEvent):void
			{
				if(pb6.label=="")
				{
					if(turnbox.text == "1" && player1.text == connector.userName)
					{
						pb6.label="X";
						connector.allowParticipantPublish("pb6",true);
						connector.dispatchSyncMessage("pb6", "X", false);
						turnbox.text="2";
						infobox.text=player2.text + "'s turn!";
					}
					else if(turnbox.text == "2" && player2.text == connector.userName)
					{
						pb6.label="O"
						connector.allowParticipantPublish("pb6",true);
						connector.dispatchSyncMessage("pb6", "O", false);
						turnbox.text="1";
						infobox.text=player1.text + "'s turn!";
					}		
					else
					{
						if (player1.text != connector.userName && player2.text != connector.userName)
						{
							infobox.text = "Please wait until next game."
						}
						else
						{
							infobox.text = "Not your turn!";
						}
					}
				}
				testwinx();
				testwino();
			}
			
			protected function b7(event:MouseEvent):void
			{
				if(pb7.label=="")
				{
					if(turnbox.text == "1" && player1.text == connector.userName)
					{
						pb7.label="X";
						connector.allowParticipantPublish("pb7",true);
						connector.dispatchSyncMessage("pb7", "X", false);
						turnbox.text="2";
						infobox.text=player2.text + "'s turn!";
					}
					else if(turnbox.text == "2" && player2.text == connector.userName)
					{
						pb7.label="O"
						connector.allowParticipantPublish("pb7",true);
						connector.dispatchSyncMessage("pb7", "O", false);
						turnbox.text="1";
						infobox.text=player1.text + "'s turn!";
					}		
					else
					{
						if (player1.text != connector.userName && player2.text != connector.userName)
						{
							infobox.text = "Please wait until next game."
						}
						else
						{
							infobox.text = "Not your turn!";
						}
					}
				}
				testwinx();
				testwino();
			}
			
			protected function b8(event:MouseEvent):void
			{
				if(pb8.label=="")
				{
					if(turnbox.text == "1" && player1.text == connector.userName)
					{
						pb8.label="X";
						connector.allowParticipantPublish("pb8",true);
						connector.dispatchSyncMessage("pb8", "X", false);
						turnbox.text="2";
						infobox.text=player2.text + "'s turn!";
					}
					else if(turnbox.text == "2" && player2.text == connector.userName)
					{
						pb8.label="O"
						connector.allowParticipantPublish("pb8",true);
						connector.dispatchSyncMessage("pb8", "O", false);
						turnbox.text="1";
						infobox.text=player1.text + "'s turn!";
					}		
					else
					{
						if (player1.text != connector.userName && player2.text != connector.userName)
						{
							infobox.text = "Please wait until next game."
						}
						else
						{
							infobox.text = "Not your turn!";
						}
					}
				}	
				testwinx();
				testwino();
			}
			
			protected function b9(event:MouseEvent):void
			{
				if(pb9.label=="")
				{
					if(turnbox.text == "1" && player1.text == connector.userName)
					{
						pb9.label="X";
						connector.allowParticipantPublish("pb9",true);
						connector.dispatchSyncMessage("pb9", "X", false);
						turnbox.text="2";
						infobox.text=player2.text + "'s turn!";
					}
					else if(turnbox.text == "2" && player2.text == connector.userName)
					{
						pb9.label="O"
						connector.allowParticipantPublish("pb9",true);
						connector.dispatchSyncMessage("pb9", "O", false);
						turnbox.text="1";
						infobox.text=player1.text + "'s turn!";
					}		
					else
					{
						if (player1.text != connector.userName && player2.text != connector.userName)
						{
							infobox.text = "Please wait until next game."
						}
						else
						{
							infobox.text = "Not your turn!";
						}
					}
				}	
				testwinx();
				testwino();
			}
		]]>
	</mx:Script>

	<components:SyncConnector id="connector" syncMessageReceived="syncMessageReceived(event)" caughtUp="caughtUp(event)"/>
	
	<mx:Button id="pb1" x="15" y="15" width="125" height="115" label="X" click="b1(event)"
			   fillAlphas="[0.8, 0.8, 0.8, 0.8]" fontSize="36"/>
	<mx:Button id="pb4" x="15" y="140" width="125" height="115" label="o" click="b4(event)"
			   fillAlphas="[0.8, 0.8, 0.8, 0.8]" fontSize="36"/>
	<mx:Button id="pb7" x="15" y="267" width="125" height="115" label="x" click="b7(event)"
			   fillAlphas="[0.8, 0.8, 0.8, 0.8]" fontSize="36"/>
	<mx:Button id="pb2" x="148" y="15" width="125" height="115" label="o" click="b2(event)"
			   fillAlphas="[0.8, 0.8, 0.8, 0.8]" fontSize="36"/>
	<mx:Button id="pb5" x="148" y="140" width="125" height="115" label="x" click="b5(event)"
			   fillAlphas="[0.8, 0.8, 0.8, 0.8]" fontSize="36"/>
	<mx:Button id="pb8" x="148" y="267" width="125" height="115" label="o" click="b8(event)"
			   fillAlphas="[0.8, 0.8, 0.8, 0.8]" fontSize="36"/>
	<mx:Button id="pb3" x="281" y="15" width="125" height="115" label="x" click="b3(event)"
			   fillAlphas="[0.8, 0.8, 0.8, 0.8]" fontSize="36"/>
	<mx:Button id="pb6" x="281" y="140" width="125" height="115" label="o" click="b6(event)"
			   fillAlphas="[0.8, 0.8, 0.8, 0.8]" fontSize="36"/>
	<mx:Button id="pb9" x="281" y="267" width="125" height="115" label="x" click="b9(event)"
			   fillAlphas="[0.8, 0.8, 0.8, 0.8]" fontSize="36"/>
	<mx:Button id="resetb" x="445" y="358" width="94" height="24" label="Reset" click="resetp(event)"
			   fillAlphas="[0.8, 0.8, 0.8, 0.8]"/>
	<mx:Button id="player2b" x="414" y="88" width="147" height="24" label="Player 2 (O):"
			   click="player2p(event)" color="#0B333C" fillAlphas="[0.8, 0.8, 0.8, 0.8]"/>
	<mx:Button id="player1b" x="414" y="26" width="147" height="24" label="Player 1 (X):"
			   click="player1p(event)" color="#0B333C" fillAlphas="[0.8, 0.8, 0.8, 0.8]"/>
	<mx:TextArea id="player1" x="414" y="52" width="147" height="27" editable="false" />
	<mx:TextArea id="player2" x="414" y="115" width="147" height="28" editable="false" />
	<mx:TextArea id="infobox" x="414" y="205" width="147" height="125" editable="false" />
	<mx:TextArea id="turnbox" x="450" y="250" width="100" height="100" visible="false" />
	
</mx:Application>
