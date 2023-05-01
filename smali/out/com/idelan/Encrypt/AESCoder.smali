.class public Lcom/idelan/Encrypt/AESCoder;
.super Ljava/lang/Object;
.source "AESCoder.java"


# static fields
.field private static final AES_IV:[B

.field public static final TAG:Ljava/lang/String; = "AESUtils"


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x7

    const/4 v3, 0x1

    .line 15
    const/16 v0, 0xa

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x15

    aput-byte v2, v0, v1

    const/4 v1, -0x1

    aput-byte v1, v0, v3

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x34

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    .line 16
    const/16 v2, 0x22

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    aput-byte v5, v0, v1

    const/16 v1, 0x4f

    aput-byte v1, v0, v4

    const/16 v1, 0x13

    aput-byte v1, v0, v5

    const/16 v1, 0x9

    aput-byte v4, v0, v1

    .line 15
    sput-object v0, Lcom/idelan/Encrypt/AESCoder;->AES_IV:[B

    .line 16
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .registers 6
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 353
    const-string v0, "0123456789ABCDEF"

    .line 354
    .local v0, "HEX":Ljava/lang/String;
    const-string v1, "0123456789ABCDEF"

    shr-int/lit8 v2, p1, 0x4

    and-int/lit8 v2, v2, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "0123456789ABCDEF"

    and-int/lit8 v3, p1, 0xf

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 355
    return-void
.end method

.method public static decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "encrypted"    # Ljava/lang/String;

    .prologue
    .line 48
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5}, Lcom/idelan/Encrypt/AESCoder;->getRawKey([B)[B

    move-result-object v3

    .line 49
    .local v3, "rawKey":[B
    invoke-static {p1}, Lcom/idelan/Encrypt/AESCoder;->toByte(Ljava/lang/String;)[B

    move-result-object v2

    .line 50
    .local v2, "enc":[B
    invoke-static {v3, v2}, Lcom/idelan/Encrypt/AESCoder;->decrypt([B[B)[B

    move-result-object v4

    .line 51
    .local v4, "result":[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 56
    .end local v2    # "enc":[B
    .end local v3    # "rawKey":[B
    .end local v4    # "result":[B
    :goto_15
    return-object v0

    .line 54
    :catch_16
    move-exception v1

    .line 55
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 56
    const/4 v0, 0x0

    goto :goto_15
.end method

.method private static decrypt([B[B)[B
    .registers 8
    .param p0, "raw"    # [B
    .param p1, "encrypted"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 316
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 318
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/PKCS5Padding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 319
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 320
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 319
    invoke-virtual {v0, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 321
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 322
    .local v1, "decrypted":[B
    return-object v1
.end method

.method public static desEncrypt(Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "data"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 246
    :try_start_0
    const-string v5, "123"

    .line 247
    .local v5, "key":Ljava/lang/String;
    const-string v3, "1234567812345678"

    .line 250
    .local v3, "iv":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 252
    .local v2, "encrypted1":[B
    const-string v9, "AES/CBC/NoPadding"

    invoke-static {v9}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 253
    .local v0, "cipher":Ljavax/crypto/Cipher;
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    const-string v10, "AES"

    invoke-direct {v6, v9, v10}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 254
    .local v6, "keyspec":Ljavax/crypto/spec/SecretKeySpec;
    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    invoke-direct {v4, v9}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 256
    .local v4, "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    const/4 v9, 0x2

    invoke-virtual {v0, v9, v6, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 258
    invoke-virtual {v0, v2}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v7

    .line 259
    .local v7, "original":[B
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    .line 264
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "encrypted1":[B
    .end local v3    # "iv":Ljava/lang/String;
    .end local v4    # "ivspec":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "keyspec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v7    # "original":[B
    :goto_2f
    return-object v8

    .line 262
    :catch_30
    move-exception v1

    .line 263
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 264
    const/4 v8, 0x0

    goto :goto_2f
.end method

.method public static desEncryptOK(Ljava/lang/String;[B)[B
    .registers 13
    .param p0, "keys"    # Ljava/lang/String;
    .param p1, "dataBytes"    # [B

    .prologue
    .line 215
    :try_start_0
    const-string v8, "AES/ECB/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 216
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 218
    .local v0, "blockSize":I
    array-length v6, p1

    .line 219
    .local v6, "plaintextLength":I
    rem-int v8, v6, v0

    if-eqz v8, :cond_14

    .line 220
    rem-int v8, v6, v0

    sub-int v8, v0, v8

    add-int/2addr v6, v8

    .line 222
    :cond_14
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "utf-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "AES"

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 225
    .local v7, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-array v5, v6, [B

    .line 226
    .local v5, "plaintext":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    if-lt v4, v6, :cond_35

    .line 228
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, p1

    invoke-static {p1, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    const/4 v8, 0x2

    invoke-virtual {v1, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 231
    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 239
    .end local v0    # "blockSize":I
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "i":I
    .end local v5    # "plaintext":[B
    .end local v6    # "plaintextLength":I
    .end local v7    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_34
    return-object v3

    .line 227
    .restart local v0    # "blockSize":I
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "i":I
    .restart local v5    # "plaintext":[B
    .restart local v6    # "plaintextLength":I
    .restart local v7    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_35
    const/4 v8, 0x0

    aput-byte v8, v5, v4
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_3b

    .line 226
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 237
    .end local v0    # "blockSize":I
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "i":I
    .end local v5    # "plaintext":[B
    .end local v6    # "plaintextLength":I
    .end local v7    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_3b
    move-exception v2

    .line 238
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    const/4 v3, 0x0

    goto :goto_34
.end method

.method public static encrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "seed"    # Ljava/lang/String;
    .param p1, "clearText"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v6, 0x0

    .line 21
    .local v6, "result":[B
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-static {v10}, Lcom/idelan/Encrypt/AESCoder;->getRawKey([B)[B

    move-result-object v5

    .line 22
    .local v5, "rawkey":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v9, v10, 0x10

    .line 23
    .local v9, "x":I
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 24
    .local v8, "t":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, 0x10

    new-array v7, v10, [B

    .line 25
    .local v7, "src":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    if-lt v2, v9, :cond_3a

    .line 28
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v8

    invoke-static {v8, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 29
    array-length v10, v8

    div-int/lit8 v10, v10, 0x10

    mul-int/lit8 v3, v10, 0x10

    .line 30
    .local v3, "nSrcLen":I
    array-length v10, v8

    rem-int/lit8 v4, v10, 0x10

    .line 31
    .local v4, "nx":I
    if-lez v4, :cond_30

    .line 32
    add-int/lit8 v3, v3, 0x10

    .line 34
    :cond_30
    const/4 v10, 0x0

    invoke-static {v5, v7, v10, v3}, Lcom/idelan/Encrypt/AESCoder;->encrypt([B[BII)[B
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_40

    move-result-object v6

    .line 38
    .end local v2    # "i":I
    .end local v3    # "nSrcLen":I
    .end local v4    # "nx":I
    .end local v5    # "rawkey":[B
    .end local v7    # "src":[B
    .end local v8    # "t":[B
    .end local v9    # "x":I
    :goto_35
    invoke-static {v6}, Lcom/idelan/Encrypt/AESCoder;->toHex([B)Ljava/lang/String;

    move-result-object v0

    .line 40
    .local v0, "content":Ljava/lang/String;
    return-object v0

    .line 26
    .end local v0    # "content":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v5    # "rawkey":[B
    .restart local v7    # "src":[B
    .restart local v8    # "t":[B
    .restart local v9    # "x":I
    :cond_3a
    const/4 v10, 0x0

    :try_start_3b
    aput-byte v10, v7, v2
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3d} :catch_40

    .line 25
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 35
    .end local v2    # "i":I
    .end local v5    # "rawkey":[B
    .end local v7    # "src":[B
    .end local v8    # "t":[B
    .end local v9    # "x":I
    :catch_40
    move-exception v1

    .line 36
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method

.method private static encrypt([B[BII)[B
    .registers 10
    .param p0, "raw"    # [B
    .param p1, "clear"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 301
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    const-string v3, "AES"

    invoke-direct {v2, p0, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 307
    .local v2, "skeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES/CBC/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 308
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v3, 0x1

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 309
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    new-array v5, v5, [B

    invoke-direct {v4, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 308
    invoke-virtual {v0, v3, v2, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 310
    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v1

    .line 311
    .local v1, "encrypted":[B
    return-object v1
.end method

.method public static encryptEx(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 26
    .param p0, "keys"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 98
    :try_start_0
    const-string v7, "AES/ECB/PKCS5Padding"

    .line 99
    .local v7, "cipher_algorithm":Ljava/lang/String;
    const-string v4, "AES"

    .line 100
    .local v4, "aes_key_algorithm":Ljava/lang/String;
    const-string v13, "fedcba9876543210"

    .line 101
    .local v13, "iv":Ljava/lang/String;
    const-string v20, "MD5"

    invoke-static/range {v20 .. v20}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 102
    .local v9, "digest":Ljava/security/MessageDigest;
    const-string v20, "utf-8"

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 103
    new-instance v15, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/idelan/Encrypt/AESCoder;->getRawKey2([B)[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v15, v0, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 105
    .local v15, "keyspec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v20, "AES/ECB/NoPadding"

    invoke-static/range {v20 .. v20}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    .line 106
    .local v6, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v6}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v5

    .line 108
    .local v5, "blockSize":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    .line 109
    .local v8, "dataBytes":[B
    array-length v0, v8

    move/from16 v18, v0

    .line 110
    .local v18, "plaintextLength":I
    rem-int v20, v18, v5

    if-eqz v20, :cond_45

    .line 111
    rem-int v20, v18, v5

    sub-int v20, v5, v20

    add-int v18, v18, v20

    .line 114
    :cond_45
    const/16 v20, 0x10

    move/from16 v0, v20

    new-array v14, v0, [B

    .line 115
    .local v14, "keybyte":[B
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4c
    const/16 v20, 0x10

    move/from16 v0, v20

    if-lt v12, v0, :cond_a3

    .line 117
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v23

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    invoke-static {v0, v1, v14, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    new-instance v19, Ljavax/crypto/spec/SecretKeySpec;

    const-string v20, "AES"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v14, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 122
    .local v19, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    move/from16 v0, v18

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .line 123
    .local v17, "plaintext":[B
    const/4 v12, 0x0

    :goto_7b
    move/from16 v0, v18

    if-lt v12, v0, :cond_aa

    .line 125
    const/16 v20, 0x0

    const/16 v21, 0x0

    array-length v0, v8

    move/from16 v22, v0

    move/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v8, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    const/16 v20, 0x1

    move/from16 v0, v20

    invoke-virtual {v6, v0, v15}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 128
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v11

    .line 130
    .local v11, "encrypted":[B
    invoke-static {v11}, Lcom/idelan/Encrypt/AESCoder;->toHex([B)Ljava/lang/String;

    move-result-object v16

    .line 136
    .end local v4    # "aes_key_algorithm":Ljava/lang/String;
    .end local v5    # "blockSize":I
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "cipher_algorithm":Ljava/lang/String;
    .end local v8    # "dataBytes":[B
    .end local v9    # "digest":Ljava/security/MessageDigest;
    .end local v11    # "encrypted":[B
    .end local v12    # "i":I
    .end local v13    # "iv":Ljava/lang/String;
    .end local v14    # "keybyte":[B
    .end local v15    # "keyspec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v17    # "plaintext":[B
    .end local v18    # "plaintextLength":I
    .end local v19    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_a2
    return-object v16

    .line 116
    .restart local v4    # "aes_key_algorithm":Ljava/lang/String;
    .restart local v5    # "blockSize":I
    .restart local v6    # "cipher":Ljavax/crypto/Cipher;
    .restart local v7    # "cipher_algorithm":Ljava/lang/String;
    .restart local v8    # "dataBytes":[B
    .restart local v9    # "digest":Ljava/security/MessageDigest;
    .restart local v12    # "i":I
    .restart local v13    # "iv":Ljava/lang/String;
    .restart local v14    # "keybyte":[B
    .restart local v15    # "keyspec":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v18    # "plaintextLength":I
    :cond_a3
    const/16 v20, 0x0

    aput-byte v20, v14, v12

    .line 115
    add-int/lit8 v12, v12, 0x1

    goto :goto_4c

    .line 124
    .restart local v17    # "plaintext":[B
    .restart local v19    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_aa
    const/16 v20, 0x0

    aput-byte v20, v17, v12
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_ae} :catch_b1

    .line 123
    add-int/lit8 v12, v12, 0x1

    goto :goto_7b

    .line 134
    .end local v4    # "aes_key_algorithm":Ljava/lang/String;
    .end local v5    # "blockSize":I
    .end local v6    # "cipher":Ljavax/crypto/Cipher;
    .end local v7    # "cipher_algorithm":Ljava/lang/String;
    .end local v8    # "dataBytes":[B
    .end local v9    # "digest":Ljava/security/MessageDigest;
    .end local v12    # "i":I
    .end local v13    # "iv":Ljava/lang/String;
    .end local v14    # "keybyte":[B
    .end local v15    # "keyspec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v17    # "plaintext":[B
    .end local v18    # "plaintextLength":I
    .end local v19    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_b1
    move-exception v10

    .line 135
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 136
    const/16 v16, 0x0

    goto :goto_a2
.end method

.method public static encryptExOK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "keys"    # Ljava/lang/String;
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    const-string v10, "AES/ECB/NoPadding"

    invoke-static {v10}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 147
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 148
    .local v0, "blockSize":I
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 149
    .local v2, "dataBytes":[B
    array-length v8, v2

    .line 150
    .local v8, "plaintextLength":I
    rem-int v10, v8, v0

    if-eqz v10, :cond_18

    .line 151
    rem-int v10, v8, v0

    sub-int v10, v0, v10

    add-int/2addr v8, v10

    .line 153
    :cond_18
    new-instance v9, Ljavax/crypto/spec/SecretKeySpec;

    const-string v10, "utf-8"

    invoke-virtual {p0, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v10

    const-string v11, "AES"

    invoke-direct {v9, v10, v11}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 156
    .local v9, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-array v7, v8, [B

    .line 157
    .local v7, "plaintext":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_28
    if-lt v5, v8, :cond_3d

    .line 159
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, v2

    invoke-static {v2, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 160
    const/4 v10, 0x1

    invoke-virtual {v1, v10, v9}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 161
    invoke-virtual {v1, v7}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    .line 163
    .local v4, "encrypted":[B
    invoke-static {v4}, Lcom/idelan/Encrypt/AESCoder;->toHex([B)Ljava/lang/String;

    move-result-object v6

    .line 169
    .end local v0    # "blockSize":I
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "dataBytes":[B
    .end local v4    # "encrypted":[B
    .end local v5    # "i":I
    .end local v7    # "plaintext":[B
    .end local v8    # "plaintextLength":I
    .end local v9    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_3c
    return-object v6

    .line 158
    .restart local v0    # "blockSize":I
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    .restart local v2    # "dataBytes":[B
    .restart local v5    # "i":I
    .restart local v7    # "plaintext":[B
    .restart local v8    # "plaintextLength":I
    .restart local v9    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_3d
    const/4 v10, 0x0

    aput-byte v10, v7, v5
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_43

    .line 157
    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 167
    .end local v0    # "blockSize":I
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v2    # "dataBytes":[B
    .end local v5    # "i":I
    .end local v7    # "plaintext":[B
    .end local v8    # "plaintextLength":I
    .end local v9    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_43
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    const/4 v6, 0x0

    goto :goto_3c
.end method

.method public static encryptExOK(Ljava/lang/String;[B)[B
    .registers 13
    .param p0, "keys"    # Ljava/lang/String;
    .param p1, "dataBytes"    # [B

    .prologue
    .line 180
    :try_start_0
    const-string v8, "AES/ECB/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 181
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 183
    .local v0, "blockSize":I
    array-length v6, p1

    .line 184
    .local v6, "plaintextLength":I
    rem-int v8, v6, v0

    if-eqz v8, :cond_14

    .line 185
    rem-int v8, v6, v0

    sub-int v8, v0, v8

    add-int/2addr v6, v8

    .line 187
    :cond_14
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    const-string v8, "utf-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "AES"

    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 190
    .local v7, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-array v5, v6, [B

    .line 191
    .local v5, "plaintext":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    if-lt v4, v6, :cond_35

    .line 193
    const/4 v8, 0x0

    const/4 v9, 0x0

    array-length v10, p1

    invoke-static {p1, v8, v5, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    const/4 v8, 0x1

    invoke-virtual {v1, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 195
    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 204
    .end local v0    # "blockSize":I
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "i":I
    .end local v5    # "plaintext":[B
    .end local v6    # "plaintextLength":I
    .end local v7    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_34
    return-object v3

    .line 192
    .restart local v0    # "blockSize":I
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "i":I
    .restart local v5    # "plaintext":[B
    .restart local v6    # "plaintextLength":I
    .restart local v7    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_35
    const/4 v8, 0x0

    aput-byte v8, v5, v4
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_3b

    .line 191
    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 202
    .end local v0    # "blockSize":I
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "i":I
    .end local v5    # "plaintext":[B
    .end local v6    # "plaintextLength":I
    .end local v7    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_3b
    move-exception v2

    .line 203
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 204
    const/4 v3, 0x0

    goto :goto_34
.end method

.method public static fromHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 330
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/idelan/Encrypt/AESCoder;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private static getRawKey([B)[B
    .registers 7
    .param p0, "seed"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 269
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    .line 272
    .local v0, "kgen":Ljavax/crypto/KeyGenerator;
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    sget-object v5, Lcom/idelan/Encrypt/AESCoder;->AES_IV:[B

    invoke-direct {v1, v5}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 273
    .local v1, "paramSpec":Ljavax/crypto/spec/IvParameterSpec;
    const-string v5, "SHA1PRNG"

    invoke-static {v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v4

    .line 274
    .local v4, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v4, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 276
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 277
    .local v3, "sKey":Ljavax/crypto/SecretKey;
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 279
    .local v2, "raw":[B
    return-object v2
.end method

.method private static getRawKey2([B)[B
    .registers 7
    .param p0, "seed"    # [B

    .prologue
    .line 78
    :try_start_0
    const-string v5, "AES"

    invoke-static {v5}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 79
    .local v1, "kgen":Ljavax/crypto/KeyGenerator;
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 80
    .local v0, "digest":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 82
    const-string v5, "SHA1PRNG"

    invoke-static {v5}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v4

    .line 83
    .local v4, "sr":Ljava/security/SecureRandom;
    invoke-virtual {v4, p0}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 86
    const/16 v5, 0x80

    invoke-virtual {v1, v5, v4}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 87
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    .line 88
    .local v3, "skey":Ljavax/crypto/SecretKey;
    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_26

    move-result-object v2

    .line 94
    .end local v0    # "digest":Ljava/security/MessageDigest;
    .end local v1    # "kgen":Ljavax/crypto/KeyGenerator;
    .end local v3    # "skey":Ljavax/crypto/SecretKey;
    .end local v4    # "sr":Ljava/security/SecureRandom;
    :goto_25
    return-object v2

    .line 90
    :catch_26
    move-exception v5

    .line 94
    const/4 v2, 0x0

    goto :goto_25
.end method

.method public static initSecretKey()[B
    .registers 4

    .prologue
    .line 62
    const/4 v1, 0x0

    .line 64
    .local v1, "kg":Ljavax/crypto/KeyGenerator;
    :try_start_1
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_6} :catch_15

    move-result-object v1

    .line 71
    const/16 v3, 0x80

    invoke-virtual {v1, v3}, Ljavax/crypto/KeyGenerator;->init(I)V

    .line 73
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v2

    .line 74
    .local v2, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v3

    .end local v2    # "secretKey":Ljavax/crypto/SecretKey;
    :goto_14
    return-object v3

    .line 65
    :catch_15
    move-exception v0

    .line 66
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 67
    const/4 v3, 0x0

    new-array v3, v3, [B

    goto :goto_14
.end method

.method public static toByte(Ljava/lang/String;)[B
    .registers 6
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 335
    .local v1, "len":I
    new-array v2, v1, [B

    .line 336
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-lt v0, v1, :cond_c

    .line 339
    return-object v2

    .line 337
    :cond_c
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 338
    const/16 v4, 0x10

    .line 337
    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 338
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    .line 337
    aput-byte v3, v2, v0

    .line 336
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    .line 326
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/idelan/Encrypt/AESCoder;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .registers 4
    .param p0, "buf"    # [B

    .prologue
    .line 343
    if-nez p0, :cond_5

    .line 344
    const-string v2, ""

    .line 349
    :goto_4
    return-object v2

    .line 345
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 346
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v2, p0

    if-lt v0, v2, :cond_16

    .line 349
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 347
    :cond_16
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/idelan/Encrypt/AESCoder;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 346
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method
