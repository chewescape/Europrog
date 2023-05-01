.class public Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;
.super Ljava/lang/Object;
.source "HolidayTemperature.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public endDay:I

.field public endHour:I

.field public endMonth:I

.field public endYear:I

.field public holidayTemperature:I

.field public startDay:I

.field public startHour:I

.field public startMonth:I

.field public startYear:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/16 v2, 0xff

    const/16 v1, 0x80

    const/4 v0, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startHour:I

    .line 32
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startDay:I

    .line 36
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startMonth:I

    .line 40
    iput v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startYear:I

    .line 44
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endHour:I

    .line 48
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endDay:I

    .line 52
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endMonth:I

    .line 56
    iput v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endYear:I

    .line 60
    const/16 v0, 0xf

    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->holidayTemperature:I

    return-void
.end method

.method public static string2TempNum(Landroid/content/Context;Ljava/lang/String;)I
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 117
    const v0, 0x7f060065

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 118
    const/16 v0, 0xf

    .line 123
    :goto_f
    return v0

    .line 119
    :cond_10
    const v0, 0x7f060067

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 120
    const/16 v0, 0x39

    goto :goto_f

    .line 122
    :cond_20
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0x7f0600a8

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 123
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    goto :goto_f
.end method


# virtual methods
.method public clone()Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;
    .registers 3

    .prologue
    .line 200
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    .line 201
    .local v0, "holiday":Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startHour:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startHour:I

    .line 202
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startDay:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startDay:I

    .line 203
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startMonth:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startMonth:I

    .line 204
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startYear:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startYear:I

    .line 205
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endHour:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endHour:I

    .line 206
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endDay:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endDay:I

    .line 207
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endMonth:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endMonth:I

    .line 208
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endYear:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endYear:I

    .line 209
    iget v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->holidayTemperature:I

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->holidayTemperature:I

    .line 210
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
    .line 20
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->clone()Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v0

    return-object v0
.end method

.method public dateStringToNum(Ljava/lang/String;Z)V
    .registers 8
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "isStartTime"    # Z

    .prologue
    .line 127
    const-string v4, "\\."

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, "strings":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int/lit8 v3, v4, 0x64

    .line 129
    .local v3, "year":I
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 130
    .local v1, "month":I
    const/4 v4, 0x2

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    .local v0, "day":I
    if-eqz p2, :cond_32

    .line 133
    iput v3, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startYear:I

    .line 134
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startMonth:I

    .line 135
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startDay:I

    .line 141
    :goto_31
    return-void

    .line 137
    :cond_32
    iput v3, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endYear:I

    .line 138
    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endMonth:I

    .line 139
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endDay:I

    goto :goto_31
.end method

.method public getBytes()[B
    .registers 4

    .prologue
    .line 63
    const/16 v1, 0x9

    new-array v0, v1, [B

    .line 64
    .local v0, "rawValue":[B
    const/4 v1, 0x0

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startHour:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 65
    const/4 v1, 0x1

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startDay:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 66
    const/4 v1, 0x2

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startMonth:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 67
    const/4 v1, 0x3

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startYear:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 68
    const/4 v1, 0x4

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endHour:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 69
    const/4 v1, 0x5

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endDay:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 70
    const/4 v1, 0x6

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endMonth:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 71
    const/4 v1, 0x7

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endYear:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 72
    const/16 v1, 0x8

    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->holidayTemperature:I

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 73
    return-object v0
.end method

.method public getEndDateStr()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endYear:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_4f

    .line 181
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 182
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 186
    .end local v1    # "c":Ljava/util/Calendar;
    :goto_18
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%1$02d"

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endMonth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%1$02d"

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 184
    :cond_4f
    const-string v2, "20"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%1$02d"

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endYear:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18
.end method

.method public getEndTimeStr(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 192
    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endHour:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_e

    .line 193
    const v0, 0x7f0600a6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_d
    return-object v0

    :cond_e
    const-string v0, "%1$02d:00"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public getStartDateStr()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startYear:I

    const/16 v3, 0xff

    if-ne v2, v3, :cond_4f

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 163
    .local v1, "c":Ljava/util/Calendar;
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .end local v1    # "c":Ljava/util/Calendar;
    :goto_18
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%1$02d"

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startMonth:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%1$02d"

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startDay:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 165
    :cond_4f
    const-string v2, "20"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%1$02d"

    new-array v4, v6, [Ljava/lang/Object;

    iget v5, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startYear:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18
.end method

.method public getStartTimeStr(Landroid/content/Context;)Ljava/lang/String;
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 172
    iget v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startHour:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_e

    .line 173
    const v0, 0x7f0600a6

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 175
    :goto_d
    return-object v0

    :cond_e
    const-string v0, "%1$02d:00"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_d
.end method

.method public ifStartTimeLaterSetEndTime10mLater(Landroid/content/Context;)V
    .registers 12
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 214
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getStartDateStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getStartTimeStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "start":Ljava/lang/String;
    iget v7, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endHour:I

    const/16 v8, 0x80

    if-ne v7, v8, :cond_28

    .line 216
    iput v9, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endHour:I

    .line 217
    :cond_28
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getEndDateStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getEndTimeStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "end":Ljava/lang/String;
    invoke-virtual {v5, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-lez v7, :cond_81

    .line 219
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy.MM.dd HH:mm"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 221
    .local v4, "sdf":Ljava/text/SimpleDateFormat;
    :try_start_54
    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 222
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 223
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 224
    const/16 v7, 0xa

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Ljava/util/Calendar;->add(II)V

    .line 225
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 226
    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 227
    .local v6, "strings":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->dateStringToNum(Ljava/lang/String;Z)V

    .line 228
    const/4 v7, 0x1

    aget-object v7, v6, v7

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->timeStringToNum(Ljava/lang/String;Z)V
    :try_end_81
    .catch Ljava/text/ParseException; {:try_start_54 .. :try_end_81} :catch_82

    .line 233
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "date":Ljava/util/Date;
    .end local v4    # "sdf":Ljava/text/SimpleDateFormat;
    .end local v6    # "strings":[Ljava/lang/String;
    :cond_81
    :goto_81
    return-void

    .line 229
    .restart local v4    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_82
    move-exception v2

    .line 230
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_81
.end method

.method public tempNumToSheShiDu(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 106
    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->holidayTemperature:I

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 107
    const v2, 0x7f060065

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 112
    :goto_d
    return-object v2

    .line 108
    :cond_e
    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->holidayTemperature:I

    const/16 v3, 0x39

    if-lt v2, v3, :cond_1c

    .line 109
    const v2, 0x7f060067

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    .line 111
    :cond_1c
    iget v2, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->holidayTemperature:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double v0, v2, v4

    .line 112
    .local v0, "d":D
    const-string v2, "%1$,.1f\u00b0C"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d
.end method

.method public timeStringToNum(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "time"    # Ljava/lang/String;
    .param p2, "isStartTime"    # Z

    .prologue
    .line 145
    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "strings":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 148
    .local v0, "hour":I
    if-eqz p2, :cond_16

    .line 149
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startHour:I

    .line 153
    :goto_15
    return-void

    .line 151
    :cond_16
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endHour:I

    goto :goto_15
.end method

.method public toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;
    .registers 10
    .param p1, "rawValue"    # [B

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x17

    const/4 v5, 0x7

    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 77
    if-eqz p1, :cond_d

    array-length v1, p1

    const/16 v2, 0x9

    if-ge v1, v2, :cond_e

    .line 102
    :cond_d
    :goto_d
    return-object p0

    .line 80
    :cond_e
    invoke-static {p1}, Lutils/NumberConvert;->byteArray2IntArray([B)[I

    move-result-object v0

    .line 82
    .local v0, "intValue":[I
    aget v1, v0, v7

    if-ltz v1, :cond_1e

    aget v1, v0, v7

    if-gt v1, v6, :cond_1e

    .line 83
    aget v1, v0, v7

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startHour:I

    .line 84
    :cond_1e
    aget v1, v0, v3

    if-lt v1, v3, :cond_2c

    aget v1, v0, v3

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_2c

    .line 85
    aget v1, v0, v3

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startDay:I

    .line 86
    :cond_2c
    const/4 v1, 0x2

    aget v1, v0, v1

    if-lt v1, v3, :cond_3d

    const/4 v1, 0x2

    aget v1, v0, v1

    const/16 v2, 0xc

    if-gt v1, v2, :cond_3d

    .line 87
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startMonth:I

    .line 88
    :cond_3d
    aget v1, v0, v4

    if-ltz v1, :cond_45

    aget v1, v0, v4

    if-le v1, v6, :cond_4b

    :cond_45
    aget v1, v0, v4

    const/16 v2, 0xff

    if-ne v1, v2, :cond_4f

    .line 89
    :cond_4b
    aget v1, v0, v4

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->startYear:I

    .line 91
    :cond_4f
    const/4 v1, 0x4

    aget v1, v0, v1

    if-ltz v1, :cond_5e

    const/4 v1, 0x4

    aget v1, v0, v1

    if-gt v1, v6, :cond_5e

    .line 92
    const/4 v1, 0x4

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endHour:I

    .line 93
    :cond_5e
    const/4 v1, 0x5

    aget v1, v0, v1

    if-lt v1, v3, :cond_6f

    const/4 v1, 0x5

    aget v1, v0, v1

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_6f

    .line 94
    const/4 v1, 0x5

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endDay:I

    .line 95
    :cond_6f
    const/4 v1, 0x6

    aget v1, v0, v1

    if-lt v1, v3, :cond_80

    const/4 v1, 0x6

    aget v1, v0, v1

    const/16 v2, 0xc

    if-gt v1, v2, :cond_80

    .line 96
    const/4 v1, 0x6

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endMonth:I

    .line 97
    :cond_80
    aget v1, v0, v5

    if-ltz v1, :cond_88

    aget v1, v0, v5

    if-le v1, v6, :cond_8e

    :cond_88
    aget v1, v0, v5

    const/16 v2, 0xff

    if-ne v1, v2, :cond_92

    .line 98
    :cond_8e
    aget v1, v0, v5

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->endYear:I

    .line 100
    :cond_92
    const/16 v1, 0x8

    aget v1, v0, v1

    const/16 v2, 0xf

    if-lt v1, v2, :cond_d

    const/16 v1, 0x8

    aget v1, v0, v1

    const/16 v2, 0x39

    if-gt v1, v2, :cond_d

    .line 101
    const/16 v1, 0x8

    aget v1, v0, v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->holidayTemperature:I

    goto/16 :goto_d
.end method
