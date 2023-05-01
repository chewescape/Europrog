.class public Lcom/idelan/java/Util/RandomUtils;
.super Ljava/lang/Object;
.source "RandomUtils.java"


# static fields
.field public static final CAPITAL_LETTERS:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field public static final LETTERS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

.field public static final LOWER_CASE_LETTERS:Ljava/lang/String; = "abcdefghijklmnopqrstuvwxyz"

.field public static final NUMBERS:Ljava/lang/String; = "0123456789"

.field public static final NUMBERS_AND_LETTERS:Ljava/lang/String; = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRandom(I)I
    .registers 2
    .param p0, "max"    # I

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lcom/idelan/java/Util/RandomUtils;->getRandom(II)I

    move-result v0

    return v0
.end method

.method public static getRandom(II)I
    .registers 4
    .param p0, "min"    # I
    .param p1, "max"    # I

    .prologue
    .line 175
    if-le p0, p1, :cond_4

    .line 176
    const/4 p0, 0x0

    .line 181
    .end local p0    # "min":I
    :cond_3
    :goto_3
    return p0

    .line 178
    .restart local p0    # "min":I
    :cond_4
    if-eq p0, p1, :cond_3

    .line 181
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sub-int v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p0, v0

    goto :goto_3
.end method

.method public static getRandom(Ljava/lang/String;I)Ljava/lang/String;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 123
    invoke-static {p0}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return-object v0

    .line 124
    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 123
    invoke-static {v0, p1}, Lcom/idelan/java/Util/RandomUtils;->getRandom([CI)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method

.method public static getRandom([CI)Ljava/lang/String;
    .registers 6
    .param p0, "sourceChar"    # [C
    .param p1, "length"    # I

    .prologue
    .line 138
    if-eqz p0, :cond_7

    array-length v3, p0

    if-eqz v3, :cond_7

    if-gez p1, :cond_9

    .line 139
    :cond_7
    const/4 v3, 0x0

    .line 147
    :goto_8
    return-object v3

    .line 142
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 143
    .local v2, "str":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 144
    .local v1, "random":Ljava/util/Random;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-lt v0, p1, :cond_1b

    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 145
    :cond_1b
    array-length v3, p0

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-char v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method public static getRandomCapitalLetters(I)Ljava/lang/String;
    .registers 2
    .param p0, "length"    # I

    .prologue
    .line 97
    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0, p0}, Lcom/idelan/java/Util/RandomUtils;->getRandom(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRandomLetters(I)Ljava/lang/String;
    .registers 2
    .param p0, "length"    # I

    .prologue
    .line 86
    const-string v0, "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0, p0}, Lcom/idelan/java/Util/RandomUtils;->getRandom(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRandomLowerCaseLetters(I)Ljava/lang/String;
    .registers 2
    .param p0, "length"    # I

    .prologue
    .line 108
    const-string v0, "abcdefghijklmnopqrstuvwxyz"

    invoke-static {v0, p0}, Lcom/idelan/java/Util/RandomUtils;->getRandom(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRandomNumbers(I)Ljava/lang/String;
    .registers 2
    .param p0, "length"    # I

    .prologue
    .line 74
    const-string v0, "0123456789"

    invoke-static {v0, p0}, Lcom/idelan/java/Util/RandomUtils;->getRandom(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRandomNumbersAndLetters(I)Ljava/lang/String;
    .registers 2
    .param p0, "length"    # I

    .prologue
    .line 63
    const-string v0, "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

    invoke-static {v0, p0}, Lcom/idelan/java/Util/RandomUtils;->getRandom(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static round(DII)D
    .registers 8
    .param p0, "value"    # D
    .param p2, "scale"    # I
    .param p3, "roundingMode"    # I

    .prologue
    .line 263
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 264
    .local v0, "bd":Ljava/math/BigDecimal;
    invoke-virtual {v0, p2, p3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 265
    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    .line 266
    .local v2, "d":D
    const/4 v0, 0x0

    .line 267
    return-wide v2
.end method

.method public static shuffle([Ljava/lang/Object;)Z
    .registers 2
    .param p0, "objArray"    # [Ljava/lang/Object;

    .prologue
    .line 192
    if-nez p0, :cond_4

    .line 193
    const/4 v0, 0x0

    .line 196
    :goto_3
    return v0

    :cond_4
    array-length v0, p0

    invoke-static {v0}, Lcom/idelan/java/Util/RandomUtils;->getRandom(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/idelan/java/Util/RandomUtils;->shuffle([Ljava/lang/Object;I)Z

    move-result v0

    goto :goto_3
.end method

.method public static shuffle([Ljava/lang/Object;I)Z
    .registers 8
    .param p0, "objArray"    # [Ljava/lang/Object;
    .param p1, "shuffleCount"    # I

    .prologue
    .line 208
    if-eqz p0, :cond_7

    if-ltz p1, :cond_7

    .line 209
    array-length v1, p0

    .local v1, "length":I
    if-ge v1, p1, :cond_9

    .line 210
    .end local v1    # "length":I
    :cond_7
    const/4 v4, 0x0

    .line 219
    :goto_8
    return v4

    .line 213
    .restart local v1    # "length":I
    :cond_9
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_a
    if-le v0, p1, :cond_e

    .line 219
    const/4 v4, 0x1

    goto :goto_8

    .line 214
    :cond_e
    sub-int v4, v1, v0

    invoke-static {v4}, Lcom/idelan/java/Util/RandomUtils;->getRandom(I)I

    move-result v2

    .line 215
    .local v2, "random":I
    sub-int v4, v1, v0

    aget-object v3, p0, v4

    .line 216
    .local v3, "temp":Ljava/lang/Object;
    sub-int v4, v1, v0

    aget-object v5, p0, v2

    aput-object v5, p0, v4

    .line 217
    aput-object v3, p0, v2

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_a
.end method

.method public static shuffle([I)[I
    .registers 2
    .param p0, "intArray"    # [I

    .prologue
    .line 230
    if-nez p0, :cond_4

    .line 231
    const/4 v0, 0x0

    .line 234
    :goto_3
    return-object v0

    :cond_4
    array-length v0, p0

    invoke-static {v0}, Lcom/idelan/java/Util/RandomUtils;->getRandom(I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/idelan/java/Util/RandomUtils;->shuffle([II)[I

    move-result-object v0

    goto :goto_3
.end method

.method public static shuffle([II)[I
    .registers 9
    .param p0, "intArray"    # [I
    .param p1, "shuffleCount"    # I

    .prologue
    .line 246
    if-eqz p0, :cond_7

    if-ltz p1, :cond_7

    .line 247
    array-length v1, p0

    .local v1, "length":I
    if-ge v1, p1, :cond_9

    .line 248
    .end local v1    # "length":I
    :cond_7
    const/4 v2, 0x0

    .line 259
    :cond_8
    return-object v2

    .line 251
    .restart local v1    # "length":I
    :cond_9
    new-array v2, p1, [I

    .line 252
    .local v2, "out":[I
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_c
    if-gt v0, p1, :cond_8

    .line 253
    sub-int v5, v1, v0

    invoke-static {v5}, Lcom/idelan/java/Util/RandomUtils;->getRandom(I)I

    move-result v3

    .line 254
    .local v3, "random":I
    add-int/lit8 v5, v0, -0x1

    aget v6, p0, v3

    aput v6, v2, v5

    .line 255
    sub-int v5, v1, v0

    aget v4, p0, v5

    .line 256
    .local v4, "temp":I
    sub-int v5, v1, v0

    aget v6, p0, v3

    aput v6, p0, v5

    .line 257
    aput v4, p0, v3

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method
