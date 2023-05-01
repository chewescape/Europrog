.class public abstract Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;
.super Ljava/lang/Object;
.source "MessageCatalog.java"


# static fields
.field private static INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .registers 3
    .param p0, "id"    # I

    .prologue
    .line 25
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    if-nez v1, :cond_1a

    .line 26
    const-string v1, "java.util.ResourceBundle"

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->isClassAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 30
    :try_start_c
    const-string v1, "org.eclipse.paho.client.mqttv3.internal.ResourceBundleCatalog"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    sput-object v1, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1a} :catch_21

    .line 42
    :cond_1a
    :goto_1a
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    invoke-virtual {v1, p0}, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->getLocalizedMessage(I)Ljava/lang/String;

    move-result-object v1

    :goto_20
    return-object v1

    .line 31
    :catch_21
    move-exception v0

    .line 32
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_20

    .line 34
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_25
    const-string v1, "org.eclipse.paho.client.mqttv3.internal.MIDPCatalog"

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->isClassAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 36
    :try_start_2d
    const-string v1, "org.eclipse.paho.client.mqttv3.internal.MIDPCatalog"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    sput-object v1, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_3b} :catch_3c

    goto :goto_1a

    .line 37
    :catch_3c
    move-exception v0

    .line 38
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_20
.end method


# virtual methods
.method protected abstract getLocalizedMessage(I)Ljava/lang/String;
.end method
