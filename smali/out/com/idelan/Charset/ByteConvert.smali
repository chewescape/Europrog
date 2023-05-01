.class public Lcom/idelan/Charset/ByteConvert;
.super Ljava/lang/Object;
.source "ByteConvert.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bytesToInt([B)I
    .registers 3
    .param p0, "b"    # [B

    .prologue
    .line 93
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method public static bytesToInt([BI)I
    .registers 4
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 106
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    .line 107
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    .line 106
    or-int/2addr v0, v1

    return v0
.end method

.method public static bytesToLong([B)J
    .registers 9
    .param p0, "array"    # [B

    .prologue
    const/4 v5, 0x0

    const-wide/16 v6, 0xff

    .line 51
    aget-byte v0, p0, v5

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 52
    const/4 v2, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 51
    or-long/2addr v0, v2

    .line 52
    const/4 v2, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    .line 51
    or-long/2addr v0, v2

    .line 53
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    .line 51
    or-long/2addr v0, v2

    .line 53
    const/4 v2, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    .line 51
    or-long/2addr v0, v2

    .line 53
    const/4 v2, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    shl-long/2addr v2, v5

    .line 51
    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static bytesToLong([BI)J
    .registers 10
    .param p0, "array"    # [B
    .param p1, "offset"    # I

    .prologue
    const-wide/16 v6, 0xff

    .line 66
    add-int/lit8 v0, p1, 0x0

    aget-byte v0, p0, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 67
    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    .line 66
    or-long/2addr v0, v2

    .line 67
    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    .line 66
    or-long/2addr v0, v2

    .line 68
    add-int/lit8 v2, p1, 0x4

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    .line 66
    or-long/2addr v0, v2

    .line 68
    add-int/lit8 v2, p1, 0x5

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    .line 66
    or-long/2addr v0, v2

    .line 69
    add-int/lit8 v2, p1, 0x6

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    .line 66
    or-long/2addr v0, v2

    .line 69
    add-int/lit8 v2, p1, 0x7

    aget-byte v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    .line 66
    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static bytesToShort([B)S
    .registers 3
    .param p0, "b"    # [B

    .prologue
    .line 157
    const/4 v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static bytesToShort([BI)S
    .registers 4
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 161
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static bytesToUbyte([B)I
    .registers 2
    .param p0, "array"    # [B

    .prologue
    .line 195
    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static bytesToUbyte([BI)I
    .registers 3
    .param p0, "array"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 199
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static bytesToUint([B)J
    .registers 6
    .param p0, "array"    # [B

    .prologue
    .line 135
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 136
    const/4 v2, 0x0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    .line 135
    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static bytesToUint([BI)J
    .registers 7
    .param p0, "array"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 140
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    .line 141
    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    .line 140
    or-long/2addr v0, v2

    .line 141
    aget-byte v2, p0, p1

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    .line 140
    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static bytesToUshort([B)I
    .registers 3
    .param p0, "b"    # [B

    .prologue
    .line 177
    const/4 v0, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static bytesToUshort([BI)I
    .registers 4
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 181
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public static intToBytes(I[BI)V
    .registers 5
    .param p0, "n"    # I
    .param p1, "array"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 82
    add-int/lit8 v0, p2, 0x3

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 83
    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 84
    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 85
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 86
    return-void
.end method

.method public static intToBytes(I)[B
    .registers 4
    .param p0, "n"    # I

    .prologue
    .line 73
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 74
    .local v0, "b":[B
    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 75
    const/4 v1, 0x2

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 76
    const/4 v1, 0x1

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 77
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 78
    return-object v0
.end method

.method public static longToBytes(J[BI)V
    .registers 10
    .param p0, "n"    # J
    .param p2, "array"    # [B
    .param p3, "offset"    # I

    .prologue
    const-wide/16 v4, 0xff

    .line 33
    add-int/lit8 v0, p3, 0x7

    and-long v2, p0, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 34
    add-int/lit8 v0, p3, 0x6

    const/16 v1, 0x8

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 35
    add-int/lit8 v0, p3, 0x5

    const/16 v1, 0x10

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 36
    add-int/lit8 v0, p3, 0x4

    const/16 v1, 0x18

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 37
    add-int/lit8 v0, p3, 0x3

    const/16 v1, 0x20

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 38
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x28

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 39
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x30

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 40
    add-int/lit8 v0, p3, 0x0

    const/16 v1, 0x38

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 41
    return-void
.end method

.method public static longToBytes(J)[B
    .registers 10
    .param p0, "n"    # J

    .prologue
    const/16 v6, 0x8

    const-wide/16 v4, 0xff

    .line 10
    new-array v0, v6, [B

    .line 11
    .local v0, "b":[B
    const/4 v1, 0x7

    and-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 12
    const/4 v1, 0x6

    shr-long v2, p0, v6

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 13
    const/4 v1, 0x5

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 14
    const/4 v1, 0x4

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 15
    const/4 v1, 0x3

    const/16 v2, 0x20

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 16
    const/4 v1, 0x2

    const/16 v2, 0x28

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 17
    const/4 v1, 0x1

    const/16 v2, 0x30

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 18
    const/4 v1, 0x0

    const/16 v2, 0x38

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 19
    return-object v0
.end method

.method public static memzero([BII)V
    .registers 5
    .param p0, "data"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I

    .prologue
    .line 202
    move v0, p1

    .local v0, "i":I
    :goto_1
    add-int v1, p1, p2

    if-lt v0, v1, :cond_6

    .line 205
    return-void

    .line 203
    :cond_6
    const/4 v1, 0x0

    aput-byte v1, p0, v0

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static shortToBytes(S[BI)V
    .registers 5
    .param p0, "n"    # S
    .param p1, "array"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 152
    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 153
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 154
    return-void
.end method

.method public static shortToBytes(S)[B
    .registers 4
    .param p0, "n"    # S

    .prologue
    .line 145
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 146
    .local v0, "b":[B
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 147
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 148
    return-object v0
.end method

.method public static ubyteToBytes(I[BI)V
    .registers 5
    .param p0, "n"    # I
    .param p1, "array"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 192
    return-void
.end method

.method public static ubyteToBytes(I)[B
    .registers 4
    .param p0, "n"    # I

    .prologue
    .line 185
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 186
    .local v0, "b":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 187
    return-object v0
.end method

.method public static uintToBytes(J[BI)V
    .registers 10
    .param p0, "n"    # J
    .param p2, "array"    # [B
    .param p3, "offset"    # I

    .prologue
    const-wide/16 v4, 0xff

    .line 128
    add-int/lit8 v0, p3, 0x3

    long-to-int v1, p0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 129
    add-int/lit8 v0, p3, 0x2

    const/16 v1, 0x8

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 130
    add-int/lit8 v0, p3, 0x1

    const/16 v1, 0x10

    shr-long v2, p0, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 131
    const/16 v0, 0x18

    shr-long v0, p0, v0

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    .line 132
    return-void
.end method

.method public static uintToBytes(J)[B
    .registers 8
    .param p0, "n"    # J

    .prologue
    const-wide/16 v4, 0xff

    .line 118
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 119
    .local v0, "b":[B
    const/4 v1, 0x3

    and-long v2, p0, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 120
    const/4 v1, 0x2

    const/16 v2, 0x8

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 121
    const/4 v1, 0x1

    const/16 v2, 0x10

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 122
    const/4 v1, 0x0

    const/16 v2, 0x18

    shr-long v2, p0, v2

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 124
    return-object v0
.end method

.method public static ushortToBytes(I[BI)V
    .registers 5
    .param p0, "n"    # I
    .param p1, "array"    # [B
    .param p2, "offset"    # I

    .prologue
    .line 172
    add-int/lit8 v0, p2, 0x1

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 173
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 174
    return-void
.end method

.method public static ushortToBytes(I)[B
    .registers 4
    .param p0, "n"    # I

    .prologue
    .line 165
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 166
    .local v0, "b":[B
    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 167
    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 168
    return-object v0
.end method
