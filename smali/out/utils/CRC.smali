.class public Lutils/CRC;
.super Ljava/lang/Object;
.source "CRC.java"


# static fields
.field private static final FINAL_XOR_VALUE:I = 0x0

.field private static final INITIAL_REMAINDER:I = 0xffff

.field private static final POLYNOMIAL:I = 0x1021

.field private static final TOPBIT:I = 0x8000

.field private static final WIDTH:I = 0x10

.field static crcTable:[S


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const/16 v0, 0x100

    new-array v0, v0, [S

    sput-object v0, Lutils/CRC;->crcTable:[S

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0}, Lutils/CRC;->crcInit()V

    .line 45
    return-void
.end method

.method private crcInit()V
    .registers 5

    .prologue
    .line 56
    const/4 v1, 0x0

    .local v1, "dividend":S
    :goto_1
    const/16 v3, 0x100

    if-ge v1, v3, :cond_27

    .line 58
    shl-int/lit8 v3, v1, 0x8

    int-to-short v2, v3

    .line 60
    .local v2, "remainder":S
    const/4 v0, 0x0

    .local v0, "bit":I
    :goto_9
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1f

    .line 62
    const v3, 0x8000

    and-int/2addr v3, v2

    if-eqz v3, :cond_1b

    .line 63
    shl-int/lit8 v3, v2, 0x1

    xor-int/lit16 v3, v3, 0x1021

    int-to-short v2, v3

    .line 60
    :goto_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 65
    :cond_1b
    shl-int/lit8 v3, v2, 0x1

    int-to-short v2, v3

    goto :goto_18

    .line 69
    :cond_1f
    sget-object v3, Lutils/CRC;->crcTable:[S

    aput-short v2, v3, v1

    .line 56
    add-int/lit8 v3, v1, 0x1

    int-to-short v1, v3

    goto :goto_1

    .line 71
    .end local v0    # "bit":I
    .end local v2    # "remainder":S
    :cond_27
    return-void
.end method


# virtual methods
.method public crcCompute([BI)S
    .registers 8
    .param p1, "message"    # [B
    .param p2, "nBytes"    # I

    .prologue
    .line 84
    const/4 v2, -0x1

    .line 86
    .local v2, "remainder":S
    const/4 v1, 0x0

    .local v1, "offset":I
    :goto_2
    if-ge v1, p2, :cond_17

    .line 87
    shr-int/lit8 v3, v2, 0x8

    aget-byte v4, p1, v1

    xor-int/2addr v3, v4

    int-to-byte v0, v3

    .line 88
    .local v0, "b":B
    sget-object v3, Lutils/CRC;->crcTable:[S

    and-int/lit16 v4, v0, 0xff

    aget-short v3, v3, v4

    shl-int/lit8 v4, v2, 0x8

    xor-int/2addr v3, v4

    int-to-short v2, v3

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 91
    .end local v0    # "b":B
    :cond_17
    xor-int/lit8 v3, v2, 0x0

    int-to-short v3, v3

    return v3
.end method
