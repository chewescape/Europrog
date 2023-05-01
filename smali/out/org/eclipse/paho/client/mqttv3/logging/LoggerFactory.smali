.class public Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field public static final MQTT_CLIENT_MSG_CAT:Ljava/lang/String; = "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

.field static class$0:Ljava/lang/Class;

.field static class$1:Ljava/lang/Class;

.field private static jsr47LoggerClassName:Ljava/lang/String;

.field private static overrideloggerClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_c

    :try_start_4
    const-string v0, "org.eclipse.paho.client.mqttv3.logging.LoggerFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_9} :catch_1a

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->class$0:Ljava/lang/Class;

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->CLASS_NAME:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->overrideloggerClassName:Ljava/lang/String;

    .line 52
    const-string v0, "org.eclipse.paho.client.mqttv3.logging.JSR47Logger"

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->jsr47LoggerClassName:Ljava/lang/String;

    return-void

    .line 46
    :catch_1a
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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;
    .registers 7
    .param p0, "messageCatalogName"    # Ljava/lang/String;
    .param p1, "loggerID"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->overrideloggerClassName:Ljava/lang/String;

    .line 67
    .local v1, "loggerClassName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 69
    .local v0, "logger":Lorg/eclipse/paho/client/mqttv3/logging/Logger;
    if-nez v1, :cond_7

    .line 70
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->jsr47LoggerClassName:Ljava/lang/String;

    .line 73
    :cond_7
    invoke-static {p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    .line 76
    if-nez v0, :cond_1c

    .line 77
    new-instance v2, Ljava/util/MissingResourceException;

    const-string v3, "Error locating the logging class"

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->CLASS_NAME:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1c
    return-object v0
.end method

.method private static getLogger(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;
    .registers 12
    .param p0, "loggerClassName"    # Ljava/lang/String;
    .param p1, "messageCatalog"    # Ljava/util/ResourceBundle;
    .param p2, "loggerID"    # Ljava/lang/String;
    .param p3, "resourceName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 94
    const/4 v4, 0x0

    .line 95
    .local v4, "logger":Lorg/eclipse/paho/client/mqttv3/logging/Logger;
    const/4 v3, 0x0

    .line 98
    .local v3, "logClass":Ljava/lang/Class;
    :try_start_3
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3 .. :try_end_6} :catch_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_6} :catch_19

    move-result-object v3

    .line 104
    if-eqz v3, :cond_14

    .line 107
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object v4, v0
    :try_end_11
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_11} :catch_1c
    .catch Ljava/lang/InstantiationException; {:try_start_9 .. :try_end_11} :catch_1f
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_9 .. :try_end_11} :catch_22
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_11} :catch_25

    .line 117
    invoke-interface {v4, p1, p2, p3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->initialise(Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    move-object v6, v4

    .line 120
    :goto_15
    return-object v6

    .line 99
    :catch_16
    move-exception v5

    .local v5, "ncdfe":Ljava/lang/NoClassDefFoundError;
    move-object v6, v7

    .line 100
    goto :goto_15

    .line 101
    .end local v5    # "ncdfe":Ljava/lang/NoClassDefFoundError;
    :catch_19
    move-exception v1

    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    move-object v6, v7

    .line 102
    goto :goto_15

    .line 108
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    :catch_1c
    move-exception v2

    .local v2, "e":Ljava/lang/IllegalAccessException;
    move-object v6, v7

    .line 109
    goto :goto_15

    .line 110
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_1f
    move-exception v2

    .local v2, "e":Ljava/lang/InstantiationException;
    move-object v6, v7

    .line 111
    goto :goto_15

    .line 112
    .end local v2    # "e":Ljava/lang/InstantiationException;
    :catch_22
    move-exception v2

    .local v2, "e":Ljava/lang/ExceptionInInitializerError;
    move-object v6, v7

    .line 113
    goto :goto_15

    .line 114
    .end local v2    # "e":Ljava/lang/ExceptionInInitializerError;
    :catch_25
    move-exception v2

    .local v2, "e":Ljava/lang/SecurityException;
    move-object v6, v7

    .line 115
    goto :goto_15
.end method

.method public static getLoggingProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v5, 0x0

    .line 135
    .local v5, "result":Ljava/lang/String;
    :try_start_1
    const-string v6, "java.util.logging.LogManager"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 136
    .local v1, "logManagerClass":Ljava/lang/Class;
    const-string v6, "getLogManager"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Class;

    invoke-virtual {v1, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 137
    .local v3, "m1":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 138
    .local v2, "logManagerInstance":Ljava/lang/Object;
    const-string v7, "getProperty"

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->class$1:Ljava/lang/Class;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_46

    if-nez v6, :cond_28

    :try_start_20
    const-string v6, "java.lang.String"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_25
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_25} :catch_3b
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_25} :catch_46

    move-result-object v6

    :try_start_26
    sput-object v6, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->class$1:Ljava/lang/Class;

    :cond_28
    aput-object v6, v8, v9

    invoke-virtual {v1, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 139
    .local v4, "m2":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "result":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 144
    .end local v1    # "logManagerClass":Ljava/lang/Class;
    .end local v2    # "logManagerInstance":Ljava/lang/Object;
    .end local v3    # "m1":Ljava/lang/reflect/Method;
    .end local v4    # "m2":Ljava/lang/reflect/Method;
    .restart local v5    # "result":Ljava/lang/String;
    :goto_3a
    return-object v5

    .line 138
    .restart local v1    # "logManagerClass":Ljava/lang/Class;
    .restart local v2    # "logManagerInstance":Ljava/lang/Object;
    .restart local v3    # "m1":Ljava/lang/reflect/Method;
    :catch_3b
    move-exception v6

    new-instance v7, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_46} :catch_46

    .line 140
    .end local v1    # "logManagerClass":Ljava/lang/Class;
    .end local v2    # "logManagerInstance":Ljava/lang/Object;
    .end local v3    # "m1":Ljava/lang/reflect/Method;
    .end local v5    # "result":Ljava/lang/String;
    :catch_46
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .restart local v5    # "result":Ljava/lang/String;
    goto :goto_3a
.end method

.method public static setLogger(Ljava/lang/String;)V
    .registers 1
    .param p0, "loggerClassName"    # Ljava/lang/String;

    .prologue
    .line 154
    sput-object p0, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->overrideloggerClassName:Ljava/lang/String;

    .line 155
    return-void
.end method
