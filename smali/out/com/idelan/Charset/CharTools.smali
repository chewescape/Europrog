.class public Lcom/idelan/Charset/CharTools;
.super Ljava/lang/Object;
.source "CharTools.java"


# static fields
.field private static final HEX:Ljava/lang/String; = "0123456789ABCDEF"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CodeToWord(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x3

    .line 311
    const/4 v3, 0x0

    .line 313
    .local v3, "result":Ljava/lang/String;
    invoke-static {p0}, Lcom/idelan/Charset/CharTools;->Utf8codeCheck(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 314
    new-array v0, v5, [B

    .line 316
    .local v0, "code":[B
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    :try_start_d
    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit16 v5, v5, -0x100

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 317
    const/4 v4, 0x1

    const/4 v5, 0x4

    const/4 v6, 0x6

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit16 v5, v5, -0x100

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 318
    const/4 v4, 0x2

    const/4 v5, 0x7

    const/16 v6, 0x9

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5

    add-int/lit16 v5, v5, -0x100

    int-to-byte v5, v5

    aput-byte v5, v0, v4
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_41} :catch_4c

    .line 324
    if-eqz v0, :cond_4a

    .line 326
    :try_start_43
    new-instance v3, Ljava/lang/String;

    .end local v3    # "result":Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_4a
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_43 .. :try_end_4a} :catch_4f

    .end local v0    # "code":[B
    .restart local v3    # "result":Ljava/lang/String;
    :cond_4a
    :goto_4a
    move-object v4, v3

    .line 335
    :goto_4b
    return-object v4

    .line 319
    .restart local v0    # "code":[B
    :catch_4c
    move-exception v2

    .line 320
    .local v2, "nfe":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    goto :goto_4b

    .line 328
    .end local v2    # "nfe":Ljava/lang/NumberFormatException;
    .end local v3    # "result":Ljava/lang/String;
    :catch_4f
    move-exception v1

    .line 329
    .local v1, "ex":Ljava/io/UnsupportedEncodingException;
    const/4 v3, 0x0

    .line 331
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_4a

    .line 332
    .end local v0    # "code":[B
    .end local v1    # "ex":Ljava/io/UnsupportedEncodingException;
    :cond_52
    move-object v3, p0

    goto :goto_4a
.end method

.method public static GB2ISO(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 250
    const-string v1, ""

    .line 252
    .local v1, "result":Ljava/lang/String;
    if-eqz p0, :cond_20

    .line 253
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_20

    .line 254
    const-string v3, "GB2312"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v3, :cond_20

    .line 256
    new-instance v2, Ljava/lang/String;

    const-string v3, "GB2312"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 257
    const-string v4, "ISO-8859-1"

    .line 256
    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_1f} :catch_21

    .end local v1    # "result":Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    move-object v1, v2

    .line 264
    .end local v2    # "result":Ljava/lang/String;
    .restart local v1    # "result":Ljava/lang/String;
    :cond_20
    :goto_20
    return-object v1

    .line 261
    :catch_21
    move-exception v0

    .line 262
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_20
.end method

.method public static ISO2GB(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string v1, ""

    .line 234
    .local v1, "result":Ljava/lang/String;
    if-eqz p0, :cond_1f

    .line 235
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1f

    .line 236
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 238
    new-instance v1, Ljava/lang/String;

    .end local v1    # "result":Ljava/lang/String;
    const-string v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 239
    const-string v3, "GB2312"

    .line 238
    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_1f} :catch_20

    .line 246
    .restart local v1    # "result":Ljava/lang/String;
    :cond_1f
    :goto_1f
    return-object v1

    .line 243
    .end local v1    # "result":Ljava/lang/String;
    :catch_20
    move-exception v0

    .line 244
    .local v0, "ex":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "result":Ljava/lang/String;
    goto :goto_1f
.end method

.method public static Memcpy([B[BIII)V
    .registers 8
    .param p0, "output"    # [B
    .param p1, "input"    # [B
    .param p2, "outpos"    # I
    .param p3, "inpos"    # I
    .param p4, "len"    # I

    .prologue
    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-lt v0, p4, :cond_4

    .line 229
    return-void

    .line 228
    :cond_4
    add-int v1, p2, v0

    add-int v2, p3, v0

    aget-byte v2, p1, v2

    aput-byte v2, p0, v1

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static Utf8URLdecode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 299
    const-string v2, "\\+"

    const-string v3, " "

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 300
    const-string v1, ""

    .line 302
    .local v1, "result":Ljava/lang/String;
    :try_start_a
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_f} :catch_11

    move-result-object v1

    .line 307
    :goto_10
    return-object v1

    .line 303
    :catch_11
    move-exception v0

    .line 305
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_10
.end method

.method public static Utf8URLencode(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 268
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 270
    .local v5, "result":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-lt v2, v6, :cond_11

    .line 295
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 271
    :cond_11
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 272
    .local v1, "c":C
    const/16 v6, 0x20

    if-ne v1, v6, :cond_21

    .line 273
    const/16 v6, 0x2b

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 270
    :cond_1e
    :goto_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 274
    :cond_21
    const/16 v6, 0x2e

    if-eq v6, v1, :cond_52

    const/16 v6, 0x2d

    if-eq v6, v1, :cond_52

    const/16 v6, 0x5f

    if-eq v6, v1, :cond_52

    const/16 v6, 0x7e

    if-eq v6, v1, :cond_52

    .line 275
    const/16 v6, 0x61

    if-gt v6, v1, :cond_39

    const/16 v6, 0x7a

    if-le v1, v6, :cond_52

    :cond_39
    const/16 v6, 0x41

    if-gt v6, v1, :cond_41

    const/16 v6, 0x5a

    if-le v1, v6, :cond_52

    .line 276
    :cond_41
    const/16 v6, 0x30

    if-gt v6, v1, :cond_49

    const/16 v6, 0x39

    if-le v1, v6, :cond_52

    :cond_49
    const/16 v6, 0x4e00

    if-lt v1, v6, :cond_56

    const v6, 0x9fbb

    if-gt v1, v6, :cond_56

    .line 277
    :cond_52
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1e

    .line 279
    :cond_56
    const/4 v6, 0x0

    new-array v0, v6, [B

    .line 281
    .local v0, "b":[B
    :try_start_59
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-virtual {v6, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_62} :catch_8a

    move-result-object v0

    .line 285
    :goto_63
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_64
    array-length v6, v0

    if-ge v3, v6, :cond_1e

    .line 286
    aget-byte v4, v0, v3

    .line 287
    .local v4, "k":I
    if-gez v4, :cond_6d

    .line 288
    add-int/lit16 v4, v4, 0x100

    .line 289
    :cond_6d
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "%"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 285
    add-int/lit8 v3, v3, 0x1

    goto :goto_64

    .line 282
    .end local v3    # "j":I
    .end local v4    # "k":I
    :catch_8a
    move-exception v6

    goto :goto_63
.end method

.method private static Utf8codeCheck(Ljava/lang/String;)Z
    .registers 6
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 339
    const-string v1, ""

    .line 340
    .local v1, "sign":Ljava/lang/String;
    const-string v2, "%e"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "%E"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 342
    :cond_13
    const/4 v0, 0x0

    .line 343
    .local v0, "p":I
    :goto_14
    if-ne v0, v4, :cond_1d

    .line 352
    .end local v0    # "p":I
    :cond_16
    const-string v2, "147-1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 344
    .restart local v0    # "p":I
    :cond_1d
    const-string v2, "%"

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    .line 345
    if-eq v0, v4, :cond_27

    .line 346
    add-int/lit8 v0, v0, 0x1

    .line 347
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_14
.end method

.method private static appendHex(Ljava/lang/StringBuffer;B)V
    .registers 5
    .param p0, "sb"    # Ljava/lang/StringBuffer;
    .param p1, "b"    # B

    .prologue
    .line 161
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

    .line 162
    return-void
.end method

.method public static byteHEX(B)Ljava/lang/String;
    .registers 6
    .param p0, "ib"    # B

    .prologue
    .line 130
    const/16 v3, 0x10

    new-array v0, v3, [C

    fill-array-data v0, :array_24

    .line 132
    .local v0, "Digit":[C
    const/4 v3, 0x2

    new-array v1, v3, [C

    .line 133
    .local v1, "ob":[C
    const/4 v3, 0x0

    ushr-int/lit8 v4, p0, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    .line 134
    const/4 v3, 0x1

    and-int/lit8 v4, p0, 0xf

    aget-char v4, v0, v4

    aput-char v4, v1, v3

    .line 135
    const-string v2, ""

    .line 136
    .local v2, "s":Ljava/lang/String;
    if-eqz v1, :cond_23

    .line 138
    new-instance v2, Ljava/lang/String;

    .end local v2    # "s":Ljava/lang/String;
    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 140
    .restart local v2    # "s":Ljava/lang/String;
    :cond_23
    return-object v2

    .line 130
    :array_24
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

.method public static chagefileUtf8URLdecode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 12
    .param p0, "oldfilepath"    # Ljava/lang/String;
    .param p1, "newfilepath"    # Ljava/lang/String;

    .prologue
    .line 451
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 452
    .local v2, "fileread":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 455
    .local v0, "bufread":Ljava/io/BufferedReader;
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 456
    .local v3, "fos":Ljava/io/FileOutputStream;
    new-instance v5, Ljava/io/PrintWriter;

    invoke-direct {v5, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 460
    .local v5, "pw":Ljava/io/PrintWriter;
    :goto_19
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "read":Ljava/lang/String;
    if-nez v6, :cond_2c

    .line 486
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 487
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 488
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 489
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 495
    .end local v0    # "bufread":Ljava/io/BufferedReader;
    .end local v2    # "fileread":Ljava/io/FileReader;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    .end local v6    # "read":Ljava/lang/String;
    :goto_2b
    return-void

    .line 461
    .restart local v0    # "bufread":Ljava/io/BufferedReader;
    .restart local v2    # "fileread":Ljava/io/FileReader;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    .restart local v6    # "read":Ljava/lang/String;
    :cond_2c
    move-object v4, v6

    .line 462
    .local v4, "ls":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 464
    const-string v7, "%"

    invoke-virtual {v4, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_43

    .line 465
    invoke-static {v4}, Lcom/idelan/Charset/CharTools;->isUtf8Url(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 466
    invoke-static {v6}, Lcom/idelan/Charset/CharTools;->Utf8URLdecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 480
    :cond_43
    :goto_43
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "rn"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_59} :catch_5a

    goto :goto_19

    .line 491
    .end local v0    # "bufread":Ljava/io/BufferedReader;
    .end local v2    # "fileread":Ljava/io/FileReader;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "ls":Ljava/lang/String;
    .end local v5    # "pw":Ljava/io/PrintWriter;
    .end local v6    # "read":Ljava/lang/String;
    :catch_5a
    move-exception v1

    .line 493
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    .line 472
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bufread":Ljava/io/BufferedReader;
    .restart local v2    # "fileread":Ljava/io/FileReader;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "ls":Ljava/lang/String;
    .restart local v5    # "pw":Ljava/io/PrintWriter;
    .restart local v6    # "read":Ljava/lang/String;
    :cond_5f
    :try_start_5f
    invoke-static {v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 473
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "run this is urldecode==="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 474
    invoke-static {v4}, Lcom/idelan/Charset/CharTools;->Utf8URLdecode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_7a} :catch_5a

    move-result-object v4

    goto :goto_43
.end method

.method public static hexToBytes(Ljava/lang/String;)[B
    .registers 2
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-static {p0}, Lcom/idelan/Charset/CharTools;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static hexToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "hex"    # Ljava/lang/String;

    .prologue
    .line 17
    if-eqz p0, :cond_18

    .line 18
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    .line 19
    invoke-static {p0}, Lcom/idelan/Charset/CharTools;->toByte(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_18

    .line 21
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/idelan/Charset/CharTools;->toByte(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 25
    :goto_17
    return-object v0

    :cond_18
    const-string v0, ""

    goto :goto_17
.end method

.method public static isEmptyId(Ljava/lang/String;)Z
    .registers 2
    .param p0, "sId"    # Ljava/lang/String;

    .prologue
    .line 165
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_12

    .line 166
    const-string v0, "000000000000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 165
    const/4 v0, 0x0

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public static isLowVersion(Ljava/lang/String;)Z
    .registers 5
    .param p0, "sVer"    # Ljava/lang/String;

    .prologue
    .line 89
    const/high16 v1, 0x1000000

    .line 90
    .local v1, "nVer1":I
    const/high16 v2, 0x1010000

    .line 91
    .local v2, "nVer2":I
    invoke-static {p0}, Lcom/idelan/Charset/CharTools;->parseVersion2Int(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, "nVer":I
    if-eq v0, v2, :cond_e

    if-eq v0, v1, :cond_e

    const/4 v3, 0x0

    :goto_d
    return v3

    :cond_e
    const/4 v3, 0x1

    goto :goto_d
.end method

.method public static isUtf8Url(Ljava/lang/String;)Z
    .registers 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 357
    const-string v1, "%"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 359
    .local v0, "p":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1c

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v0

    const/16 v2, 0x9

    if-le v1, v2, :cond_1c

    .line 360
    add-int/lit8 v1, v0, 0x9

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 363
    :cond_1c
    invoke-static {p0}, Lcom/idelan/Charset/CharTools;->Utf8codeCheck(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static isVer1(Ljava/lang/String;)Z
    .registers 3
    .param p0, "sVer"    # Ljava/lang/String;

    .prologue
    .line 83
    const/high16 v0, 0x1000000

    .line 85
    .local v0, "nVer2":I
    invoke-static {p0}, Lcom/idelan/Charset/CharTools;->parseVersion2Int(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static isVer11(Ljava/lang/String;)Z
    .registers 3
    .param p0, "sVer"    # Ljava/lang/String;

    .prologue
    .line 96
    const/high16 v0, 0x1010000

    .line 98
    .local v0, "nVer2":I
    invoke-static {p0}, Lcom/idelan/Charset/CharTools;->parseVersion2Int(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static isVer2(Ljava/lang/String;)Z
    .registers 3
    .param p0, "sVer"    # Ljava/lang/String;

    .prologue
    .line 77
    const/high16 v0, 0x2000000

    .line 79
    .local v0, "nVer2":I
    invoke-static {p0}, Lcom/idelan/Charset/CharTools;->parseVersion2Int(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_a

    const/4 v1, 0x1

    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x0

    goto :goto_9
.end method

.method public static md5BytesToString([B)Ljava/lang/String;
    .registers 5
    .param p0, "input"    # [B

    .prologue
    .line 216
    const-string v1, ""

    .line 217
    .local v1, "result":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    const/16 v2, 0x10

    if-lt v0, v2, :cond_8

    .line 221
    return-object v1

    .line 218
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v3, p0, v0

    invoke-static {v3}, Lcom/idelan/Charset/CharTools;->byteHEX(B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static parseVersion2Int(Ljava/lang/String;)I
    .registers 13
    .param p0, "sVer"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0xff

    const/4 v6, 0x0

    .line 33
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_10

    :cond_e
    move v0, v6

    .line 73
    :goto_f
    return v0

    .line 35
    :cond_10
    const-string v7, "\\."

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "vers":[Ljava/lang/String;
    if-nez v5, :cond_1a

    move v0, v6

    .line 37
    goto :goto_f

    .line 38
    :cond_1a
    const/4 v0, 0x0

    .line 39
    .local v0, "nVer":I
    const/4 v1, 0x0

    .local v1, "ver1":I
    const/4 v2, 0x0

    .local v2, "ver2":I
    const/4 v3, 0x0

    .local v3, "ver3":I
    const/4 v4, 0x0

    .line 40
    .local v4, "ver4":I
    array-length v7, v5

    if-lez v7, :cond_28

    .line 41
    aget-object v7, v5, v6

    invoke-static {v7, v6}, Lcom/idelan/Charset/CharTools;->string2Int(Ljava/lang/String;I)I

    move-result v1

    .line 42
    :cond_28
    array-length v7, v5

    if-le v7, v9, :cond_31

    .line 43
    aget-object v7, v5, v9

    invoke-static {v7, v6}, Lcom/idelan/Charset/CharTools;->string2Int(Ljava/lang/String;I)I

    move-result v2

    .line 44
    :cond_31
    array-length v7, v5

    if-le v7, v10, :cond_3a

    .line 45
    aget-object v7, v5, v10

    invoke-static {v7, v6}, Lcom/idelan/Charset/CharTools;->string2Int(Ljava/lang/String;I)I

    move-result v3

    .line 46
    :cond_3a
    array-length v7, v5

    if-le v7, v11, :cond_43

    .line 47
    aget-object v7, v5, v11

    invoke-static {v7, v6}, Lcom/idelan/Charset/CharTools;->string2Int(Ljava/lang/String;I)I

    move-result v4

    .line 49
    :cond_43
    if-gez v1, :cond_47

    .line 50
    and-int/lit16 v1, v1, 0xff

    .line 51
    :cond_47
    if-gez v2, :cond_4b

    .line 52
    and-int/lit16 v2, v2, 0xff

    .line 53
    :cond_4b
    if-gez v2, :cond_4f

    .line 54
    and-int/lit16 v3, v3, 0xff

    .line 55
    :cond_4f
    if-gez v4, :cond_53

    .line 56
    and-int/lit16 v4, v4, 0xff

    .line 58
    :cond_53
    if-le v1, v8, :cond_56

    .line 59
    const/4 v1, 0x0

    .line 60
    :cond_56
    if-le v2, v8, :cond_59

    .line 61
    const/4 v2, 0x0

    .line 62
    :cond_59
    if-le v3, v8, :cond_5c

    .line 63
    const/4 v3, 0x0

    .line 64
    :cond_5c
    if-le v4, v8, :cond_5f

    .line 65
    const/4 v4, 0x0

    .line 67
    :cond_5f
    shl-int/lit8 v1, v1, 0x18

    .line 68
    shl-int/lit8 v2, v2, 0x10

    .line 69
    shl-int/lit8 v3, v3, 0x8

    .line 71
    add-int v6, v1, v2

    add-int/2addr v6, v3

    add-int v0, v6, v4

    .line 73
    goto :goto_f
.end method

.method public static parseVersion2String(I)Ljava/lang/String;
    .registers 8
    .param p0, "nVer"    # I

    .prologue
    .line 103
    const-string v0, ""

    .line 104
    .local v0, "sVer":Ljava/lang/String;
    const/high16 v5, -0x1000000

    and-int/2addr v5, p0

    ushr-int/lit8 v1, v5, 0x18

    .line 105
    .local v1, "ver1":I
    const/high16 v5, 0xff0000

    and-int/2addr v5, p0

    ushr-int/lit8 v2, v5, 0x10

    .line 106
    .local v2, "ver2":I
    const v5, 0xff00

    and-int/2addr v5, p0

    ushr-int/lit8 v3, v5, 0x8

    .line 107
    .local v3, "ver3":I
    and-int/lit16 v4, p0, 0xff

    .line 108
    .local v4, "ver4":I
    if-nez v4, :cond_38

    if-nez v3, :cond_38

    .line 109
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    :goto_37
    return-object v0

    .line 111
    :cond_38
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 112
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_37
.end method

.method public static readTxtFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 398
    const-string v6, ""

    .line 400
    .local v6, "readStr":Ljava/lang/String;
    :try_start_2
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 401
    .local v2, "fileread":Ljava/io/FileReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_c} :catch_4e

    .line 403
    .local v0, "bufread":Ljava/io/BufferedReader;
    :goto_c
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "read":Ljava/lang/String;
    if-nez v5, :cond_13

    .line 426
    .end local v0    # "bufread":Ljava/io/BufferedReader;
    .end local v2    # "fileread":Ljava/io/FileReader;
    .end local v5    # "read":Ljava/lang/String;
    :goto_12
    return-object v6

    .line 404
    .restart local v0    # "bufread":Ljava/io/BufferedReader;
    .restart local v2    # "fileread":Ljava/io/FileReader;
    .restart local v5    # "read":Ljava/lang/String;
    :cond_13
    invoke-static {v5}, Lcom/idelan/Charset/CharTools;->Utf8URLdecode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 405
    .local v3, "ls":Ljava/lang/String;
    if-eqz v3, :cond_31

    .line 406
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_31

    .line 407
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    if-eqz v7, :cond_31

    .line 409
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    const-string v8, "gbk"

    invoke-direct {v4, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .end local v3    # "ls":Ljava/lang/String;
    .local v4, "ls":Ljava/lang/String;
    move-object v3, v4

    .line 413
    .end local v4    # "ls":Ljava/lang/String;
    .restart local v3    # "ls":Ljava/lang/String;
    :cond_31
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "rn"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_47} :catch_49
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_47} :catch_4e

    move-result-object v6

    goto :goto_c

    .line 416
    .end local v3    # "ls":Ljava/lang/String;
    .end local v5    # "read":Ljava/lang/String;
    :catch_49
    move-exception v1

    .line 418
    .local v1, "e":Ljava/io/IOException;
    :try_start_4a
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_12

    .line 421
    .end local v0    # "bufread":Ljava/io/BufferedReader;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileread":Ljava/io/FileReader;
    :catch_4e
    move-exception v1

    .line 423
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public static string2Boolean(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "nDef"    # Z

    .prologue
    .line 188
    :try_start_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result p1

    .line 192
    .end local p1    # "nDef":Z
    :goto_4
    return p1

    .line 189
    .restart local p1    # "nDef":Z
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method public static string2Double(Ljava/lang/String;D)D
    .registers 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "nDef"    # D

    .prologue
    .line 198
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-wide p1

    .line 202
    .end local p1    # "nDef":D
    :goto_4
    return-wide p1

    .line 199
    .restart local p1    # "nDef":D
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method public static string2Float(Ljava/lang/String;F)F
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "nDef"    # F

    .prologue
    .line 208
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result p1

    .line 212
    .end local p1    # "nDef":F
    :goto_4
    return p1

    .line 209
    .restart local p1    # "nDef":F
    :catch_5
    move-exception v0

    goto :goto_4
.end method

.method public static string2Int(Ljava/lang/String;I)I
    .registers 3
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "nDef"    # I

    .prologue
    .line 171
    if-eqz p0, :cond_8

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 182
    .end local p1    # "nDef":I
    :cond_8
    :goto_8
    return p1

    .line 173
    .restart local p1    # "nDef":I
    :cond_9
    const-string v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "0X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_25

    .line 174
    :cond_19
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 175
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_8

    .line 178
    :cond_25
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_28} :catch_2a

    move-result p1

    goto :goto_8

    .line 179
    :catch_2a
    move-exception v0

    goto :goto_8
.end method

.method public static toByte(Ljava/lang/String;)[B
    .registers 6
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 119
    .local v1, "len":I
    rem-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_a

    .line 120
    const/4 v2, 0x0

    .line 126
    :cond_9
    return-object v2

    .line 121
    :cond_a
    div-int/lit8 v1, v1, 0x2

    .line 122
    new-array v2, v1, [B

    .line 123
    .local v2, "result":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    if-ge v0, v1, :cond_9

    .line 124
    mul-int/lit8 v3, v0, 0x2

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 125
    const/16 v4, 0x10

    .line 124
    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    .line 124
    aput-byte v3, v2, v0

    .line 123
    add-int/lit8 v0, v0, 0x1

    goto :goto_f
.end method

.method public static toHex([BII)Ljava/lang/String;
    .registers 6
    .param p0, "buf"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 149
    if-nez p0, :cond_5

    .line 150
    const-string v2, ""

    .line 157
    :goto_4
    return-object v2

    .line 152
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    mul-int/lit8 v2, p2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 153
    .local v1, "result":Ljava/lang/StringBuffer;
    move v0, p1

    .local v0, "i":I
    :goto_d
    if-lt v0, p2, :cond_14

    .line 157
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 154
    :cond_14
    aget-byte v2, p0, v0

    invoke-static {v1, v2}, Lcom/idelan/Charset/CharTools;->appendHex(Ljava/lang/StringBuffer;B)V

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto :goto_d
.end method

.method public static toHexString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "txt"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 145
    .local v0, "bte":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/idelan/Charset/CharTools;->toHex([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeTxtFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "newStr"    # Ljava/lang/String;
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 433
    const/4 v2, 0x0

    .line 435
    .local v2, "mm":Ljava/io/File;
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_18

    .line 436
    .end local v2    # "mm":Ljava/io/File;
    .local v3, "mm":Ljava/io/File;
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 437
    .local v1, "fos":Ljava/io/FileOutputStream;
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 438
    .local v4, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v4, p0}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 439
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_16} :catch_1d

    move-object v2, v3

    .line 446
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "mm":Ljava/io/File;
    .end local v4    # "pw":Ljava/io/PrintWriter;
    .restart local v2    # "mm":Ljava/io/File;
    :goto_17
    return-void

    .line 441
    :catch_18
    move-exception v0

    .line 443
    .local v0, "e1":Ljava/io/IOException;
    :goto_19
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 441
    .end local v0    # "e1":Ljava/io/IOException;
    .end local v2    # "mm":Ljava/io/File;
    .restart local v3    # "mm":Ljava/io/File;
    :catch_1d
    move-exception v0

    move-object v2, v3

    .end local v3    # "mm":Ljava/io/File;
    .restart local v2    # "mm":Ljava/io/File;
    goto :goto_19
.end method
