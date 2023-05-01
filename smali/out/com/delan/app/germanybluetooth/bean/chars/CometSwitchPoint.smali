.class public Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;
.super Ljava/lang/Object;
.source "CometSwitchPoint.java"


# instance fields
.field public endTime1:I

.field public endTime2:I

.field public endTime3:I

.field public endTime4:I

.field public startTime1:I

.field public startTime2:I

.field public startTime3:I

.field public startTime4:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/16 v0, 0xff

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime1:I

    .line 19
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime1:I

    .line 20
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime2:I

    .line 21
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime2:I

    .line 22
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    .line 23
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    .line 24
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime4:I

    .line 25
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime4:I

    return-void
.end method

.method public static numToTime(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "num"    # I

    .prologue
    .line 63
    const-string v0, "%1$02d:%2$02d"

    .line 64
    .local v0, "str":Ljava/lang/String;
    if-ltz p1, :cond_24

    const/16 v1, 0x90

    if-gt p1, v1, :cond_24

    .line 65
    mul-int/lit8 p1, p1, 0xa

    .line 66
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    div-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    rem-int/lit8 v3, p1, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 69
    :goto_23
    return-object v1

    :cond_24
    const v1, 0x7f060065

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_23
.end method


# virtual methods
.method public clone()Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;
    .registers 3

    .prologue
    .line 86
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    .line 87
    .local v0, "switchPoint":Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime1:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime1:I

    .line 88
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime1:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime1:I

    .line 89
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime2:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime2:I

    .line 90
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime2:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime2:I

    .line 91
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    .line 92
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    .line 93
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime4:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime4:I

    .line 94
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime4:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime4:I

    .line 95
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->clone()Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v0

    return-object v0
.end method

.method public getBytes()[B
    .registers 4

    .prologue
    .line 33
    const/16 v1, 0x8

    new-array v0, v1, [B

    .line 34
    .local v0, "rawValue":[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime1:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 35
    const/4 v1, 0x1

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime1:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 36
    const/4 v1, 0x2

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime2:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 37
    const/4 v1, 0x3

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime2:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 38
    const/4 v1, 0x4

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 39
    const/4 v1, 0x5

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 40
    const/4 v1, 0x6

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime4:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 41
    const/4 v1, 0x7

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime4:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 42
    return-object v0
.end method

.method public isDataValid(I)Z
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 28
    if-ltz p1, :cond_8

    const/16 v0, 0x90

    if-gt p1, v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isEqualTo(Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;)Z
    .registers 4
    .param p1, "switchPoint"    # Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    .prologue
    .line 99
    if-eqz p1, :cond_34

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime1:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime1:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime1:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime1:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime2:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime2:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime2:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime2:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime4:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime4:I

    if-ne v0, v1, :cond_34

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime4:I

    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime4:I

    if-ne v0, v1, :cond_34

    const/4 v0, 0x1

    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method public on4PeriodsPerDayChange(Z)V
    .registers 3
    .param p1, "on"    # Z

    .prologue
    const/4 v0, 0x0

    .line 73
    if-eqz p1, :cond_c

    .line 74
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime4:I

    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    .line 75
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime4:I

    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    .line 79
    :goto_b
    return-void

    .line 77
    :cond_c
    const/16 v0, 0xff

    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime4:I

    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime4:I

    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    goto :goto_b
.end method

.method public toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;
    .registers 5
    .param p1, "rawValue"    # [B

    .prologue
    .line 46
    if-eqz p1, :cond_7

    array-length v1, p1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_8

    .line 59
    :cond_7
    :goto_7
    return-object p0

    .line 49
    :cond_8
    invoke-static {p1}, Lutils/NumberConvert;->byteArray2IntArray([B)[I

    move-result-object v0

    .line 51
    .local v0, "intValue":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime1:I

    .line 52
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime1:I

    .line 53
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime2:I

    .line 54
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime2:I

    .line 55
    const/4 v1, 0x4

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    .line 56
    const/4 v1, 0x5

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    .line 57
    const/4 v1, 0x6

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime4:I

    .line 58
    const/4 v1, 0x7

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime4:I

    goto :goto_7
.end method

.method public weatherIs4PeriodsPerDay()Z
    .registers 3

    .prologue
    const/16 v1, 0xff

    .line 82
    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime4:I

    if-ne v0, v1, :cond_12

    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime4:I

    if-eq v0, v1, :cond_14

    :cond_12
    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method
