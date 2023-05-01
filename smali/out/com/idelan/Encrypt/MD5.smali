.class public Lcom/idelan/Encrypt/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# static fields
.field protected static hexDigits:[C


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/idelan/Encrypt/MD5;->hexDigits:[C

    .line 14
    return-void

    .line 13
    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5File(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "file"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 40
    const/4 v3, 0x1

    .line 43
    .local v3, "fileIsNull":Z
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "apkFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_e

    .line 67
    .end local v0    # "apkFile":Ljava/io/File;
    :cond_d
    :goto_d
    return-object v7

    .line 46
    .restart local v0    # "apkFile":Ljava/io/File;
    :cond_e
    const/16 v8, 0x800

    new-array v1, v8, [B

    .line 47
    .local v1, "buf":[B
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 48
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 49
    .local v5, "len":I
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v6

    .line 51
    .local v6, "md":Ljava/security/MessageDigest;
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .line 52
    if-lez v5, :cond_27

    .line 53
    const/4 v3, 0x0

    .line 54
    :goto_25
    if-gtz v5, :cond_35

    .line 59
    :cond_27
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2a} :catch_3e

    .line 64
    if-nez v3, :cond_d

    .line 67
    invoke-virtual {v6}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v7

    invoke-static {v7}, Lcom/idelan/Encrypt/MD5;->bufferToHex([B)Ljava/lang/String;

    move-result-object v7

    goto :goto_d

    .line 55
    :cond_35
    const/4 v8, 0x0

    :try_start_36
    invoke-virtual {v6, v1, v8, v5}, Ljava/security/MessageDigest;->update([BII)V

    .line 56
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3c} :catch_3e

    move-result v5

    goto :goto_25

    .line 60
    .end local v0    # "apkFile":Ljava/io/File;
    .end local v1    # "buf":[B
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    .end local v6    # "md":Ljava/security/MessageDigest;
    :catch_3e
    move-exception v2

    .line 61
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_d
.end method

.method private static appendHexPair(BLjava/lang/StringBuffer;)V
    .registers 6
    .param p0, "bt"    # B
    .param p1, "stringbuffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 233
    sget-object v2, Lcom/idelan/Encrypt/MD5;->hexDigits:[C

    and-int/lit16 v3, p0, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v0, v2, v3

    .line 234
    .local v0, "c0":C
    sget-object v2, Lcom/idelan/Encrypt/MD5;->hexDigits:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v1, v2, v3

    .line 235
    .local v1, "c1":C
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 236
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    return-void
.end method

.method private static bufferToHex([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .prologue
    .line 220
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/idelan/Encrypt/MD5;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bufferToHex([BII)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B
    .param p1, "m"    # I
    .param p2, "n"    # I

    .prologue
    .line 224
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 225
    .local v2, "stringbuffer":Ljava/lang/StringBuffer;
    add-int v0, p1, p2

    .line 226
    .local v0, "k":I
    move v1, p1

    .local v1, "l":I
    :goto_a
    if-lt v1, v0, :cond_11

    .line 229
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 227
    :cond_11
    aget-byte v3, p0, v1

    invoke-static {v3, v2}, Lcom/idelan/Encrypt/MD5;->appendHexPair(BLjava/lang/StringBuffer;)V

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_a
.end method

.method public static checkPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "md5PwdStr"    # Ljava/lang/String;

    .prologue
    .line 240
    invoke-static {p0}, Lcom/idelan/Encrypt/MD5;->getMD5String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static getEncPassWord(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "sUser"    # Ljava/lang/String;
    .param p1, "sPass"    # Ljava/lang/String;

    .prologue
    .line 77
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "midea"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "sSrc":Ljava/lang/String;
    const-string v4, "utf-8"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 79
    .local v3, "src":[B
    const/4 v4, 0x0

    array-length v5, v3

    invoke-static {v3, v4, v5}, Lcom/idelan/Encrypt/MD5;->getMD5Byte([BII)[B

    move-result-object v0

    .line 80
    .local v0, "md51":[B
    const/16 v4, 0x8

    const/16 v5, 0x8

    invoke-static {v0, v4, v5}, Lcom/idelan/Encrypt/MD5;->getMD5Byte([BII)[B

    move-result-object v1

    .line 81
    .local v1, "md52":[B
    const/16 v4, 0x8

    const/16 v5, 0x8

    const/16 v6, 0x8

    invoke-static {v0, v1, v4, v5, v6}, Lcom/idelan/Charset/CharTools;->Memcpy([B[BIII)V

    .line 82
    invoke-static {v0}, Lcom/idelan/Charset/CharTools;->md5BytesToString([B)Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3d} :catch_3f

    move-result-object v4

    .line 86
    .end local v0    # "md51":[B
    .end local v1    # "md52":[B
    .end local v2    # "sSrc":Ljava/lang/String;
    .end local v3    # "src":[B
    :goto_3e
    return-object v4

    .line 83
    :catch_3f
    move-exception v4

    .line 86
    const-string v4, ""

    goto :goto_3e
.end method

.method public static getFileMD5String(Ljava/io/File;)Ljava/lang/String;
    .registers 11
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 18
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 19
    .local v9, "messagedigest":Ljava/security/MessageDigest;
    invoke-virtual {v9}, Ljava/security/MessageDigest;->reset()V

    .line 20
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 21
    .local v7, "in":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 22
    .local v0, "ch":Ljava/nio/channels/FileChannel;
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    .line 23
    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 22
    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 24
    .local v6, "byteBuffer":Ljava/nio/MappedByteBuffer;
    invoke-virtual {v9, v6}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 25
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/idelan/Encrypt/MD5;->bufferToHex([B)Ljava/lang/String;

    move-result-object v8

    .line 26
    .local v8, "md5Str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/nio/MappedByteBuffer;->flip()Ljava/nio/Buffer;

    .line 27
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 28
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    .line 35
    .end local v0    # "ch":Ljava/nio/channels/FileChannel;
    .end local v6    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v7    # "in":Ljava/io/FileInputStream;
    .end local v8    # "md5Str":Ljava/lang/String;
    .end local v9    # "messagedigest":Ljava/security/MessageDigest;
    :goto_32
    return-object v8

    .line 32
    :catch_33
    move-exception v1

    .line 35
    const/4 v8, 0x0

    goto :goto_32
.end method

.method public static getMD5Byte([BII)[B
    .registers 5
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 208
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 209
    .local v0, "messagedigest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 210
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 211
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 215
    .end local v0    # "messagedigest":Ljava/security/MessageDigest;
    :goto_10
    return-object v1

    .line 212
    :catch_11
    move-exception v1

    .line 215
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public static getMD5String(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/idelan/Encrypt/MD5;->getMD5String([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5String(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "sSrc"    # Ljava/lang/String;
    .param p1, "sKey"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/idelan/Encrypt/MD5;->getMD5String([B[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMD5String(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "sSrc"    # Ljava/lang/String;
    .param p1, "sKey1"    # Ljava/lang/String;
    .param p2, "sKey2"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    if-nez p0, :cond_5

    .line 99
    :goto_4
    return-object v2

    .line 96
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 97
    .local v0, "data1":[B
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_25

    move-object v3, v2

    .line 98
    .local v3, "data2":[B
    :goto_10
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2a

    move-object v6, v2

    .line 99
    .local v6, "data3":[B
    :goto_17
    array-length v2, v0

    if-nez v3, :cond_2f

    move v5, v1

    .line 100
    :goto_1b
    if-nez v3, :cond_31

    move v8, v1

    :goto_1e
    move v4, v1

    move v7, v1

    .line 99
    invoke-static/range {v0 .. v8}, Lcom/idelan/Encrypt/MD5;->getMD5String([BII[BII[BII)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 97
    .end local v3    # "data2":[B
    .end local v6    # "data3":[B
    :cond_25
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    goto :goto_10

    .line 98
    .restart local v3    # "data2":[B
    :cond_2a
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    goto :goto_17

    .line 100
    .restart local v6    # "data3":[B
    :cond_2f
    array-length v5, v3

    goto :goto_1b

    :cond_31
    array-length v8, v6

    goto :goto_1e
.end method

.method public static getMD5String(Ljava/lang/String;[BIILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "sData"    # Ljava/lang/String;
    .param p1, "data2"    # [B
    .param p2, "offset"    # I
    .param p3, "nLen"    # I
    .param p4, "sKey2"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 105
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 106
    .local v0, "data1":[B
    invoke-virtual {p4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    .line 107
    .local v6, "data3":[B
    array-length v2, v0

    .line 108
    array-length v8, v6

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v7, v1

    .line 107
    invoke-static/range {v0 .. v8}, Lcom/idelan/Encrypt/MD5;->getMD5String([BII[BII[BII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getMD5String([B)Ljava/lang/String;
    .registers 3
    .param p0, "bytes"    # [B

    .prologue
    .line 126
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 127
    .local v0, "messagedigest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 128
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 129
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/idelan/Encrypt/MD5;->bufferToHex([B)Ljava/lang/String;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v1

    .line 133
    .end local v0    # "messagedigest":Ljava/security/MessageDigest;
    :goto_14
    return-object v1

    .line 130
    :catch_15
    move-exception v1

    .line 133
    const-string v1, ""

    goto :goto_14
.end method

.method public static getMD5String([BIILjava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "nLen"    # I
    .param p3, "sSignKey"    # Ljava/lang/String;

    .prologue
    .line 192
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 193
    .local v1, "messagedigest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 194
    invoke-virtual {v1, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 195
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 196
    .local v0, "key":[B
    if-eqz v0, :cond_15

    .line 197
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 198
    :cond_15
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-static {v2}, Lcom/idelan/Encrypt/MD5;->bufferToHex([B)Ljava/lang/String;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v2

    .line 202
    .end local v0    # "key":[B
    .end local v1    # "messagedigest":Ljava/security/MessageDigest;
    :goto_1d
    return-object v2

    .line 199
    :catch_1e
    move-exception v2

    .line 202
    const-string v2, ""

    goto :goto_1d
.end method

.method public static getMD5String([BII[BII[BII)Ljava/lang/String;
    .registers 11
    .param p0, "bytes1"    # [B
    .param p1, "offset1"    # I
    .param p2, "len1"    # I
    .param p3, "bytes2"    # [B
    .param p4, "offset2"    # I
    .param p5, "len2"    # I
    .param p6, "bytes3"    # [B
    .param p7, "offset3"    # I
    .param p8, "len3"    # I

    .prologue
    .line 174
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 175
    .local v0, "messagedigest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 176
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 177
    if-eqz p3, :cond_13

    if-lez p5, :cond_13

    .line 178
    invoke-virtual {v0, p3, p4, p5}, Ljava/security/MessageDigest;->update([BII)V

    .line 179
    :cond_13
    if-eqz p6, :cond_18

    .line 180
    invoke-virtual {v0, p6, p7, p8}, Ljava/security/MessageDigest;->update([BII)V

    .line 181
    :cond_18
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/idelan/Encrypt/MD5;->bufferToHex([B)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v1

    .line 185
    .end local v0    # "messagedigest":Ljava/security/MessageDigest;
    :goto_20
    return-object v1

    .line 182
    :catch_21
    move-exception v1

    .line 185
    const-string v1, ""

    goto :goto_20
.end method

.method public static getMD5String([B[B)Ljava/lang/String;
    .registers 4
    .param p0, "bytes1"    # [B
    .param p1, "bytes2"    # [B

    .prologue
    .line 139
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 140
    .local v0, "messagedigest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 141
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 142
    if-eqz p1, :cond_11

    .line 143
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 144
    :cond_11
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    invoke-static {v1}, Lcom/idelan/Encrypt/MD5;->bufferToHex([B)Ljava/lang/String;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v1

    .line 148
    .end local v0    # "messagedigest":Ljava/security/MessageDigest;
    :goto_19
    return-object v1

    .line 145
    :catch_1a
    move-exception v1

    .line 148
    const-string v1, ""

    goto :goto_19
.end method

.method public static getMM5Byte(Ljava/lang/String;)[B
    .registers 4
    .param p0, "sSrc"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 114
    .local v0, "bytes":[B
    :try_start_4
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 115
    .local v1, "messagedigest":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 116
    invoke-virtual {v1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 117
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_13} :catch_15

    move-result-object v2

    .line 121
    .end local v1    # "messagedigest":Ljava/security/MessageDigest;
    :goto_14
    return-object v2

    .line 118
    :catch_15
    move-exception v2

    .line 121
    const/4 v2, 0x0

    goto :goto_14
.end method

.method public static getMd5Char([BII[BII[BII)[B
    .registers 11
    .param p0, "bytes1"    # [B
    .param p1, "offset1"    # I
    .param p2, "len1"    # I
    .param p3, "bytes2"    # [B
    .param p4, "offset2"    # I
    .param p5, "len2"    # I
    .param p6, "bytes3"    # [B
    .param p7, "offset3"    # I
    .param p8, "len3"    # I

    .prologue
    .line 156
    :try_start_0
    const-string v1, "MD5"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 157
    .local v0, "messagedigest":Ljava/security/MessageDigest;
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 158
    invoke-virtual {v0, p0, p1, p2}, Ljava/security/MessageDigest;->update([BII)V

    .line 159
    if-eqz p3, :cond_13

    if-lez p5, :cond_13

    .line 160
    invoke-virtual {v0, p3, p4, p5}, Ljava/security/MessageDigest;->update([BII)V

    .line 161
    :cond_13
    if-eqz p6, :cond_18

    .line 162
    invoke-virtual {v0, p6, p7, p8}, Ljava/security/MessageDigest;->update([BII)V

    .line 163
    :cond_18
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v1

    .line 167
    .end local v0    # "messagedigest":Ljava/security/MessageDigest;
    :goto_1c
    return-object v1

    .line 164
    :catch_1d
    move-exception v1

    .line 167
    const/4 v1, 0x0

    goto :goto_1c
.end method
