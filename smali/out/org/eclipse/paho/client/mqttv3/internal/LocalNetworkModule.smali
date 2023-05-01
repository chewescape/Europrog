.class public Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;
.super Ljava/lang/Object;
.source "LocalNetworkModule.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;


# static fields
.field static class$0:Ljava/lang/Class;


# instance fields
.field private brokerName:Ljava/lang/String;

.field private localAdapter:Ljava/lang/Object;

.field private localListener:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "brokerName"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->brokerName:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const/4 v2, 0x0

    .line 65
    .local v2, "stream":Ljava/io/InputStream;
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localListener:Ljava/lang/Class;

    const-string v4, "getClientInputStream"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 66
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localAdapter:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/io/InputStream;

    move-object v2, v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    .line 69
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_19
    return-object v2

    .line 67
    :catch_1a
    move-exception v3

    goto :goto_19
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    const/4 v2, 0x0

    .line 75
    .local v2, "stream":Ljava/io/OutputStream;
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localListener:Ljava/lang/Class;

    const-string v4, "getClientOutputStream"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 76
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localAdapter:Ljava/lang/Object;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/io/OutputStream;

    move-object v2, v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    .line 79
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_19
    return-object v2

    .line 77
    :catch_1a
    move-exception v3

    goto :goto_19
.end method

.method public start()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x7d67

    .line 48
    const-string v1, "com.ibm.mqttdirect.modules.local.bindings.localListener"

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->isClassAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 49
    invoke-static {v6}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1

    .line 52
    :cond_f
    :try_start_f
    const-string v1, "com.ibm.mqttdirect.modules.local.bindings.localListener"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localListener:Ljava/lang/Class;

    .line 53
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localListener:Ljava/lang/Class;

    const-string v3, "connect"

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->class$0:Ljava/lang/Class;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_21} :catch_54

    if-nez v1, :cond_2b

    :try_start_23
    const-string v1, "java.lang.String"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_28
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_28} :catch_49
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_28} :catch_54

    move-result-object v1

    :try_start_29
    sput-object v1, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->class$0:Ljava/lang/Class;

    :cond_2b
    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 54
    .local v0, "connect_m":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->brokerName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localAdapter:Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_40} :catch_54

    .line 57
    .end local v0    # "connect_m":Ljava/lang/reflect/Method;
    :goto_40
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localAdapter:Ljava/lang/Object;

    if-nez v1, :cond_56

    .line 58
    invoke-static {v6}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1

    .line 53
    :catch_49
    move-exception v1

    :try_start_4a
    new-instance v2, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_54} :catch_54

    .line 55
    :catch_54
    move-exception v1

    goto :goto_40

    .line 60
    :cond_56
    return-void
.end method

.method public stop()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localAdapter:Ljava/lang/Object;

    if-eqz v1, :cond_17

    .line 85
    :try_start_4
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localListener:Ljava/lang/Class;

    const-string v2, "close"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 86
    .local v0, "m":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;->localAdapter:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_17} :catch_18

    .line 90
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :cond_17
    :goto_17
    return-void

    .line 87
    :catch_18
    move-exception v1

    goto :goto_17
.end method
