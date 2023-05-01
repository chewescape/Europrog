.class public Lcom/idelan/Charset/Hex;
.super Ljava/lang/Object;
.source "Hex.java"

# interfaces
.implements Lcom/idelan/Charset/BinaryEncoder;
.implements Lcom/idelan/Charset/BinaryDecoder;


# static fields
.field public static final DEFAULT_CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final DIGITS_LOWER:[C

.field private static final DIGITS_UPPER:[C


# instance fields
.field private final charsetName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x10

    .line 45
    new-array v0, v1, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/idelan/Charset/Hex;->DIGITS_LOWER:[C

    .line 51
    new-array v0, v1, [C

    fill-array-data v0, :array_26

    sput-object v0, Lcom/idelan/Charset/Hex;->DIGITS_UPPER:[C

    .line 52
    return-void

    .line 45
    nop

    :array_12
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
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    .line 51
    :array_26
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
    .registers 2

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/idelan/Charset/Hex;->charsetName:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "csName"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p1, p0, Lcom/idelan/Charset/Hex;->charsetName:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public static byte2HexStr([B)Ljava/lang/String;
    .registers 6
    .param p0, "b"    # [B

    .prologue
    .line 350
    const-string v2, ""

    .line 351
    .local v2, "stmp":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 352
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_a
    array-length v3, p0

    if-lt v0, v3, :cond_1a

    .line 357
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 353
    :cond_1a
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_38
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_3e
    move-object v3, v2

    .line 354
    goto :goto_38
.end method

.method public static byte2String([B)Ljava/lang/String;
    .registers 5
    .param p0, "buff"    # [B

    .prologue
    .line 334
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 342
    .local v1, "sbuf":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v3, p0

    if-lt v0, v3, :cond_e

    .line 346
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 343
    :cond_e
    aget-byte v3, p0, v0

    and-int/lit16 v2, v3, 0xff

    .line 344
    .local v2, "tmp":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 342
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private static charToByte(C)B
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 377
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public static decodeHex([C)[B
    .registers 8
    .param p0, "data"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/idelan/Encrypt/DecoderException;
        }
    .end annotation

    .prologue
    .line 70
    array-length v3, p0

    .line 72
    .local v3, "len":I
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_d

    .line 73
    new-instance v5, Lcom/idelan/Encrypt/DecoderException;

    const-string v6, "Odd number of characters."

    invoke-direct {v5, v6}, Lcom/idelan/Encrypt/DecoderException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 76
    :cond_d
    shr-int/lit8 v5, v3, 0x1

    new-array v4, v5, [B

    .line 79
    .local v4, "out":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_13
    if-lt v2, v3, :cond_16

    .line 87
    return-object v4

    .line 80
    :cond_16
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/idelan/Charset/Hex;->toDigit(CI)I

    move-result v5

    shl-int/lit8 v0, v5, 0x4

    .line 81
    .local v0, "f":I
    add-int/lit8 v2, v2, 0x1

    .line 82
    aget-char v5, p0, v2

    invoke-static {v5, v2}, Lcom/idelan/Charset/Hex;->toDigit(CI)I

    move-result v5

    or-int/2addr v0, v5

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 84
    and-int/lit16 v5, v0, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_13
.end method

.method public static encodeHex([B)[C
    .registers 2
    .param p0, "data"    # [B

    .prologue
    .line 101
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/idelan/Charset/Hex;->encodeHex([BZ)[C

    move-result-object v0

    return-object v0
.end method

.method public static encodeHex([BZ)[C
    .registers 3
    .param p0, "data"    # [B
    .param p1, "toLowerCase"    # Z

    .prologue
    .line 119
    if-eqz p1, :cond_9

    sget-object v0, Lcom/idelan/Charset/Hex;->DIGITS_LOWER:[C

    :goto_4
    invoke-static {p0, v0}, Lcom/idelan/Charset/Hex;->encodeHex([B[C)[C

    move-result-object v0

    return-object v0

    :cond_9
    sget-object v0, Lcom/idelan/Charset/Hex;->DIGITS_UPPER:[C

    goto :goto_4
.end method

.method protected static encodeHex([B[C)[C
    .registers 8
    .param p0, "data"    # [B
    .param p1, "toDigits"    # [C

    .prologue
    .line 136
    array-length v3, p0

    .line 137
    .local v3, "l":I
    shl-int/lit8 v5, v3, 0x1

    new-array v4, v5, [C

    .line 139
    .local v4, "out":[C
    const/4 v0, 0x0

    .local v0, "i":I
    const/4 v1, 0x0

    .local v1, "j":I
    move v2, v1

    .end local v1    # "j":I
    .local v2, "j":I
    :goto_8
    if-lt v0, v3, :cond_b

    .line 143
    return-object v4

    .line 140
    :cond_b
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "j":I
    .restart local v1    # "j":I
    aget-byte v5, p0, v0

    and-int/lit16 v5, v5, 0xf0

    ushr-int/lit8 v5, v5, 0x4

    aget-char v5, p1, v5

    aput-char v5, v4, v2

    .line 141
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "j":I
    .restart local v2    # "j":I
    aget-byte v5, p0, v0

    and-int/lit8 v5, v5, 0xf

    aget-char v5, p1, v5

    aput-char v5, v4, v1

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static encodeHexString([B)Ljava/lang/String;
    .registers 3
    .param p0, "data"    # [B

    .prologue
    .line 158
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/idelan/Charset/Hex;->encodeHex([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .registers 8
    .param p0, "hexString"    # Ljava/lang/String;

    .prologue
    .line 361
    if-eqz p0, :cond_a

    const-string v5, ""

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 362
    :cond_a
    const/4 v0, 0x0

    .line 373
    :cond_b
    return-object v0

    .line 364
    :cond_c
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 365
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v3, v5, 0x2

    .line 366
    .local v3, "length":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 367
    .local v1, "hexChars":[C
    new-array v0, v3, [B

    .line 368
    .local v0, "d":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v3, :cond_b

    .line 369
    mul-int/lit8 v4, v2, 0x2

    .line 370
    .local v4, "pos":I
    aget-char v5, v1, v4

    invoke-static {v5}, Lcom/idelan/Charset/Hex;->charToByte(C)B

    move-result v5

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v4, 0x1

    aget-char v6, v1, v6

    invoke-static {v6}, Lcom/idelan/Charset/Hex;->charToByte(C)B

    move-result v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d
.end method

.method protected static toDigit(CI)I
    .registers 6
    .param p0, "ch"    # C
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/idelan/Encrypt/DecoderException;
        }
    .end annotation

    .prologue
    .line 173
    const/16 v1, 0x10

    invoke-static {p0, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 174
    .local v0, "digit":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_28

    .line 175
    new-instance v1, Lcom/idelan/Encrypt/DecoderException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal hexadecimal character "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    const-string v3, " at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 175
    invoke-direct {v1, v2}, Lcom/idelan/Encrypt/DecoderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    :cond_28
    return v0
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/idelan/Encrypt/DecoderException;
        }
    .end annotation

    .prologue
    .line 248
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_f

    check-cast p1, Ljava/lang/String;

    .line 249
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 250
    .local v0, "charArray":[C
    :goto_a
    invoke-static {v0}, Lcom/idelan/Charset/Hex;->decodeHex([C)[B

    move-result-object v2

    return-object v2

    .line 249
    .end local v0    # "charArray":[C
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_f
    check-cast p1, [C
    :try_end_11
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_11} :catch_13

    move-object v0, p1

    goto :goto_a

    .line 251
    .end local p1    # "object":Ljava/lang/Object;
    :catch_13
    move-exception v1

    .line 252
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/idelan/Encrypt/DecoderException;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/idelan/Encrypt/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public decode([B)[B
    .registers 5
    .param p1, "array"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/idelan/Encrypt/DecoderException;
        }
    .end annotation

    .prologue
    .line 222
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/idelan/Charset/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-static {v1}, Lcom/idelan/Charset/Hex;->decodeHex([C)[B
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v1

    return-object v1

    .line 223
    :catch_12
    move-exception v0

    .line 224
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/idelan/Encrypt/DecoderException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/idelan/Encrypt/DecoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/idelan/Encrypt/EncoderException;
        }
    .end annotation

    .prologue
    .line 302
    :try_start_0
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_13

    check-cast p1, Ljava/lang/String;

    .line 303
    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Lcom/idelan/Charset/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 304
    .local v0, "byteArray":[B
    :goto_e
    invoke-static {v0}, Lcom/idelan/Charset/Hex;->encodeHex([B)[C

    move-result-object v2

    return-object v2

    .line 303
    .end local v0    # "byteArray":[B
    .restart local p1    # "object":Ljava/lang/Object;
    :cond_13
    check-cast p1, [B
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_15} :catch_17
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_15} :catch_22

    move-object v0, p1

    goto :goto_e

    .line 305
    .end local p1    # "object":Ljava/lang/Object;
    :catch_17
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v2, Lcom/idelan/Encrypt/EncoderException;

    invoke-virtual {v1}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/idelan/Encrypt/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 307
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catch_22
    move-exception v1

    .line 308
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Lcom/idelan/Encrypt/EncoderException;

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/idelan/Encrypt/EncoderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public encode([B)[B
    .registers 4
    .param p1, "array"    # [B

    .prologue
    .line 278
    invoke-static {p1}, Lcom/idelan/Charset/Hex;->encodeHexString([B)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p0}, Lcom/idelan/Charset/Hex;->getCharsetName()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {v0, v1}, Lcom/idelan/Charset/StringUtils;->getBytesUnchecked(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getCharsetName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/idelan/Charset/Hex;->charsetName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "[charsetName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/Charset/Hex;->charsetName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
