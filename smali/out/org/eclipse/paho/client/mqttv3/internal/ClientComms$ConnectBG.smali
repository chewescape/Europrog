.class Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;
.super Ljava/lang/Object;
.source "ClientComms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectBG"
.end annotation


# instance fields
.field cBg:Ljava/lang/Thread;

.field clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field conPacket:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

.field conToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

.field final this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;)V
    .registers 8
    .param p2, "cc"    # Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;
    .param p3, "cToken"    # Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .param p4, "cPacket"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    .prologue
    const/4 v0, 0x0

    .line 557
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 552
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 553
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->cBg:Ljava/lang/Thread;

    .line 558
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 559
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->conToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 560
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->conPacket:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    .line 561
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "MQTT Con: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->cBg:Ljava/lang/Thread;

    .line 562
    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v4, 0x0

    .line 569
    const-string v7, "connectBG:run"

    .line 570
    .local v7, "methodName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 572
    .local v8, "mqttEx":Lorg/eclipse/paho/client/mqttv3/MqttException;
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$0()Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectBG:run"

    const-string v3, "220"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    :try_start_13
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$2(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->getOutstandingDelTokens()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-result-object v10

    .line 579
    .local v10, "toks":[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1e
    array-length v0, v10

    if-lt v6, v0, :cond_f0

    .line 584
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$2(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->conToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->conPacket:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;->saveToken(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V

    .line 589
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$3(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$4(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)I

    move-result v1

    aget-object v9, v0, v1

    .line 590
    .local v9, "networkModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    invoke-interface {v9}, Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;->start()V

    .line 591
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-static {v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$5(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    move-result-object v3

    iget-object v11, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-static {v11}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$2(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    move-result-object v11

    invoke-interface {v9}, Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;->getInputStream()Ljava/io/InputStream;

    move-result-object v12

    invoke-direct {v1, v2, v3, v11, v12}, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Ljava/io/InputStream;)V

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$6(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;)V

    .line 592
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$7(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "MQTT Rec: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsReceiver;->start(Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->clientComms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-static {v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$5(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    move-result-object v3

    iget-object v11, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-static {v11}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$2(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;

    move-result-object v11

    invoke-interface {v9}, Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v1, v2, v3, v11, v12}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Lorg/eclipse/paho/client/mqttv3/internal/CommsTokenStore;Ljava/io/OutputStream;)V

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$8(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;)V

    .line 594
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$9(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "MQTT Snd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsSender;->start(Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$10(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "MQTT Call: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/CommsCallback;->start(Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->conPacket:Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->conToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->internalSend(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    :try_end_e6
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_13 .. :try_end_e6} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_e6} :catch_10e

    .line 607
    .end local v6    # "i":I
    .end local v9    # "networkModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    .end local v10    # "toks":[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    :goto_e6
    if-eqz v8, :cond_ef

    .line 608
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->conToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {v0, v1, v8}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->shutdownConnection(Lorg/eclipse/paho/client/mqttv3/MqttToken;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 610
    :cond_ef
    return-void

    .line 580
    .restart local v6    # "i":I
    .restart local v10    # "toks":[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    :cond_f0
    :try_start_f0
    aget-object v0, v10, v6

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->setException(Lorg/eclipse/paho/client/mqttv3/MqttException;)V
    :try_end_f8
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_f0 .. :try_end_f8} :catch_fc
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_f8} :catch_10e

    .line 579
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1e

    .line 597
    .end local v6    # "i":I
    .end local v10    # "toks":[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    :catch_fc
    move-exception v5

    .line 599
    .local v5, "ex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$0()Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectBG:run"

    const-string v3, "212"

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 600
    move-object v8, v5

    goto :goto_e6

    .line 601
    .end local v5    # "ex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :catch_10e
    move-exception v5

    .line 603
    .local v5, "ex":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$0()Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectBG:run"

    const-string v3, "209"

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 604
    invoke-static {v5}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(Ljava/lang/Throwable;)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v8

    goto :goto_e6
.end method

.method start()V
    .registers 2

    .prologue
    .line 565
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms$ConnectBG;->cBg:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 566
    return-void
.end method
