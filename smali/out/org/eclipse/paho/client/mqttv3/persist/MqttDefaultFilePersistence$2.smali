.class Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence$2;
.super Ljava/lang/Object;
.source "MqttDefaultFilePersistence.java"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field final this$0:Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;)V
    .registers 2

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence$2;->this$0:Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .registers 4
    .param p1, "f"    # Ljava/io/File;

    .prologue
    .line 267
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".bup"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
