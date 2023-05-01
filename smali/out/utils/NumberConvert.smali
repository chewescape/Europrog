.class public Lutils/NumberConvert;
.super Ljava/lang/Object;
.source "NumberConvert.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArray2IntArray([B)[I
    .registers 4
    .param p0, "bs"    # [B

    .prologue
    .line 10
    if-eqz p0, :cond_5

    array-length v2, p0

    if-gtz v2, :cond_7

    .line 11
    :cond_5
    const/4 v1, 0x0

    .line 17
    :cond_6
    return-object v1

    .line 13
    :cond_7
    array-length v2, p0

    new-array v1, v2, [I

    .line 14
    .local v1, "ints":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v2, p0

    if-ge v0, v2, :cond_6

    .line 15
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    .line 14
    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public static bytes2Int([B)I
    .registers 4
    .param p0, "bs"    # [B

    .prologue
    .line 30
    const/4 v0, -0x1

    .line 31
    .local v0, "i":I
    if-eqz p0, :cond_25

    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_25

    .line 32
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int v0, v1, v2

    .line 33
    :cond_25
    return v0
.end method

.method public static int2Bytes(I)[B
    .registers 5
    .param p0, "pin"    # I

    .prologue
    const/4 v3, 0x4

    .line 21
    new-array v0, v3, [B

    .line 22
    .local v0, "bs":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    if-ge v1, v3, :cond_e

    .line 23
    int-to-byte v2, p0

    aput-byte v2, v0, v1

    .line 24
    shr-int/lit8 p0, p0, 0x8

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 26
    :cond_e
    return-object v0
.end method
