.class public Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactoryFactory.java"


# static fields
.field public static final CIPHERSUITES:Ljava/lang/String; = "com.ibm.ssl.enabledCipherSuites"

.field private static final CLASS_NAME:Ljava/lang/String; = "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

.field public static final CLIENTAUTH:Ljava/lang/String; = "com.ibm.ssl.clientAuthentication"

.field public static final DEFAULT_PROTOCOL:Ljava/lang/String; = "TLS"

.field public static final JSSEPROVIDER:Ljava/lang/String; = "com.ibm.ssl.contextProvider"

.field public static final KEYSTORE:Ljava/lang/String; = "com.ibm.ssl.keyStore"

.field public static final KEYSTOREMGR:Ljava/lang/String; = "com.ibm.ssl.keyManager"

.field public static final KEYSTOREPROVIDER:Ljava/lang/String; = "com.ibm.ssl.keyStoreProvider"

.field public static final KEYSTOREPWD:Ljava/lang/String; = "com.ibm.ssl.keyStorePassword"

.field public static final KEYSTORETYPE:Ljava/lang/String; = "com.ibm.ssl.keyStoreType"

.field public static final SSLPROTOCOL:Ljava/lang/String; = "com.ibm.ssl.protocol"

.field public static final SYSKEYMGRALGO:Ljava/lang/String; = "ssl.KeyManagerFactory.algorithm"

.field public static final SYSKEYSTORE:Ljava/lang/String; = "javax.net.ssl.keyStore"

.field public static final SYSKEYSTOREPWD:Ljava/lang/String; = "javax.net.ssl.keyStorePassword"

.field public static final SYSKEYSTORETYPE:Ljava/lang/String; = "javax.net.ssl.keyStoreType"

.field public static final SYSTRUSTMGRALGO:Ljava/lang/String; = "ssl.TrustManagerFactory.algorithm"

.field public static final SYSTRUSTSTORE:Ljava/lang/String; = "javax.net.ssl.trustStore"

.field public static final SYSTRUSTSTOREPWD:Ljava/lang/String; = "javax.net.ssl.trustStorePassword"

.field public static final SYSTRUSTSTORETYPE:Ljava/lang/String; = "javax.net.ssl.trustStoreType"

.field public static final TRUSTSTORE:Ljava/lang/String; = "com.ibm.ssl.trustStore"

.field public static final TRUSTSTOREMGR:Ljava/lang/String; = "com.ibm.ssl.trustManager"

.field public static final TRUSTSTOREPROVIDER:Ljava/lang/String; = "com.ibm.ssl.trustStoreProvider"

.field public static final TRUSTSTOREPWD:Ljava/lang/String; = "com.ibm.ssl.trustStorePassword"

.field public static final TRUSTSTORETYPE:Ljava/lang/String; = "com.ibm.ssl.trustStoreType"

.field private static final key:[B

.field private static final propertyKeys:[Ljava/lang/String;

.field private static final xorTag:Ljava/lang/String; = "{xor}"


# instance fields
.field private configs:Ljava/util/Hashtable;

.field private defaultProperties:Ljava/util/Properties;

.field private logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v3, 0x8

    .line 134
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.ibm.ssl.protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.ibm.ssl.contextProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 135
    const-string v2, "com.ibm.ssl.keyStore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.ibm.ssl.keyStorePassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.ibm.ssl.keyStoreType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.ibm.ssl.keyStoreProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.ibm.ssl.keyManager"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 136
    const-string v2, "com.ibm.ssl.trustStore"

    aput-object v2, v0, v1

    const-string v1, "com.ibm.ssl.trustStorePassword"

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-string v2, "com.ibm.ssl.trustStoreType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.ibm.ssl.trustStoreProvider"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 137
    const-string v2, "com.ibm.ssl.trustManager"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.ibm.ssl.clientAuthentication"

    aput-object v2, v0, v1

    .line 134
    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    .line 143
    new-array v0, v3, [B

    fill-array-data v0, :array_5a

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    .line 146
    return-void

    .line 143
    :array_5a
    .array-data 1
        -0x63t
        -0x59t
        -0x27t
        -0x80t
        0x5t
        -0x48t
        -0x77t
        -0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 179
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    .line 180
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/logging/Logger;)V
    .registers 2
    .param p1, "logger"    # Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .prologue
    .line 187
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;-><init>()V

    .line 188
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 189
    return-void
.end method

.method private checkPropertyKeys(Ljava/util/Properties;)V
    .registers 8
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 219
    .local v2, "keys":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 220
    .local v0, "i":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    .line 226
    return-void

    .line 221
    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    .local v1, "k":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->keyValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 223
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, " is not a valid IBM SSL property key."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private convertPassword(Ljava/util/Properties;)V
    .registers 5
    .param p1, "p"    # Ljava/util/Properties;

    .prologue
    .line 374
    const-string v2, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "pw":Ljava/lang/String;
    if-eqz v1, :cond_1d

    const-string v2, "{xor}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 376
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "epw":Ljava/lang/String;
    const-string v2, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .end local v0    # "epw":Ljava/lang/String;
    :cond_1d
    const-string v2, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    if-eqz v1, :cond_3a

    const-string v2, "{xor}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 381
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v0

    .line 382
    .restart local v0    # "epw":Ljava/lang/String;
    const-string v2, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .end local v0    # "epw":Ljava/lang/String;
    :cond_3a
    return-void
.end method

.method public static deObfuscate(Ljava/lang/String;)[C
    .registers 7
    .param p0, "ePassword"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 299
    if-nez p0, :cond_4

    .line 312
    :goto_3
    return-object v3

    .line 301
    :cond_4
    const/4 v0, 0x0

    .line 303
    .local v0, "bytes":[B
    :try_start_5
    const-string v4, "{xor}"

    .line 304
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    .line 303
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->decode(Ljava/lang/String;)[B
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_12} :catch_1c

    move-result-object v0

    .line 309
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_14
    array-length v3, v0

    if-lt v2, v3, :cond_1e

    .line 312
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->toChar([B)[C

    move-result-object v3

    goto :goto_3

    .line 305
    .end local v2    # "i":I
    :catch_1c
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    goto :goto_3

    .line 310
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    :cond_1e
    aget-byte v3, v0, v2

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    array-length v5, v5

    rem-int v5, v2, v5

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_14
.end method

.method private getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "configID"    # Ljava/lang/String;
    .param p2, "ibmKey"    # Ljava/lang/String;
    .param p3, "sysProperty"    # Ljava/lang/String;

    .prologue
    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, "res":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    if-eqz v0, :cond_9

    move-object v1, v0

    .line 800
    .end local v0    # "res":Ljava/lang/String;
    .local v1, "res":Ljava/lang/String;
    :goto_8
    return-object v1

    .line 797
    .end local v1    # "res":Ljava/lang/String;
    .restart local v0    # "res":Ljava/lang/String;
    :cond_9
    if-eqz p3, :cond_f

    .line 798
    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_f
    move-object v1, v0

    .line 800
    .end local v0    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    goto :goto_8
.end method

.method private getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "configID"    # Ljava/lang/String;
    .param p2, "ibmKey"    # Ljava/lang/String;

    .prologue
    .line 815
    const/4 v1, 0x0

    .line 816
    .local v1, "res":Ljava/lang/String;
    const/4 v0, 0x0

    .line 817
    .local v0, "p":Ljava/util/Properties;
    if-eqz p1, :cond_c

    .line 818
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "p":Ljava/util/Properties;
    check-cast v0, Ljava/util/Properties;

    .line 820
    .restart local v0    # "p":Ljava/util/Properties;
    :cond_c
    if-eqz v0, :cond_16

    .line 821
    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 822
    if-eqz v1, :cond_16

    move-object v2, v1

    .line 832
    .end local v1    # "res":Ljava/lang/String;
    .local v2, "res":Ljava/lang/String;
    :goto_15
    return-object v2

    .line 826
    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :cond_16
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    .line 827
    if-eqz v0, :cond_22

    .line 828
    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 829
    if-eqz v1, :cond_22

    move-object v2, v1

    .line 830
    .end local v1    # "res":Ljava/lang/String;
    .restart local v2    # "res":Ljava/lang/String;
    goto :goto_15

    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :cond_22
    move-object v2, v1

    .line 832
    .end local v1    # "res":Ljava/lang/String;
    .restart local v2    # "res":Ljava/lang/String;
    goto :goto_15
.end method

.method private getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .registers 36
    .param p1, "configID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .prologue
    .line 1108
    const-string v4, "getSSLContext"

    .line 1109
    .local v4, "METHOD_NAME":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1111
    .local v5, "ctx":Ljavax/net/ssl/SSLContext;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getSSLProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1112
    .local v16, "protocol":Ljava/lang/String;
    if-nez v16, :cond_b

    .line 1113
    const-string v16, "TLS"

    .line 1115
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_36

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12000"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_309

    move-object/from16 v27, p1

    :goto_2d
    aput-object v27, v32, v33

    const/16 v27, 0x1

    .line 1118
    aput-object v16, v32, v27

    .line 1117
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1121
    :cond_36
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getJSSEProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1123
    .local v17, "provider":Ljava/lang/String;
    if-nez v17, :cond_30d

    .line 1124
    :try_start_3c
    invoke-static/range {v16 .. v16}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    .line 1128
    :goto_40
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_73

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12001"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_313

    move-object/from16 v27, p1

    :goto_62
    aput-object v27, v32, v33

    const/16 v27, 0x1

    .line 1131
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v32, v27

    .line 1130
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1134
    :cond_73
    const-string v27, "com.ibm.ssl.keyStore"

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1135
    .local v13, "keyStoreName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1136
    .local v12, "keyStore":Ljava/security/KeyStore;
    const/4 v10, 0x0

    .line 1137
    .local v10, "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    const/4 v8, 0x0

    .line 1152
    .local v8, "keyMgr":[Ljavax/net/ssl/KeyManager;
    if-nez v12, :cond_1c1

    .line 1153
    if-nez v13, :cond_9a

    .line 1158
    const-string v27, "com.ibm.ssl.keyStore"

    const-string v28, "javax.net.ssl.keyStore"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1160
    :cond_9a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_c9

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12004"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_317

    move-object/from16 v27, p1

    :goto_bc
    aput-object v27, v32, v33

    const/16 v33, 0x1

    .line 1163
    if-eqz v13, :cond_31b

    move-object/from16 v27, v13

    :goto_c4
    aput-object v27, v32, v33

    .line 1162
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1166
    :cond_c9
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStorePassword(Ljava/lang/String;)[C

    move-result-object v14

    .line 1167
    .local v14, "keyStorePwd":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_fe

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12005"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_31f

    move-object/from16 v27, p1

    :goto_ef
    aput-object v27, v32, v33

    const/16 v33, 0x1

    .line 1170
    if-eqz v14, :cond_323

    invoke-static {v14}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v27

    :goto_f9
    aput-object v27, v32, v33

    .line 1169
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    :cond_fe
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStoreType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1174
    .local v15, "keyStoreType":Ljava/lang/String;
    if-nez v15, :cond_108

    .line 1175
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v15

    .line 1177
    :cond_108
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_137

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12006"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_327

    move-object/from16 v27, p1

    :goto_12a
    aput-object v27, v32, v33

    const/16 v33, 0x1

    .line 1180
    if-eqz v15, :cond_32b

    move-object/from16 v27, v15

    :goto_132
    aput-object v27, v32, v33

    .line 1179
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    :cond_137
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 1184
    .local v9, "keyMgrAlgo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStoreProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1185
    .local v11, "keyMgrProvider":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyManager(Ljava/lang/String;)Ljava/lang/String;
    :try_end_142
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3c .. :try_end_142} :catch_34a
    .catch Ljava/security/NoSuchProviderException; {:try_start_3c .. :try_end_142} :catch_35c
    .catch Ljava/security/KeyManagementException; {:try_start_3c .. :try_end_142} :catch_36e

    move-result-object v7

    .line 1186
    .local v7, "keyManager":Ljava/lang/String;
    if-eqz v7, :cond_146

    .line 1187
    move-object v9, v7

    .line 1190
    :cond_146
    if-eqz v13, :cond_1c1

    if-eqz v15, :cond_1c1

    if-eqz v9, :cond_1c1

    .line 1192
    :try_start_14c
    invoke-static {v15}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v12

    .line 1193
    new-instance v27, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    invoke-direct {v0, v13}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v27

    invoke-virtual {v12, v0, v14}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1194
    if-eqz v11, :cond_32f

    .line 1195
    invoke-static {v9, v11}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v10

    .line 1199
    :goto_162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1ba

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12010"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_335

    move-object/from16 v27, p1

    :goto_184
    aput-object v27, v32, v33

    const/16 v27, 0x1

    .line 1202
    if-eqz v9, :cond_339

    .end local v9    # "keyMgrAlgo":Ljava/lang/String;
    :goto_18a
    aput-object v9, v32, v27

    .line 1201
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12009"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_33d

    move-object/from16 v27, p1

    :goto_1a9
    aput-object v27, v32, v33

    const/16 v27, 0x1

    .line 1205
    invoke-virtual {v10}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v32, v27

    .line 1204
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1207
    :cond_1ba
    invoke-virtual {v10, v12, v14}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 1208
    invoke-virtual {v10}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_1c0
    .catch Ljava/security/KeyStoreException; {:try_start_14c .. :try_end_1c0} :catch_341
    .catch Ljava/security/cert/CertificateException; {:try_start_14c .. :try_end_1c0} :catch_353
    .catch Ljava/io/FileNotFoundException; {:try_start_14c .. :try_end_1c0} :catch_365
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_1c0} :catch_377
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_14c .. :try_end_1c0} :catch_380
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_14c .. :try_end_1c0} :catch_34a
    .catch Ljava/security/NoSuchProviderException; {:try_start_14c .. :try_end_1c0} :catch_35c
    .catch Ljava/security/KeyManagementException; {:try_start_14c .. :try_end_1c0} :catch_36e

    move-result-object v8

    .line 1224
    .end local v7    # "keyManager":Ljava/lang/String;
    .end local v11    # "keyMgrProvider":Ljava/lang/String;
    .end local v14    # "keyStorePwd":[C
    .end local v15    # "keyStoreType":Ljava/lang/String;
    :cond_1c1
    :try_start_1c1
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1225
    .local v24, "trustStoreName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_1f4

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12011"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_389

    move-object/from16 v27, p1

    :goto_1e7
    aput-object v27, v32, v33

    const/16 v33, 0x1

    .line 1228
    if-eqz v24, :cond_38d

    move-object/from16 v27, v24

    :goto_1ef
    aput-object v27, v32, v33

    .line 1227
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1230
    :cond_1f4
    const/16 v23, 0x0

    .line 1231
    .local v23, "trustStore":Ljava/security/KeyStore;
    const/16 v21, 0x0

    .line 1232
    .local v21, "trustMgrFact":Ljavax/net/ssl/TrustManagerFactory;
    const/16 v19, 0x0

    .line 1233
    .local v19, "trustMgr":[Ljavax/net/ssl/TrustManager;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStorePassword(Ljava/lang/String;)[C

    move-result-object v25

    .line 1234
    .local v25, "trustStorePwd":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_22f

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12012"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_391

    move-object/from16 v27, p1

    :goto_220
    aput-object v27, v32, v33

    const/16 v33, 0x1

    .line 1237
    if-eqz v25, :cond_395

    invoke-static/range {v25 .. v25}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v27

    :goto_22a
    aput-object v27, v32, v33

    .line 1236
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1239
    :cond_22f
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStoreType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1240
    .local v26, "trustStoreType":Ljava/lang/String;
    if-nez v26, :cond_239

    .line 1241
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v26

    .line 1243
    :cond_239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_268

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12013"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_399

    move-object/from16 v27, p1

    :goto_25b
    aput-object v27, v32, v33

    const/16 v33, 0x1

    .line 1246
    if-eqz v26, :cond_39d

    move-object/from16 v27, v26

    :goto_263
    aput-object v27, v32, v33

    .line 1245
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1249
    :cond_268
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v20

    .line 1250
    .local v20, "trustMgrAlgo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStoreProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1251
    .local v22, "trustMgrProvider":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustManager(Ljava/lang/String;)Ljava/lang/String;
    :try_end_273
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1c1 .. :try_end_273} :catch_34a
    .catch Ljava/security/NoSuchProviderException; {:try_start_1c1 .. :try_end_273} :catch_35c
    .catch Ljava/security/KeyManagementException; {:try_start_1c1 .. :try_end_273} :catch_36e

    move-result-object v18

    .line 1252
    .local v18, "trustManager":Ljava/lang/String;
    if-eqz v18, :cond_278

    .line 1253
    move-object/from16 v20, v18

    .line 1256
    :cond_278
    if-eqz v24, :cond_2ff

    if-eqz v26, :cond_2ff

    if-eqz v20, :cond_2ff

    .line 1258
    :try_start_27e
    invoke-static/range {v26 .. v26}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v23

    .line 1259
    new-instance v27, Ljava/io/FileInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1260
    if-eqz v22, :cond_3a1

    .line 1261
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v21

    .line 1265
    :goto_29e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    if-eqz v27, :cond_2f4

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v28, v0

    const-string v29, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v30, "getSSLContext"

    const-string v31, "12017"

    const/16 v27, 0x2

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    if-eqz p1, :cond_3a7

    move-object/from16 v27, p1

    :goto_2c0
    aput-object v27, v32, v33

    const/16 v27, 0x1

    .line 1269
    if-eqz v20, :cond_3ab

    .end local v20    # "trustMgrAlgo":Ljava/lang/String;
    :goto_2c6
    aput-object v20, v32, v27

    .line 1268
    invoke-interface/range {v28 .. v32}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    const-string v28, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v29, "getSSLContext"

    const-string v30, "12016"

    const/16 v31, 0x2

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz p1, :cond_3af

    .end local p1    # "configID":Ljava/lang/String;
    :goto_2e3
    aput-object p1, v31, v32

    const/16 v32, 0x1

    .line 1273
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/TrustManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v33

    aput-object v33, v31, v32

    .line 1272
    invoke-interface/range {v27 .. v31}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1275
    :cond_2f4
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1276
    invoke-virtual/range {v21 .. v21}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_2fe
    .catch Ljava/security/KeyStoreException; {:try_start_27e .. :try_end_2fe} :catch_3b3
    .catch Ljava/security/cert/CertificateException; {:try_start_27e .. :try_end_2fe} :catch_3bc
    .catch Ljava/io/FileNotFoundException; {:try_start_27e .. :try_end_2fe} :catch_3c5
    .catch Ljava/io/IOException; {:try_start_27e .. :try_end_2fe} :catch_3ce
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_27e .. :try_end_2fe} :catch_34a
    .catch Ljava/security/NoSuchProviderException; {:try_start_27e .. :try_end_2fe} :catch_35c
    .catch Ljava/security/KeyManagementException; {:try_start_27e .. :try_end_2fe} :catch_36e

    move-result-object v19

    .line 1288
    :cond_2ff
    const/16 v27, 0x0

    :try_start_301
    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v5, v8, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_308
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_301 .. :try_end_308} :catch_34a
    .catch Ljava/security/NoSuchProviderException; {:try_start_301 .. :try_end_308} :catch_35c
    .catch Ljava/security/KeyManagementException; {:try_start_301 .. :try_end_308} :catch_36e

    .line 1296
    return-object v5

    .line 1117
    .end local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .end local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .end local v12    # "keyStore":Ljava/security/KeyStore;
    .end local v13    # "keyStoreName":Ljava/lang/String;
    .end local v17    # "provider":Ljava/lang/String;
    .end local v18    # "trustManager":Ljava/lang/String;
    .end local v19    # "trustMgr":[Ljavax/net/ssl/TrustManager;
    .end local v21    # "trustMgrFact":Ljavax/net/ssl/TrustManagerFactory;
    .end local v22    # "trustMgrProvider":Ljava/lang/String;
    .end local v23    # "trustStore":Ljava/security/KeyStore;
    .end local v24    # "trustStoreName":Ljava/lang/String;
    .end local v25    # "trustStorePwd":[C
    .end local v26    # "trustStoreType":Ljava/lang/String;
    .restart local p1    # "configID":Ljava/lang/String;
    :cond_309
    const-string v27, "null (broker defaults)"

    goto/16 :goto_2d

    .line 1126
    .restart local v17    # "provider":Ljava/lang/String;
    :cond_30d
    :try_start_30d
    invoke-static/range {v16 .. v17}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    goto/16 :goto_40

    .line 1130
    :cond_313
    const-string v27, "null (broker defaults)"

    goto/16 :goto_62

    .line 1162
    .restart local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .restart local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v12    # "keyStore":Ljava/security/KeyStore;
    .restart local v13    # "keyStoreName":Ljava/lang/String;
    :cond_317
    const-string v27, "null (broker defaults)"

    goto/16 :goto_bc

    .line 1163
    :cond_31b
    const-string v27, "null"

    goto/16 :goto_c4

    .line 1169
    .restart local v14    # "keyStorePwd":[C
    :cond_31f
    const-string v27, "null (broker defaults)"

    goto/16 :goto_ef

    .line 1170
    :cond_323
    const-string v27, "null"

    goto/16 :goto_f9

    .line 1179
    .restart local v15    # "keyStoreType":Ljava/lang/String;
    :cond_327
    const-string v27, "null (broker defaults)"

    goto/16 :goto_12a

    .line 1180
    :cond_32b
    const-string v27, "null"
    :try_end_32d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30d .. :try_end_32d} :catch_34a
    .catch Ljava/security/NoSuchProviderException; {:try_start_30d .. :try_end_32d} :catch_35c
    .catch Ljava/security/KeyManagementException; {:try_start_30d .. :try_end_32d} :catch_36e

    goto/16 :goto_132

    .line 1197
    .restart local v7    # "keyManager":Ljava/lang/String;
    .restart local v9    # "keyMgrAlgo":Ljava/lang/String;
    .restart local v11    # "keyMgrProvider":Ljava/lang/String;
    :cond_32f
    :try_start_32f
    invoke-static {v9}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v10

    goto/16 :goto_162

    .line 1201
    :cond_335
    const-string v27, "null (broker defaults)"

    goto/16 :goto_184

    .line 1202
    :cond_339
    const-string v9, "null"

    goto/16 :goto_18a

    .line 1204
    .end local v9    # "keyMgrAlgo":Ljava/lang/String;
    :cond_33d
    const-string v27, "null (broker defaults)"
    :try_end_33f
    .catch Ljava/security/KeyStoreException; {:try_start_32f .. :try_end_33f} :catch_341
    .catch Ljava/security/cert/CertificateException; {:try_start_32f .. :try_end_33f} :catch_353
    .catch Ljava/io/FileNotFoundException; {:try_start_32f .. :try_end_33f} :catch_365
    .catch Ljava/io/IOException; {:try_start_32f .. :try_end_33f} :catch_377
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_32f .. :try_end_33f} :catch_380
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_32f .. :try_end_33f} :catch_34a
    .catch Ljava/security/NoSuchProviderException; {:try_start_32f .. :try_end_33f} :catch_35c
    .catch Ljava/security/KeyManagementException; {:try_start_32f .. :try_end_33f} :catch_36e

    goto/16 :goto_1a9

    .line 1209
    :catch_341
    move-exception v6

    .line 1210
    .local v6, "e":Ljava/security/KeyStoreException;
    :try_start_342
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27
    :try_end_34a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_342 .. :try_end_34a} :catch_34a
    .catch Ljava/security/NoSuchProviderException; {:try_start_342 .. :try_end_34a} :catch_35c
    .catch Ljava/security/KeyManagementException; {:try_start_342 .. :try_end_34a} :catch_36e

    .line 1289
    .end local v6    # "e":Ljava/security/KeyStoreException;
    .end local v7    # "keyManager":Ljava/lang/String;
    .end local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .end local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .end local v11    # "keyMgrProvider":Ljava/lang/String;
    .end local v12    # "keyStore":Ljava/security/KeyStore;
    .end local v13    # "keyStoreName":Ljava/lang/String;
    .end local v14    # "keyStorePwd":[C
    .end local v15    # "keyStoreType":Ljava/lang/String;
    .end local p1    # "configID":Ljava/lang/String;
    :catch_34a
    move-exception v6

    .line 1290
    .local v6, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1211
    .end local v6    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v7    # "keyManager":Ljava/lang/String;
    .restart local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .restart local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v11    # "keyMgrProvider":Ljava/lang/String;
    .restart local v12    # "keyStore":Ljava/security/KeyStore;
    .restart local v13    # "keyStoreName":Ljava/lang/String;
    .restart local v14    # "keyStorePwd":[C
    .restart local v15    # "keyStoreType":Ljava/lang/String;
    .restart local p1    # "configID":Ljava/lang/String;
    :catch_353
    move-exception v6

    .line 1212
    .local v6, "e":Ljava/security/cert/CertificateException;
    :try_start_354
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27
    :try_end_35c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_354 .. :try_end_35c} :catch_34a
    .catch Ljava/security/NoSuchProviderException; {:try_start_354 .. :try_end_35c} :catch_35c
    .catch Ljava/security/KeyManagementException; {:try_start_354 .. :try_end_35c} :catch_36e

    .line 1291
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    .end local v7    # "keyManager":Ljava/lang/String;
    .end local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .end local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .end local v11    # "keyMgrProvider":Ljava/lang/String;
    .end local v12    # "keyStore":Ljava/security/KeyStore;
    .end local v13    # "keyStoreName":Ljava/lang/String;
    .end local v14    # "keyStorePwd":[C
    .end local v15    # "keyStoreType":Ljava/lang/String;
    .end local p1    # "configID":Ljava/lang/String;
    :catch_35c
    move-exception v6

    .line 1292
    .local v6, "e":Ljava/security/NoSuchProviderException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1213
    .end local v6    # "e":Ljava/security/NoSuchProviderException;
    .restart local v7    # "keyManager":Ljava/lang/String;
    .restart local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .restart local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v11    # "keyMgrProvider":Ljava/lang/String;
    .restart local v12    # "keyStore":Ljava/security/KeyStore;
    .restart local v13    # "keyStoreName":Ljava/lang/String;
    .restart local v14    # "keyStorePwd":[C
    .restart local v15    # "keyStoreType":Ljava/lang/String;
    .restart local p1    # "configID":Ljava/lang/String;
    :catch_365
    move-exception v6

    .line 1214
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_366
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27
    :try_end_36e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_366 .. :try_end_36e} :catch_34a
    .catch Ljava/security/NoSuchProviderException; {:try_start_366 .. :try_end_36e} :catch_35c
    .catch Ljava/security/KeyManagementException; {:try_start_366 .. :try_end_36e} :catch_36e

    .line 1293
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "keyManager":Ljava/lang/String;
    .end local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .end local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .end local v11    # "keyMgrProvider":Ljava/lang/String;
    .end local v12    # "keyStore":Ljava/security/KeyStore;
    .end local v13    # "keyStoreName":Ljava/lang/String;
    .end local v14    # "keyStorePwd":[C
    .end local v15    # "keyStoreType":Ljava/lang/String;
    .end local p1    # "configID":Ljava/lang/String;
    :catch_36e
    move-exception v6

    .line 1294
    .local v6, "e":Ljava/security/KeyManagementException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1215
    .end local v6    # "e":Ljava/security/KeyManagementException;
    .restart local v7    # "keyManager":Ljava/lang/String;
    .restart local v8    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .restart local v10    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v11    # "keyMgrProvider":Ljava/lang/String;
    .restart local v12    # "keyStore":Ljava/security/KeyStore;
    .restart local v13    # "keyStoreName":Ljava/lang/String;
    .restart local v14    # "keyStorePwd":[C
    .restart local v15    # "keyStoreType":Ljava/lang/String;
    .restart local p1    # "configID":Ljava/lang/String;
    :catch_377
    move-exception v6

    .line 1216
    .local v6, "e":Ljava/io/IOException;
    :try_start_378
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1217
    .end local v6    # "e":Ljava/io/IOException;
    :catch_380
    move-exception v6

    .line 1218
    .local v6, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1227
    .end local v6    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v7    # "keyManager":Ljava/lang/String;
    .end local v11    # "keyMgrProvider":Ljava/lang/String;
    .end local v14    # "keyStorePwd":[C
    .end local v15    # "keyStoreType":Ljava/lang/String;
    .restart local v24    # "trustStoreName":Ljava/lang/String;
    :cond_389
    const-string v27, "null (broker defaults)"

    goto/16 :goto_1e7

    .line 1228
    :cond_38d
    const-string v27, "null"

    goto/16 :goto_1ef

    .line 1236
    .restart local v19    # "trustMgr":[Ljavax/net/ssl/TrustManager;
    .restart local v21    # "trustMgrFact":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v23    # "trustStore":Ljava/security/KeyStore;
    .restart local v25    # "trustStorePwd":[C
    :cond_391
    const-string v27, "null (broker defaults)"

    goto/16 :goto_220

    .line 1237
    :cond_395
    const-string v27, "null"

    goto/16 :goto_22a

    .line 1245
    .restart local v26    # "trustStoreType":Ljava/lang/String;
    :cond_399
    const-string v27, "null (broker defaults)"

    goto/16 :goto_25b

    .line 1246
    :cond_39d
    const-string v27, "null"
    :try_end_39f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_378 .. :try_end_39f} :catch_34a
    .catch Ljava/security/NoSuchProviderException; {:try_start_378 .. :try_end_39f} :catch_35c
    .catch Ljava/security/KeyManagementException; {:try_start_378 .. :try_end_39f} :catch_36e

    goto/16 :goto_263

    .line 1263
    .restart local v18    # "trustManager":Ljava/lang/String;
    .restart local v20    # "trustMgrAlgo":Ljava/lang/String;
    .restart local v22    # "trustMgrProvider":Ljava/lang/String;
    :cond_3a1
    :try_start_3a1
    invoke-static/range {v20 .. v20}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v21

    goto/16 :goto_29e

    .line 1268
    :cond_3a7
    const-string v27, "null (broker defaults)"

    goto/16 :goto_2c0

    .line 1269
    :cond_3ab
    const-string v20, "null"

    goto/16 :goto_2c6

    .line 1272
    .end local v20    # "trustMgrAlgo":Ljava/lang/String;
    :cond_3af
    const-string p1, "null (broker defaults)"
    :try_end_3b1
    .catch Ljava/security/KeyStoreException; {:try_start_3a1 .. :try_end_3b1} :catch_3b3
    .catch Ljava/security/cert/CertificateException; {:try_start_3a1 .. :try_end_3b1} :catch_3bc
    .catch Ljava/io/FileNotFoundException; {:try_start_3a1 .. :try_end_3b1} :catch_3c5
    .catch Ljava/io/IOException; {:try_start_3a1 .. :try_end_3b1} :catch_3ce
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3a1 .. :try_end_3b1} :catch_34a
    .catch Ljava/security/NoSuchProviderException; {:try_start_3a1 .. :try_end_3b1} :catch_35c
    .catch Ljava/security/KeyManagementException; {:try_start_3a1 .. :try_end_3b1} :catch_36e

    goto/16 :goto_2e3

    .line 1277
    .end local p1    # "configID":Ljava/lang/String;
    :catch_3b3
    move-exception v6

    .line 1278
    .local v6, "e":Ljava/security/KeyStoreException;
    :try_start_3b4
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1279
    .end local v6    # "e":Ljava/security/KeyStoreException;
    :catch_3bc
    move-exception v6

    .line 1280
    .local v6, "e":Ljava/security/cert/CertificateException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1281
    .end local v6    # "e":Ljava/security/cert/CertificateException;
    :catch_3c5
    move-exception v6

    .line 1282
    .local v6, "e":Ljava/io/FileNotFoundException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27

    .line 1283
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :catch_3ce
    move-exception v6

    .line 1284
    .local v6, "e":Ljava/io/IOException;
    new-instance v27, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v27

    invoke-direct {v0, v6}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v27
    :try_end_3d7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3b4 .. :try_end_3d7} :catch_34a
    .catch Ljava/security/NoSuchProviderException; {:try_start_3b4 .. :try_end_3d7} :catch_35c
    .catch Ljava/security/KeyManagementException; {:try_start_3b4 .. :try_end_3d7} :catch_36e
.end method

.method public static isSupportedOnJVM()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;
        }
    .end annotation

    .prologue
    .line 164
    const-string v1, "javax.net.ssl.SSLServerSocketFactory"

    .line 166
    .local v1, "requiredClassname":Ljava/lang/String;
    :try_start_2
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_5} :catch_7

    .line 170
    const/4 v2, 0x1

    :goto_6
    return v2

    .line 167
    :catch_7
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_6
.end method

.method private keyValid(Ljava/lang/String;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "i":I
    :goto_1
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_d

    .line 205
    :cond_6
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1a

    const/4 v1, 0x1

    :goto_c
    return v1

    .line 200
    :cond_d
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_1a
    const/4 v1, 0x0

    goto :goto_c
.end method

.method public static obfuscate([C)Ljava/lang/String;
    .registers 7
    .param p0, "password"    # [C

    .prologue
    .line 277
    if-nez p0, :cond_4

    .line 278
    const/4 v1, 0x0

    .line 285
    :goto_3
    return-object v1

    .line 279
    :cond_4
    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->toByte([C)[B

    move-result-object v0

    .line 280
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, v0

    if-lt v2, v3, :cond_25

    .line 283
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "{xor}"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 284
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "encryptedValue":Ljava/lang/String;
    goto :goto_3

    .line 281
    .end local v1    # "encryptedValue":Ljava/lang/String;
    :cond_25
    aget-byte v3, v0, v2

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    array-length v5, v5

    rem-int v5, v2, v5

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method public static packCipherSuites([Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "ciphers"    # [Ljava/lang/String;

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, "cipherSet":Ljava/lang/String;
    if-eqz p0, :cond_10

    .line 325
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 326
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    array-length v3, p0

    if-lt v2, v3, :cond_11

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    :cond_10
    return-object v1

    .line 327
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "i":I
    :cond_11
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_20

    .line 329
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 326
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_9
.end method

.method public static toByte([C)[B
    .registers 7
    .param p0, "c"    # [C

    .prologue
    .line 255
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 262
    :cond_3
    return-object v0

    .line 256
    :cond_4
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 257
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .line 258
    .local v3, "j":I
    :goto_b
    array-length v5, p0

    if-ge v3, v5, :cond_3

    .line 259
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-char v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 260
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget-char v5, p0, v3

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_b
.end method

.method public static toChar([B)[C
    .registers 8
    .param p0, "b"    # [B

    .prologue
    .line 237
    if-nez p0, :cond_4

    const/4 v0, 0x0

    .line 243
    :cond_3
    return-object v0

    .line 238
    :cond_4
    array-length v5, p0

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [C

    .line 239
    .local v0, "c":[C
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .line 240
    .local v3, "j":I
    :goto_b
    array-length v5, p0

    if-ge v1, v5, :cond_3

    .line 241
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_b
.end method

.method public static unpackCipherSuites(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "ciphers"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2c

    .line 347
    if-nez p0, :cond_6

    const/4 v3, 0x0

    .line 362
    :goto_5
    return-object v3

    .line 348
    :cond_6
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 349
    .local v0, "c":Ljava/util/Vector;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 350
    .local v1, "i":I
    const/4 v2, 0x0

    .line 352
    .local v2, "j":I
    :goto_10
    const/4 v4, -0x1

    if-gt v1, v4, :cond_24

    .line 359
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 361
    .local v3, "s":[Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_5

    .line 354
    .end local v3    # "s":[Ljava/lang/String;
    :cond_24
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v2, v1, 0x1

    .line 356
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_10
.end method


# virtual methods
.method public createSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 12
    .param p1, "configID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .prologue
    .line 1343
    const-string v0, "createSocketFactory"

    .line 1344
    .local v0, "METHOD_NAME":Ljava/lang/String;
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 1345
    .local v1, "ctx":Ljavax/net/ssl/SSLContext;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v2, :cond_2e

    .line 1347
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v4, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v5, "createSocketFactory"

    const-string v6, "12020"

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    if-eqz p1, :cond_33

    move-object v2, p1

    :goto_19
    aput-object v2, v7, v8

    const/4 v8, 0x1

    .line 1348
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_36

    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    const/4 v9, 0x0

    invoke-direct {p0, p1, v2, v9}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_29
    aput-object v2, v7, v8

    .line 1347
    invoke-interface {v3, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1351
    :cond_2e
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    return-object v2

    .line 1347
    :cond_33
    const-string v2, "null (broker defaults)"

    goto :goto_19

    .line 1348
    :cond_36
    const-string v2, "null (using platform-enabled cipher suites)"

    goto :goto_29
.end method

.method public getClientAuthentication(Ljava/lang/String;)Z
    .registers 6
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1087
    const-string v2, "com.ibm.ssl.clientAuthentication"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "auth":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1089
    .local v1, "res":Z
    if-eqz v0, :cond_12

    .line 1090
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1092
    :cond_12
    return v1
.end method

.method public getConfiguration(Ljava/lang/String;)Ljava/util/Properties;
    .registers 3
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 507
    if-nez p1, :cond_7

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    :goto_4
    check-cast v0, Ljava/util/Properties;

    return-object v0

    .line 508
    :cond_7
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4
.end method

.method public getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1073
    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, "ciphers":Ljava/lang/String;
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->unpackCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1075
    .local v1, "res":[Ljava/lang/String;
    return-object v1
.end method

.method public getJSSEProvider(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 857
    const-string v0, "com.ibm.ssl.contextProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyManager(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 992
    const-string v0, "com.ibm.ssl.keyManager"

    const-string v1, "ssl.KeyManagerFactory.algorithm"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStore(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 914
    const-string v0, "com.ibm.ssl.keyStore"

    .line 915
    .local v0, "ibmKey":Ljava/lang/String;
    const-string v3, "javax.net.ssl.keyStore"

    .line 917
    .local v3, "sysProperty":Ljava/lang/String;
    const/4 v1, 0x0

    .line 918
    .local v1, "res":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 919
    if-eqz v1, :cond_d

    move-object v2, v1

    .line 935
    .end local v1    # "res":Ljava/lang/String;
    .local v2, "res":Ljava/lang/String;
    :goto_c
    return-object v2

    .line 931
    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :cond_d
    if-eqz v3, :cond_13

    .line 932
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_13
    move-object v2, v1

    .line 935
    .end local v1    # "res":Ljava/lang/String;
    .restart local v2    # "res":Ljava/lang/String;
    goto :goto_c
.end method

.method public getKeyStorePassword(Ljava/lang/String;)[C
    .registers 6
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 947
    const-string v2, "com.ibm.ssl.keyStorePassword"

    const-string v3, "javax.net.ssl.keyStorePassword"

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "pw":Ljava/lang/String;
    const/4 v1, 0x0

    .line 949
    .local v1, "r":[C
    if-eqz v0, :cond_17

    .line 950
    const-string v2, "{xor}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 951
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->deObfuscate(Ljava/lang/String;)[C

    move-result-object v1

    .line 956
    :cond_17
    :goto_17
    return-object v1

    .line 953
    :cond_18
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_17
.end method

.method public getKeyStoreProvider(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 980
    const-string v0, "com.ibm.ssl.keyStoreProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 968
    const-string v0, "com.ibm.ssl.keyStoreType"

    const-string v1, "javax.net.ssl.keyStoreType"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLProtocol(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 845
    const-string v0, "com.ibm.ssl.protocol"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustManager(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1061
    const-string v0, "com.ibm.ssl.trustManager"

    const-string v1, "ssl.TrustManagerFactory.algorithm"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStore(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1004
    const-string v0, "com.ibm.ssl.trustStore"

    const-string v1, "javax.net.ssl.trustStore"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStorePassword(Ljava/lang/String;)[C
    .registers 6
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1016
    const-string v2, "com.ibm.ssl.trustStorePassword"

    const-string v3, "javax.net.ssl.trustStorePassword"

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, "pw":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1018
    .local v1, "r":[C
    if-eqz v0, :cond_17

    .line 1019
    const-string v2, "{xor}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1020
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->deObfuscate(Ljava/lang/String;)[C

    move-result-object v1

    .line 1025
    :cond_17
    :goto_17
    return-object v1

    .line 1022
    :cond_18
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_17
.end method

.method public getTrustStoreProvider(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1049
    const-string v0, "com.ibm.ssl.trustStoreProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStoreType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1037
    const-string v0, "com.ibm.ssl.trustStoreType"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 5
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "configID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->checkPropertyKeys(Ljava/util/Properties;)V

    .line 429
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 430
    .local v0, "p":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 431
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->convertPassword(Ljava/util/Properties;)V

    .line 432
    if-eqz p2, :cond_16

    .line 433
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :goto_15
    return-void

    .line 435
    :cond_16
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    goto :goto_15
.end method

.method public merge(Ljava/util/Properties;Ljava/lang/String;)V
    .registers 5
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "configID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->checkPropertyKeys(Ljava/util/Properties;)V

    .line 457
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    .line 458
    .local v0, "p":Ljava/util/Properties;
    if-eqz p2, :cond_f

    .line 459
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "p":Ljava/util/Properties;
    check-cast v0, Ljava/util/Properties;

    .line 461
    .restart local v0    # "p":Ljava/util/Properties;
    :cond_f
    if-nez v0, :cond_16

    .line 462
    new-instance v0, Ljava/util/Properties;

    .end local v0    # "p":Ljava/util/Properties;
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 464
    .restart local v0    # "p":Ljava/util/Properties;
    :cond_16
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->convertPassword(Ljava/util/Properties;)V

    .line 465
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 466
    if-eqz p2, :cond_24

    .line 467
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :goto_23
    return-void

    .line 469
    :cond_24
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    goto :goto_23
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, "res":Z
    if-eqz p1, :cond_f

    .line 485
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    const/4 v0, 0x1

    .line 492
    :cond_c
    :goto_c
    return v0

    .line 485
    :cond_d
    const/4 v0, 0x0

    goto :goto_c

    .line 487
    :cond_f
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    if-eqz v1, :cond_c

    .line 488
    const/4 v0, 0x1

    .line 489
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    goto :goto_c
.end method
