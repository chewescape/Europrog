.class public Lcom/idelan/Encrypt/AESEncrypt;
.super Ljava/lang/Object;
.source "AESEncrypt.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CalcAes128_EcbSize(I)I
    .registers 5
    .param p0, "srcLen"    # I

    .prologue
    .line 154
    int-to-double v0, p0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x10

    return v0
.end method

.method public static appendHex(Ljava/lang/StringBuffer;B)V
    .registers 5
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 150
    const-string v0, "0123456789ABCDEF"

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "0123456789ABCDEF"

    and-int/lit8 v2, p1, 0xf

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    return-void
.end method

.method public static decryptData(Ljava/lang/String;[BII)[B
    .registers 12
    .param p0, "keys"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 83
    :try_start_0
    const-string v6, "AES/ECB/NoPadding"

    invoke-static {v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 84
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 86
    .local v0, "blockSize":I
    move v4, p3

    .line 87
    .local v4, "plaintextLength":I
    rem-int v6, v4, v0

    if-eqz v6, :cond_14

    .line 89
    rem-int v6, v4, v0

    sub-int v6, v0, v6

    add-int/2addr v4, v6

    .line 91
    :cond_14
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    .line 92
    const-string v6, "utf-8"

    invoke-virtual {p0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const-string v7, "AES"

    .line 91
    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 100
    .local v5, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 102
    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Cipher;->doFinal([BII)[B
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2a

    move-result-object v3

    .line 107
    .end local v0    # "blockSize":I
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "plaintextLength":I
    .end local v5    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_29
    return-object v3

    .line 105
    :catch_2a
    move-exception v2

    .line 106
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 107
    const/4 v3, 0x0

    goto :goto_29
.end method

.method public static encryptData(Ljava/lang/String;[BII)[B
    .registers 14
    .param p0, "keys"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 16
    :try_start_0
    const-string v8, "AES/ECB/NoPadding"

    invoke-static {v8}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 17
    .local v1, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v1}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v0

    .line 19
    .local v0, "blockSize":I
    move v6, p3

    .line 20
    .local v6, "plaintextLength":I
    rem-int v8, v6, v0

    if-eqz v8, :cond_18

    .line 22
    rem-int v8, v6, v0

    sub-int v8, v0, v8

    .line 21
    add-int/2addr v8, v6

    .line 22
    mul-int/lit8 v9, v0, 0xe

    .line 21
    add-int v6, v8, v9

    .line 24
    :cond_18
    new-instance v7, Ljavax/crypto/spec/SecretKeySpec;

    .line 25
    const-string v8, "utf-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    const-string v9, "AES"

    .line 24
    invoke-direct {v7, v8, v9}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 28
    .local v7, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-array v5, v6, [B

    .line 29
    .local v5, "plaintext":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_28
    if-lt v4, v6, :cond_37

    .line 32
    const/4 v8, 0x0

    invoke-static {p1, p2, v5, v8, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    const/4 v8, 0x1

    invoke-virtual {v1, v8, v7}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 34
    invoke-virtual {v1, v5}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    .line 39
    .end local v0    # "blockSize":I
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "i":I
    .end local v5    # "plaintext":[B
    .end local v6    # "plaintextLength":I
    .end local v7    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_36
    return-object v3

    .line 30
    .restart local v0    # "blockSize":I
    .restart local v1    # "cipher":Ljavax/crypto/Cipher;
    .restart local v4    # "i":I
    .restart local v5    # "plaintext":[B
    .restart local v6    # "plaintextLength":I
    .restart local v7    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_37
    const/4 v8, 0x0

    aput-byte v8, v5, v4
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3d

    .line 29
    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    .line 37
    .end local v0    # "blockSize":I
    .end local v1    # "cipher":Ljavax/crypto/Cipher;
    .end local v4    # "i":I
    .end local v5    # "plaintext":[B
    .end local v6    # "plaintextLength":I
    .end local v7    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_3d
    move-exception v2

    .line 38
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 39
    const/4 v3, 0x0

    goto :goto_36
.end method

.method public static encryptDataEx(Ljava/lang/String;[BII[BI)I
    .registers 17
    .param p0, "keys"    # Ljava/lang/String;
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .param p4, "out"    # [B
    .param p5, "outoffset"    # I

    .prologue
    .line 47
    :try_start_0
    const-string v2, "AES/ECB/NoPadding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 48
    .local v0, "cipher":Ljavax/crypto/Cipher;
    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v6

    .line 50
    .local v6, "blockSize":I
    move v3, p3

    .line 51
    .local v3, "plaintextLength":I
    rem-int v2, v3, v6

    if-eqz v2, :cond_14

    .line 53
    rem-int v2, v3, v6

    sub-int v2, v6, v2

    add-int/2addr v3, v2

    .line 55
    :cond_14
    new-instance v10, Ljavax/crypto/spec/SecretKeySpec;

    .line 56
    const-string v2, "utf-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v4, "AES"

    .line 55
    invoke-direct {v10, v2, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 59
    .local v10, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    new-array v1, v3, [B

    .line 60
    .local v1, "plaintext":[B
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_24
    if-lt v8, v3, :cond_37

    .line 63
    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 65
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v10}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 68
    const/4 v2, 0x0

    move-object v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v9

    .line 75
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "plaintext":[B
    .end local v3    # "plaintextLength":I
    .end local v6    # "blockSize":I
    .end local v8    # "i":I
    .end local v10    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_36
    return v9

    .line 61
    .restart local v0    # "cipher":Ljavax/crypto/Cipher;
    .restart local v1    # "plaintext":[B
    .restart local v3    # "plaintextLength":I
    .restart local v6    # "blockSize":I
    .restart local v8    # "i":I
    .restart local v10    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :cond_37
    const/4 v2, 0x0

    aput-byte v2, v1, v8
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3d

    .line 60
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    .line 73
    .end local v0    # "cipher":Ljavax/crypto/Cipher;
    .end local v1    # "plaintext":[B
    .end local v3    # "plaintextLength":I
    .end local v6    # "blockSize":I
    .end local v8    # "i":I
    .end local v10    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :catch_3d
    move-exception v7

    .line 74
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    const/4 v9, -0x1

    goto :goto_36
.end method

.method public static fromHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 116
    if-nez p0, :cond_5

    .line 117
    const-string v0, ""

    .line 124
    :goto_4
    return-object v0

    .line 118
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 119
    const-string v0, ""

    goto :goto_4

    .line 120
    :cond_e
    invoke-static {p0}, Lcom/idelan/Encrypt/AESEncrypt;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_17

    .line 122
    const-string v0, ""

    goto :goto_4

    .line 124
    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/idelan/Encrypt/AESEncrypt;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    goto :goto_4
.end method

.method public static toByte(Ljava/lang/String;)[B
    .registers 6
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v1, v3, 0x2

    .line 129
    .local v1, "len":I
    new-array v2, v1, [B

    .line 130
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_9
    if-lt v0, v1, :cond_c

    .line 133
    return-object v2

    .line 131
    :cond_c
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 132
    const/16 v4, 0x10

    .line 131
    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    .line 131
    aput-byte v3, v2, v0

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public static toHex(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/idelan/Encrypt/AESEncrypt;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHex([B)Ljava/lang/String;
    .registers 4
    .param p0, "buf"    # [B

    .prologue
    .line 137
    if-nez p0, :cond_5

    .line 138
    const-string v2, ""

    .line 144
    :goto_4
    return-object v2

    .line 139
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 140
    .local v1, "result":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    array-length v2, p0

    if-lt v0, v2, :cond_16

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 141
    :cond_16
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/idelan/Encrypt/AESEncrypt;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_e
.end method
