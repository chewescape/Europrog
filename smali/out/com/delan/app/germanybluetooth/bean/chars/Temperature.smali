.class public Lcom/delan/app/germanybluetooth/bean/chars/Temperature;
.super Ljava/lang/Object;
.source "Temperature.java"


# instance fields
.field public currentTemp:I

.field public desiredTemp:I

.field public energySavingTemp:I

.field public heatingTemp:I

.field public offsetsTemp:I

.field public windowsDetectionThreshold:I

.field public windowsDetectionTimer:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x80

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x50

    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->currentTemp:I

    .line 25
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->desiredTemp:I

    .line 29
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->energySavingTemp:I

    .line 33
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->heatingTemp:I

    .line 38
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->offsetsTemp:I

    .line 42
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->windowsDetectionThreshold:I

    .line 46
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->windowsDetectionTimer:I

    return-void
.end method

.method public static DetectionThresholdNum2Str(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "num"    # I

    .prologue
    const/4 v1, 0x4

    .line 130
    if-lt p1, v1, :cond_7

    const/16 v0, 0xc

    if-le p1, v0, :cond_9

    .line 131
    :cond_7
    const/4 v0, 0x0

    .line 137
    :goto_8
    return-object v0

    .line 132
    :cond_9
    const/16 v0, 0x8

    if-le p1, v0, :cond_15

    .line 133
    const v0, 0x7f060058

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 134
    :cond_15
    if-le p1, v1, :cond_1f

    .line 135
    const v0, 0x7f06005c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    .line 137
    :cond_1f
    const v0, 0x7f060051

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method public static DetectionThresholdStr2Num(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 121
    const v0, 0x7f06005c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 122
    const/16 v0, 0x8

    .line 126
    :goto_f
    return v0

    .line 123
    :cond_10
    const v0, 0x7f060058

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 124
    const/16 v0, 0xc

    goto :goto_f

    .line 126
    :cond_20
    const/4 v0, 0x4

    goto :goto_f
.end method

.method public static SheShiDuTpTempNum(D)I
    .registers 4
    .param p0, "sheShiDu"    # D

    .prologue
    .line 86
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p0

    double-to-int v0, v0

    return v0
.end method

.method public static String2TempNum(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 75
    const v0, 0x7f060065

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 76
    const/16 v0, 0xf

    .line 81
    :goto_f
    return v0

    .line 77
    :cond_10
    const v0, 0x7f060067

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 78
    const/16 v0, 0x39

    goto :goto_f

    .line 80
    :cond_20
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_f
.end method

.method public static TempNumToSheShiDu(I)D
    .registers 5
    .param p0, "temperatureNum"    # I

    .prologue
    .line 49
    int-to-double v0, p0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static TempNumToString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "temperatureNum"    # I

    .prologue
    .line 59
    const/16 v0, 0xf

    if-ne p1, v0, :cond_c

    .line 60
    const v0, 0x7f060065

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    :goto_b
    return-object v0

    .line 61
    :cond_c
    const/16 v0, 0x39

    if-ne p1, v0, :cond_18

    .line 62
    const v0, 0x7f060067

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 63
    :cond_18
    const/16 v0, 0x10

    if-lt p1, v0, :cond_3f

    const/16 v0, 0x38

    if-gt p1, v0, :cond_3f

    .line 64
    const-string v0, "%.1f%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    int-to-double v4, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x7f0600a8

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 65
    :cond_3f
    const v0, 0x7f0600a5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_b
.end method


# virtual methods
.method public getBytes()[B
    .registers 4

    .prologue
    .line 90
    const/4 v1, 0x7

    new-array v0, v1, [B

    .line 91
    .local v0, "rawValue":[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->currentTemp:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 92
    const/4 v1, 0x1

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->desiredTemp:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 93
    const/4 v1, 0x2

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->energySavingTemp:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 94
    const/4 v1, 0x3

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->heatingTemp:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 95
    const/4 v1, 0x4

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->offsetsTemp:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 96
    const/4 v1, 0x5

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->windowsDetectionThreshold:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 97
    const/4 v1, 0x6

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->windowsDetectionTimer:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 98
    return-object v0
.end method

.method public toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/Temperature;
    .registers 5
    .param p1, "rawValue"    # [B

    .prologue
    .line 102
    if-eqz p1, :cond_6

    array-length v1, p1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_8

    .line 103
    :cond_6
    const/4 p0, 0x0

    .line 116
    .end local p0    # "this":Lcom/delan/app/germanybluetooth/bean/chars/Temperature;
    :goto_7
    return-object p0

    .line 104
    .restart local p0    # "this":Lcom/delan/app/germanybluetooth/bean/chars/Temperature;
    :cond_8
    invoke-static {p1}, Lutils/NumberConvert;->byteArray2IntArray([B)[I

    move-result-object v0

    .line 106
    .local v0, "intValue":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->currentTemp:I

    .line 107
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->desiredTemp:I

    .line 108
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->energySavingTemp:I

    .line 109
    const/4 v1, 0x3

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->heatingTemp:I

    .line 110
    const/4 v1, 0x4

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->offsetsTemp:I

    .line 111
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->offsetsTemp:I

    const/16 v2, 0x80

    if-le v1, v2, :cond_31

    .line 112
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->offsetsTemp:I

    add-int/lit16 v1, v1, -0x100

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->offsetsTemp:I

    .line 113
    :cond_31
    const/4 v1, 0x5

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->windowsDetectionThreshold:I

    .line 114
    const/4 v1, 0x6

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->windowsDetectionTimer:I

    goto :goto_7
.end method
