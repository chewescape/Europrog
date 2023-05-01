.class public Lorg/eclipse/paho/client/mqttv3/TimerPingSender;
.super Ljava/lang/Object;
.source "TimerPingSender.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttPingSender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/client/mqttv3/TimerPingSender$PingTask;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field static class$0:Ljava/lang/Class;

.field private static final log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field private timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 33
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.eclipse.paho.client.mqttv3.TimerPingSender"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_1d

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->CLASS_NAME:Ljava/lang/String;

    .line 34
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    .line 33
    :catch_1d
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static access$0()Lorg/eclipse/paho/client/mqttv3/logging/Logger;
    .registers 1

    .prologue
    .line 34
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-object v0
.end method

.method static access$1()Ljava/lang/String;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static access$2(Lorg/eclipse/paho/client/mqttv3/TimerPingSender;)Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    return-object v0
.end method


# virtual methods
.method public init(Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)V
    .registers 4
    .param p1, "comms"    # Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .prologue
    .line 40
    if-nez p1, :cond_a

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ClientComms cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_a
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 44
    return-void
.end method

.method public schedule(J)V
    .registers 6
    .param p1, "delayInMilliseconds"    # J

    .prologue
    .line 68
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->timer:Ljava/util/Timer;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/TimerPingSender$PingTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/eclipse/paho/client/mqttv3/TimerPingSender$PingTask;-><init>(Lorg/eclipse/paho/client/mqttv3/TimerPingSender;Lorg/eclipse/paho/client/mqttv3/TimerPingSender$PingTask;)V

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 69
    return-void
.end method

.method public start()V
    .registers 9

    .prologue
    .line 47
    const-string v1, "start"

    .line 48
    .local v1, "methodName":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v2

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "clientid":Ljava/lang/String;
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "start"

    const-string v5, "659"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    new-instance v2, Ljava/util/Timer;

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "MQTT Ping: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->timer:Ljava/util/Timer;

    .line 55
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->timer:Ljava/util/Timer;

    new-instance v3, Lorg/eclipse/paho/client/mqttv3/TimerPingSender$PingTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lorg/eclipse/paho/client/mqttv3/TimerPingSender$PingTask;-><init>(Lorg/eclipse/paho/client/mqttv3/TimerPingSender;Lorg/eclipse/paho/client/mqttv3/TimerPingSender$PingTask;)V

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getKeepAlive()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 56
    return-void
.end method

.method public stop()V
    .registers 7

    .prologue
    .line 59
    const-string v0, "stop"

    .line 61
    .local v0, "methodName":Ljava/lang/String;
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "stop"

    const-string v4, "661"

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->timer:Ljava/util/Timer;

    if-eqz v1, :cond_17

    .line 63
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;->timer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 65
    :cond_17
    return-void
.end method
