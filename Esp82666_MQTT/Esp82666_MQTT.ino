// -----------------------------------------------------------------------
//   Copyright (C) Italo Barros 2020
// -----------------------------------------------------------------------
//   Arquivo: Esp8266_MQTT.c
//            Codigo para utilização de um ESP NODEMCU em automação residencial 
//   Autor:   Italo Barbosa Barros
//            https://www.linkedin.com/in/italobbarros/
//   Licença: GNU GPL 2
// -----------------------------------------------------------------------
//   This program is free software; you can redistribute it and/or modify
//   it under the terms of the GNU General Public License as published by
//   the Free Software Foundation; version 2 of the License.
//
//   This program is distributed in the hope that it will be useful,
//   but WITHOUT ANY WARRANTY; without even the implied warranty of
//   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//   GNU General Public License for more details.
// -----------------------------------------------------------------------
#include <ESP8266WiFi.h>
#include <PubSubClient.h>

#include "io.h"
#include "so.h"

#define DEBUG


//informações da rede WIFI
const char* ssid = "";     //SSID da rede WIFI
const char* password = "";   //senha da rede wifi

const char* mqttServer = "";                           //server
const char* mqttUser = "" ;                                //user
const char* mqttPassword = "";        //password
const int mqttPort = 1883;                                            //port

const char* mqttTopicSub1 = "italobbarros/feeds/L1";           //tópico que sera assinado
const char* mqttTopicSub2 = "italobbarros/feeds/L2";           //tópico que sera assinado
const char* mqttTopicSub3 = "italobbarros/feeds/L3";           //tópico que sera assinado
const char* mqttTopicSub4 = "italobbarros/feeds/L4";           //tópico que sera assinado
const char* mqttTopicSub5 = "italobbarros/feeds/L5";           //tópico que sera assinado
const char* mqttTopicSub6 = "italobbarros/feeds/L6";           //tópico que sera assinado
const char* mqttTopicSub7 = "italobbarros/feeds/L7";           //tópico que sera assinado
const char* mqttTopicSub8 = "italobbarros/feeds/L8";           //tópico que sera assinado

int saida;
WiFiClient espClient;
PubSubClient client(espClient);

void setup() {
  soInit ();
  pinMode(D4,OUTPUT);

  Serial.begin(115200);

  WiFi.begin(ssid, password);

  while (WiFi.status() != WL_CONNECTED) {
    delay(500);
#ifdef DEBUG
    Serial.println("Conectando ao WiFi..");
#endif
  }
#ifdef DEBUG
  Serial.println("Conectado na rede WiFi");
#endif

  client.setServer(mqttServer, mqttPort);
  client.setCallback(callback);

  while (!client.connected()) {
#ifdef DEBUG
    Serial.println("Conectando ao Broker MQTT...");
#endif

    if (client.connect("ESP8266Client", mqttUser, mqttPassword )) {
#ifdef DEBUG
      Serial.println("Conectado");
#endif

    } else {
#ifdef DEBUG
      Serial.print("falha estado  ");
      Serial.print(client.state());
#endif
      delay(2000);

    }
  }

  //subscreve no tópico
  client.subscribe(mqttTopicSub1);
  client.subscribe(mqttTopicSub2);
  client.subscribe(mqttTopicSub3);
  client.subscribe(mqttTopicSub4);
  client.subscribe(mqttTopicSub5);
  client.subscribe(mqttTopicSub6);
  client.subscribe(mqttTopicSub7);
  client.subscribe(mqttTopicSub8);
}
void callback(char* topic, byte* payload, unsigned int length) {

  //armazena msg recebida em uma string
  payload[length] = '\0';
  String strMSG = String((char*)payload);

  #ifdef DEBUG
  Serial.print("Mensagem chegou do tópico: ");
  Serial.println(topic);
  Serial.print("Mensagem:");
  Serial.print(strMSG);
  Serial.println();
  Serial.println("-----------------------");
  #endif

  //aciona saídas conforme msg recebida 
  if (String(topic)=="italobbarros/feeds/L1"){
           if (strMSG == "0"){         //se msg "0" ouve o acionamento do primeiro rele
              saida=saida | 0b00000001;
              soWrite(saida);
           //digitalWrite(L2, LOW);  //coloca saída em LOW para ligar a Lampada - > o módulo RELE usado tem acionamento invertido. Se necessário ajuste para o seu modulo
        }else if (strMSG == "1"){   //se msg "1"
              saida=saida ^ 0b00000001;
              soWrite(saida);
       }
    
  }
  if (String(topic)=="italobbarros/feeds/L2"){
           if (strMSG == "0"){         //se msg "0" ouve o acionamento do primeiro rele
              saida=saida | 0b00000010;
              soWrite(saida);
           //digitalWrite(L2, LOW);  //coloca saída em LOW para ligar a Lampada - > o módulo RELE usado tem acionamento invertido. Se necessário ajuste para o seu modulo
        }else if (strMSG == "1"){   //se msg "1"
              saida=saida ^ 0b00000010;
              soWrite(saida);
       }
   
  }
   if (String(topic)=="italobbarros/feeds/L3"){
           if (strMSG == "0"){         //se msg "0" ouve o acionamento do primeiro rele
              saida=saida | 0b00000100;
              soWrite(saida);
           //digitalWrite(L2, LOW);  //coloca saída em LOW para ligar a Lampada - > o módulo RELE usado tem acionamento invertido. Se necessário ajuste para o seu modulo
        }else if (strMSG == "1"){   //se msg "1"
              saida=saida ^ 0b00000100;
              soWrite(saida);
       }
   
  }
   if (String(topic)=="italobbarros/feeds/L4"){
           if (strMSG == "0"){         //se msg "0" ouve o acionamento do primeiro rele
              saida=saida | 0b00001000;
              soWrite(saida);
           //digitalWrite(L2, LOW);  //coloca saída em LOW para ligar a Lampada - > o módulo RELE usado tem acionamento invertido. Se necessário ajuste para o seu modulo
        }else if (strMSG == "1"){   //se msg "1"
              saida=saida ^ 0b00001000;
              soWrite(saida);
       }
   
  }
   if (String(topic)=="italobbarros/feeds/L5"){
           if (strMSG == "0"){         //se msg "0" ouve o acionamento do primeiro rele
              saida=saida | 0b00010000;
              soWrite(saida);
           //digitalWrite(L2, LOW);  //coloca saída em LOW para ligar a Lampada - > o módulo RELE usado tem acionamento invertido. Se necessário ajuste para o seu modulo
        }else if (strMSG == "1"){   //se msg "1"
              saida=saida ^ 0b00010000;
              soWrite(saida);
       }
   
  }
   if (String(topic)=="italobbarros/feeds/L6"){
           if (strMSG == "0"){         //se msg "0" ouve o acionamento do primeiro rele
              saida=saida | 0b00100000;
              soWrite(saida);
           //digitalWrite(L2, LOW);  //coloca saída em LOW para ligar a Lampada - > o módulo RELE usado tem acionamento invertido. Se necessário ajuste para o seu modulo
        }else if (strMSG == "1"){   //se msg "1"
              saida=saida ^ 0b00100000;
              soWrite(saida);
       }
   
  }
  if (String(topic)=="italobbarros/feeds/L7"){
           if (strMSG == "0"){         //se msg "0" ouve o acionamento do primeiro rele
              saida=saida | 0b01000000;
              soWrite(saida);
           //digitalWrite(L2, LOW);  //coloca saída em LOW para ligar a Lampada - > o módulo RELE usado tem acionamento invertido. Se necessário ajuste para o seu modulo
        }else if (strMSG == "1"){   //se msg "1"
              saida=saida ^ 0b01000000;
              soWrite(saida);
       }
   
  }
  if (String(topic)=="italobbarros/feeds/L8"){
           if (strMSG == "0"){         //se msg "0" ouve o acionamento do primeiro rele
              saida=saida | 0b10000000;
              soWrite(saida);
           //digitalWrite(L2, LOW);  //coloca saída em LOW para ligar a Lampada - > o módulo RELE usado tem acionamento invertido. Se necessário ajuste para o seu modulo
        }else if (strMSG == "1"){   //se msg "1"
              saida=saida ^ 0b10000000;
              soWrite(saida);
       }
   
  }
     
}
void reconect(void) {
  //Enquanto estiver desconectado
  while (!client.connected()) {
    #ifdef DEBUG
    Serial.print("Tentando conectar ao servidor MQTT");
    #endif
     
    bool conectado = strlen(mqttUser) > 0 ?
                     client.connect("ESP8266Client", mqttUser, mqttPassword) :
                     client.connect("ESP8266Client");

    if(conectado) {
      #ifdef DEBUG
      Serial.println(" Conectado!");
      #endif
      //subscreve no tópico
      client.subscribe(mqttTopicSub1);
      client.subscribe(mqttTopicSub2);
      client.subscribe(mqttTopicSub3);
      client.subscribe(mqttTopicSub4);
      client.subscribe(mqttTopicSub5);
      client.subscribe(mqttTopicSub6);
      client.subscribe(mqttTopicSub7);
      client.subscribe(mqttTopicSub8);
    } else {
      #ifdef DEBUG
      Serial.println("Falha durante a conexão.Code: ");
      Serial.println( String(client.state()).c_str());
      Serial.println("Tentando novamente em 10 s");
      #endif
      //Aguarda 10 segundos 
      delay(10000);
    }
  }
}
void loop() {
  if (!client.connected()) {
    reconect();//função pra reconectar ao servido MQTT
  }
  client.loop();
}
