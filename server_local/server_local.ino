#include <ESP8266WiFi.h>
#include <Ticker.h>
#include "io.h"
#include "so.h"


int watchdogCount = 0;

Ticker secondTick;

char ssid[]  = "";
char senha[] = "";

IPAddress ip(192,168,0,106); //COLOQUE UMA FAIXA DE IP DISPONÍVEL DO SEU ROTEADOR. EX: 192.168.1.110 **** ISSO VARIA, NO MEU CASO É: 192.168.0.175
IPAddress gateway(192,168,0,1); //GATEWAY DE CONEXÃO (ALTERE PARA O GATEWAY DO SEU ROTEADOR)
IPAddress subnet(255,255,255,0); //MASCARA DE REDE

boolean Status1 = HIGH;
boolean Status2 = HIGH;
boolean Status3 = HIGH;
boolean Status4 = HIGH;
boolean Status5 = HIGH;
boolean Status6 = HIGH;
boolean Status7 = HIGH;
boolean Status8 = HIGH;

#define S1  D5
#define LED1 D4
int saida = 0;
int count = 300;
WiFiServer server(80);


void ISRwatchdog(){
  watchdogCount++;
  if(watchdogCount==4){
    Serial.println();
    Serial.println("Watchdog time foi ativado");
    ESP.reset();
  }  
}

void setup() {
    soInit();
    pinMode(D4,OUTPUT);
    pinMode(S1,INPUT);
    
    Serial.begin(115200);
    secondTick.attach(1,ISRwatchdog);
    delay(10);
    conectaWiFi(ssid,senha);
    
    server.begin();
    Serial.println("Servidor inicializado");
}

void loop() {
  
  WiFiClient client = server.available();
  if(!client){
    return;
  }
  while(!client.available()){
    delay(1);
  }
  
  String req = client.readStringUntil('\r');
  Serial.println(req);
  client.flush();
  watchdogCount = 0;
  yield();
  delay(10);
//------------------------------  

if(Status1){  
   if(req.indexOf("rele1_on") != -1){
          saida=saida | 0b00000001;
          soWrite(saida);
          Status1 = 0;
        }
}
if(!Status1){    
   if(req.indexOf("rele1_off") != -1){
          saida=saida ^ 0b00000001;
          soWrite(saida);
          Status1 = 1;
        }
}
//-------------------------------

if(Status2){  
   if(req.indexOf("rele2_on") != -1){
          saida=saida | 0b00000010;
          soWrite(saida);
          Status2 = 0;
        }
}
if(!Status2){    
   if(req.indexOf("rele2_off") != -1){
          saida=saida ^ 0b00000010;
          soWrite(saida);
          Status2 = 1;
        }
}
//------------------------------  
if(Status3){  
   if(req.indexOf("rele3_on") != -1){
          saida=saida | 0b00000100;
          soWrite(saida);
          Status3 = 0;
        }
}
if(!Status3){    
   if(req.indexOf("rele3_off") != -1){
          saida=saida ^ 0b00000100;
          soWrite(saida);
          Status3 = 1;
        }
}
//------------------------------  
if(Status4){  
   if(req.indexOf("rele4_on") != -1){
          saida=saida | 0b00001000;
          soWrite(saida);
          Status4 = 0;
        }
}
if(!Status4){    
   if(req.indexOf("rele4_off") != -1){
          saida=saida ^ 0b00001000;
          soWrite(saida);
          Status4 = 1;
        }
}
//------------------------------  
if(Status5){  
   if(req.indexOf("rele5_on") != -1){
          saida=saida | 0b00010000;
          soWrite(saida);
          Status5 = 0;
        }
}
if(!Status5){    
   if(req.indexOf("rele5_off") != -1){
          saida=saida ^ 0b00010000;
          soWrite(saida);
          Status5 = 1;
        }
}
//------------------------------  
if(Status6){  
   if(req.indexOf("rele6_on") != -1){
          saida=saida | 0b00100000;
          soWrite(saida);
          Status6 = 0;
        }
}
if(!Status6){    
   if(req.indexOf("rele6_off") != -1){
          saida=saida ^ 0b00100000;
          soWrite(saida);
          Status6 = 1;
        }
}
//------------------------------  
if(Status7){  
   if(req.indexOf("rele7_on") != -1){
          saida=saida | 0b01000000;
          soWrite(saida);
          Status7 = 0;
        }
}
if(!Status7){    
   if(req.indexOf("rele7_off") != -1){
          saida=saida ^ 0b01000000;
          soWrite(saida);
          Status7 = 1;
        }
}
//------------------------------  
if(Status8){  
   if(req.indexOf("rele8_on") != -1){
          saida=saida | 0b10000000;
          soWrite(saida);
          Status8 = 0;
        }
}
if(!Status8){    
   if(req.indexOf("rele8_off") != -1){
          saida=saida ^ 0b10000000;
          soWrite(saida);
          Status8 = 1;
        }
}
//------------------------------ 
  
  client.println("HTTP/1.1 200 OK"); //ESCREVE PARA O CLIENTE A VERSÃO DO HTTP
  client.println("Content-Type: text/html"); //ESCREVE PARA O CLIENTE O TIPO DE CONTEÚDO(texto/html)
  client.println("");
  client.println("<!DOCTYPE HTML>"); //INFORMA AO NAVEGADOR A ESPECIFICAÇÃO DO HTML
  client.println("<html>"); //ABRE A TAG "html"
  client.println("<meta http-equiv='refresh' content='2'>");
  client.println("<h1><center>Rede local com o ESP8266</center></h1>");
  //client.println("<h2>rede local utilizada para automacao residencial</h2>");

  client.println("<br></br>");//pula linha
  client.println("<style>html, body {font-family: sans-serif;}body {max-width: 40em;background-color:#fff;}main {font-size: 50px;}button {font: inherit;cursor: pointer;font-size: 5em;text-align: center;}.botao_on {display: inline-block;text-decoration: none;background: #06F;text-align: center;color:#FFF;font-size: 5em;width:940px;height:200px;border:0;text-shadow: 10px 10px 10px rgba(0,0,0,0.5);border-radius:4em;box-shadow: -10px -10px 0 -5px  #00F,inset 10px 10px 0 10px #00F;transform: translate(5px, 5px);}.botao_off {display: inline-block;text-decoration: none;text-align: center;background: #c00;color:#FFF;font-size: 5em;width:940px;height:200px;border:0;text-shadow: 10px 10px 10px rgba(0,0,0,0.5);border-radius:4em;box-shadow: 10px 10px 0 10px  #800;}</style>");
//-----------------------------------------SENSOR-------------------------------------------------------------------------------------------
  if(digitalRead(S1) == LOW){
    client.println("<p><font size='5'>Sensor 1<button style='background: #06F; color:white;border-radius:0.4em;width:100px;height:100px;align: left;'></button></p>");
    //client.println("<img src='Circulo_verde.png' height='20%' width='20%'></>");
      
    }
  else{
    client.println("<p><font size='5'>Sensor 1<button style='background: #C00; color:white;border-radius:0.4em;width:100px;height:100px;align: left;'></button></p>");
  }
  
//----------------------------------------BOTÕES--------------------------------------------------------------------------------------------     
  if(!Status1)
  client.println("<p><font size='5'>Rele 1 <a href =\"rele1_off\"><button class= 'botao_on' >ON</button></a></p>");
  else
  client.println("<p><font size='5'>Rele 1 <a href =\"rele1_on\"><button class= 'botao_off' >OFF</button></a></p>");

  if(!Status2)
  client.println("<p><font size='5'>Rele 2 <a href =\"rele2_off\"><button class= 'botao_on' >ON</button></a></p>");
  else
  client.println("<p><font size='5'>Rele 2 <a href =\"rele2_on\"><button class= 'botao_off' >OFF</button></a></p>");

  if(!Status3)
  client.println("<p><font size='5'>Rele 3 <a href =\"rele3_off\"><button class= 'botao_on' >ON</button></a></p>");
  else
  client.println("<p><font size='5'>Rele 3 <a href =\"rele3_on\"><button class= 'botao_off' >OFF</button></a></p>");

  if(!Status4)
  client.println("<p><font size='5'>Rele 4 <a href =\"rele4_off\"><button class= 'botao_on' >ON</button></a></p>");
  else
  client.println("<p><font size='5'>Rele 4 <a href =\"rele4_on\"><button class= 'botao_off' >OFF</button></a></p>");
  
  if(!Status5)
  client.println("<p><font size='5'>Rele 5 <a href =\"rele5_off\"><button class= 'botao_on' >ON</button></a></p>");
  else
  client.println("<p><font size='5'>Rele 5 <a href =\"rele5_on\"><button class= 'botao_off' >OFF</button></a></p>");
  
  if(!Status6)
  client.println("<p><font size='5'>Rele 6 <a href =\"rele6_off\"><button class= 'botao_on' >ON</button></a></p>");
  else
  client.println("<p><font size='5'>Rele 6 <a href =\"rele6_on\"><button class= 'botao_off' >OFF</button></a></p>");
  
  if(!Status7)
  client.println("<p><font size='5'>Rele 7 <a href =\"rele7_off\"><button class= 'botao_on' >ON</button></a></p>");
  else
  client.println("<p><font size='5'>Rele 7 <a href =\"rele7_on\"><button class= 'botao_off' >OFF</button></a></p>");
  
  if(!Status8)
  client.println("<p><font size='5'>Rele 8 <a href =\"rele8_off\"><button class= 'botao_on' >ON</button></a></p>");
  else
  client.println("<p><font size='5'>Rele 8 <a href =\"rele8_on\"><button class= 'botao_off' >OFF</button></a></p>");
  
  client.println("</html>");
  
}
    

void conectaWiFi(char SSID[],char SENHA[]){
   
    Serial.print("Conectando a rede ");
    Serial.println(SSID);
    
    WiFi.begin(SSID,SENHA);
    WiFi.config(ip, gateway, subnet); //PASSA OS PARÂMETROS PARA A FUNÇÃO QUE VAI SETAR O IP FIXO NO NODEMCU
 
    while(WiFi.status()!=WL_CONNECTED){
      delay(200);
      Serial.print(".");
      digitalWrite(LED1,~LED1); 
    }
    
    Serial.println(""); //PULA UMA LINHA NA JANELA SERIAL
    Serial.print("Conectado a rede sem fio "); //ESCREVE O TEXTO NA SERIAL
    Serial.println(ssid); //ESCREVE O NOME DA REDE NA SERIAL
    digitalWrite(LED1,LOW);
    server.begin(); //INICIA O SERVIDOR PARA RECEBER DADOS NA PORTA DEFINIDA EM "WiFiServer server(porta);"
    Serial.println("Servidor iniciado"); //ESCREVE O TEXTO NA SERIAL
     
    Serial.print("IP para se conectar ao NodeMCU: "); //ESCREVE O TEXTO NA SERIAL
    Serial.print("http://"); //ESCREVE O TEXTO NA SERIAL
    Serial.println(WiFi.localIP()); //ESCREVE NA SERIAL O IP RECEBIDO DENTRO DA REDE SEM FIO (O IP NESSA PRÁTICA É RECEBIDO DE FORMA AUTOMÁTICA)
    watchdogCount = 0;
    yield();
}
