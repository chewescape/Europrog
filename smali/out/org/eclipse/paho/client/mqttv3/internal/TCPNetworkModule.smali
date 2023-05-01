.class public Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;
.super Ljava/lang/Object;
.source "TCPNetworkModule.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field static class$0:Ljava/lang/Class;

.field private static final log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private conTimeout:I

.field private factory:Ljavax/net/SocketFactory;

.field private host:Ljava/lang/String;

.field private port:I

.field protected socket:Ljava/net/Socket;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 36
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.TCPNetworkModule"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_1d

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->CLASS_NAME:Ljava/lang/String;

    .line 37
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    .line 36
    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljavax/net/SocketFactory;Ljava/lang/String;ILjava/lang/String;)V
    .registers 6
    .param p1, "factory"    # Ljavax/net/SocketFactory;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "resourceContext"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-interface {v0, p4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->factory:Ljavax/net/SocketFactory;

    .line 53
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->host:Ljava/lang/String;

    .line 54
    iput p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->port:I

    .line 56
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .registers 2
    .param p1, "timeout"    # I

    .prologue
    .line 105
    iput p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->conTimeout:I

    .line 106
    return-void
.end method

.method public start()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 62
    const-string v6, "start"

    .line 67
    .local v6, "methodName":Ljava/lang/String;
    :try_start_2
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "start"

    const-string v3, "252"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->host:Ljava/lang/String;

    aput-object v9, v4, v8

    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->port:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v4, v8

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/Long;

    iget v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->conTimeout:I

    mul-int/lit16 v10, v10, 0x3e8

    int-to-long v10, v10

    invoke-direct {v9, v10, v11}, Ljava/lang/Long;-><init>(J)V

    aput-object v9, v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    new-instance v7, Ljava/net/InetSocketAddress;

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->host:Ljava/lang/String;

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->port:I

    invoke-direct {v7, v0, v1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 69
    .local v7, "sockaddr":Ljava/net/SocketAddress;
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->factory:Ljavax/net/SocketFactory;

    invoke-virtual {v0}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->socket:Ljava/net/Socket;

    .line 70
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->socket:Ljava/net/Socket;

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->conTimeout:I

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v7, v1}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_46
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_46} :catch_47

    .line 81
    return-void

    .line 76
    .end local v7    # "sockaddr":Ljava/net/SocketAddress;
    :catch_47
    move-exception v5

    .line 78
    .local v5, "ex":Ljava/net/ConnectException;
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "start"

    const-string v3, "250"

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 79
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d67

    invoke-direct {v0, v1, v5}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(ILjava/lang/Throwable;)V

    throw v0
.end method

.method public stop()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 98
    :cond_9
    return-void
.end method
