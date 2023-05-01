.class public Lcom/idelan/Encrypt/DES;
.super Ljava/lang/Object;
.source "DES.java"


# static fields
.field private static final ALGORITHM_DES_CIPHER:Ljava/lang/String; = "DES/CBC/PKCS5Padding"

.field private static final ALGORITHM_DES_KEY_FACTORY:Ljava/lang/String; = "DES"

.field private static final IV:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/idelan/Encrypt/DES;->IV:[B

    return-void

    :array_a
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;[B)[B
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    :try_start_0
    new-instance v1, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v1, v7}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 79
    .local v1, "dks":Ljavax/crypto/spec/DESKeySpec;
    const-string v7, "DES"

    invoke-static {v7}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v4

    .line 81
    .local v4, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v4, v1}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v6

    .line 82
    .local v6, "secretKey":Ljava/security/Key;
    const-string v7, "DES/CBC/PKCS5Padding"

    invoke-static {v7}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 83
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v7, Lcom/idelan/Encrypt/DES;->IV:[B

    invoke-direct {v3, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 84
    .local v3, "iv":Ljavax/crypto/spec/IvParameterSpec;
    move-object v5, v3

    .line 85
    .local v5, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 86
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2a

    move-result-object v7

    return-object v7

    .line 87
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "dks":Ljavax/crypto/spec/DESKeySpec;
    .end local v3    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v4    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v5    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v6    # "secretKey":Ljava/security/Key;
    :catch_2a
    move-exception v2

    .line 88
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/Exception;

    invoke-direct {v7, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public static decodeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-static {p0, v1}, Lcom/idelan/Encrypt/DES;->decode(Ljava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/idelan/Encrypt/DES;->encode(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encode(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    new-instance v2, Ljavax/crypto/spec/DESKeySpec;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-direct {v2, v8}, Ljavax/crypto/spec/DESKeySpec;-><init>([B)V

    .line 48
    .local v2, "dks":Ljavax/crypto/spec/DESKeySpec;
    const-string v8, "DES"

    invoke-static {v8}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v5

    .line 50
    .local v5, "keyFactory":Ljavax/crypto/SecretKeyFactory;
    invoke-virtual {v5, v2}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v7

    .line 51
    .local v7, "secretKey":Ljava/security/Key;
    const-string v8, "DES/CBC/PKCS5Padding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 52
    .local v1, "cipher":Ljavax/crypto/Cipher;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v8, Lcom/idelan/Encrypt/DES;->IV:[B

    invoke-direct {v4, v8}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 53
    .local v4, "iv":Ljavax/crypto/spec/IvParameterSpec;
    move-object v6, v4

    .line 54
    .local v6, "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const/4 v8, 0x1

    invoke-virtual {v1, v8, v7, v6}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 56
    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 58
    .local v0, "bytes":[B
    const/4 v8, 0x3

    invoke-static {v0, v8}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2f

    move-result-object v8

    return-object v8

    .line 59
    .end local v0    # "bytes":[B
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "dks":Ljavax/crypto/spec/DESKeySpec;
    .end local v4    # "iv":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "keyFactory":Ljavax/crypto/SecretKeyFactory;
    .end local v6    # "paramSpec":Ljava/security/spec/AlgorithmParameterSpec;
    .end local v7    # "secretKey":Ljava/security/Key;
    :catch_2f
    move-exception v3

    .line 60
    .local v3, "e":Ljava/lang/Exception;
    new-instance v8, Ljava/lang/Exception;

    invoke-direct {v8, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method public static keyCensorAndAdjust(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v1

    .line 111
    .local v1, "string":Ljava/lang/String;
    if-nez p0, :cond_10

    const/4 v0, 0x0

    .line 112
    .local v0, "keyLength":I
    :goto_b
    const/16 v2, 0x8

    if-lt v0, v2, :cond_15

    .line 116
    return-object v1

    .line 111
    .end local v0    # "keyLength":I
    :cond_10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_b

    .line 113
    .restart local v0    # "keyLength":I
    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method
