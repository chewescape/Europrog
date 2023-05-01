.class public Lcom/idelan/java/Util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat"
    }
.end annotation


# static fields
.field public static final DATE_FORMAT_DATE:Ljava/text/SimpleDateFormat;

.field public static final DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final HHmm:Ljava/text/SimpleDateFormat;

.field public static final HHmmss:Ljava/text/SimpleDateFormat;

.field public static final MEASURE_RESULT_DETAILES_HISTORY_TIME:Ljava/text/SimpleDateFormat;

.field public static final MM:Ljava/text/SimpleDateFormat;

.field public static final YYYY:Ljava/text/SimpleDateFormat;

.field public static final YYYYMMDD_HHMMSS:Ljava/text/SimpleDateFormat;

.field public static final YYYY_MM_DD_HH_MM_SS:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 19
    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 18
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/idelan/java/Util/TimeUtils;->DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 21
    const-string v1, "yyyy-MM-dd"

    .line 20
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/idelan/java/Util/TimeUtils;->DATE_FORMAT_DATE:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 23
    const-string v1, "yyyy/MM/dd HH:mm"

    .line 22
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/idelan/java/Util/TimeUtils;->MEASURE_RESULT_DETAILES_HISTORY_TIME:Ljava/text/SimpleDateFormat;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 25
    const-string v1, "yyyyMMddHHmmss"

    .line 24
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/idelan/java/Util/TimeUtils;->YYYYMMDD_HHMMSS:Ljava/text/SimpleDateFormat;

    .line 26
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 27
    const-string v1, "HH:mm:ss"

    .line 26
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/idelan/java/Util/TimeUtils;->HHmmss:Ljava/text/SimpleDateFormat;

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 29
    const-string v1, "yyyy/MM/dd  HH:mm:ss"

    .line 28
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/idelan/java/Util/TimeUtils;->YYYY_MM_DD_HH_MM_SS:Ljava/text/SimpleDateFormat;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/idelan/java/Util/TimeUtils;->HHmm:Ljava/text/SimpleDateFormat;

    .line 32
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/idelan/java/Util/TimeUtils;->YYYY:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/idelan/java/Util/TimeUtils;->MM:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurStampTime()Ljava/lang/String;
    .registers 4

    .prologue
    .line 49
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 50
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "str":Ljava/lang/String;
    return-object v2
.end method

.method public static getCurrentTimeInLong()J
    .registers 2

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentTimeInString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    invoke-static {}, Lcom/idelan/java/Util/TimeUtils;->getCurrentTimeInLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/idelan/java/Util/TimeUtils;->getTime(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTimeInString(Ljava/text/SimpleDateFormat;)Ljava/lang/String;
    .registers 3
    .param p0, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 119
    invoke-static {}, Lcom/idelan/java/Util/TimeUtils;->getCurrentTimeInLong()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/idelan/java/Util/TimeUtils;->getTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(JLjava/text/SimpleDateFormat;)Ljava/util/Date;
    .registers 7
    .param p0, "millisecond"    # J
    .param p2, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 56
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "date":Ljava/lang/String;
    :try_start_9
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_c
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_c} :catch_e

    move-result-object v2

    return-object v2

    .line 59
    :catch_e
    move-exception v1

    .line 60
    .local v1, "e":Ljava/text/ParseException;
    new-instance v2, Lorg/apache/http/ParseException;

    .line 61
    const-string v3, "formatDate convert error."

    .line 60
    invoke-direct {v2, v3}, Lorg/apache/http/ParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 6
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 36
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "HH:mm"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 37
    .local v3, "sdf":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 39
    .local v1, "date":Ljava/util/Date;
    :try_start_8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 40
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 41
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/Date;->setYear(I)V
    :try_end_18
    .catch Ljava/text/ParseException; {:try_start_8 .. :try_end_18} :catch_19

    .line 45
    .end local v0    # "c":Ljava/util/Calendar;
    :goto_18
    return-object v1

    .line 42
    :catch_19
    move-exception v2

    .line 43
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_18
.end method

.method public static getDate(Ljava/lang/String;Ljava/text/SimpleDateFormat;)Ljava/util/Date;
    .registers 5
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 67
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 68
    :catch_5
    move-exception v0

    .line 69
    .local v0, "e":Ljava/text/ParseException;
    new-instance v1, Ljava/lang/RuntimeException;

    .line 70
    const-string v2, "Please make sure that the incoming birthday \'YYYY-MM-DD\'!"

    .line 69
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getDaysBetween(Ljava/util/Date;Ljava/util/Date;)Ljava/lang/Long;
    .registers 9
    .param p0, "startDate"    # Ljava/util/Date;
    .param p1, "endDate"    # Ljava/util/Date;

    .prologue
    const/16 v6, 0xe

    const/16 v5, 0xd

    const/16 v4, 0xc

    const/16 v3, 0xb

    const/4 v2, 0x0

    .line 149
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 150
    .local v0, "fromCalendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 151
    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 152
    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 153
    invoke-virtual {v0, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 154
    invoke-virtual {v0, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 157
    .local v1, "toCalendar":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 158
    invoke-virtual {v1, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 159
    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 160
    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->set(II)V

    .line 161
    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->set(II)V

    .line 163
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    .line 164
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    .line 163
    sub-long/2addr v2, v4

    .line 164
    const-wide/32 v4, 0x5265c00

    .line 163
    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    return-object v2
.end method

.method public static getGapYearByBirthday(Ljava/util/Date;)F
    .registers 15
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 124
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sget-object v10, Lcom/idelan/java/Util/TimeUtils;->DATE_FORMAT_DATE:Ljava/text/SimpleDateFormat;

    invoke-static {v8, v9, v10}, Lcom/idelan/java/Util/TimeUtils;->getTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v1

    .line 127
    .local v1, "birthday":Ljava/lang/String;
    const-string v8, "-"

    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 128
    .local v7, "yearLine":I
    invoke-virtual {v1, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 130
    .local v3, "bornYear":I
    const-string v8, "-"

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v1, v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    .line 131
    .local v4, "monthLine":I
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 134
    .local v2, "bornMonth":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 135
    .local v6, "nowYear":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 137
    .local v5, "nowMonth":I
    if-ge v5, v2, :cond_4b

    .line 138
    add-int/lit8 v6, v6, -0x1

    .line 139
    add-int/lit8 v5, v5, 0xc

    .line 141
    :cond_4b
    sub-int v8, v5, v2

    int-to-double v8, v8

    const-wide/high16 v10, 0x4028000000000000L    # 12.0

    div-double/2addr v8, v10

    double-to-float v0, v8

    .line 142
    .local v0, "age":F
    sub-int v8, v6, v3

    int-to-float v8, v8

    add-float/2addr v0, v8

    .line 144
    float-to-double v8, v0

    invoke-static {v8, v9, v13, v12}, Lcom/idelan/java/Util/RandomUtils;->round(DII)D

    move-result-wide v8

    double-to-float v0, v8

    .line 145
    return v0
.end method

.method public static getTime(J)Ljava/lang/String;
    .registers 4
    .param p0, "timeInMillis"    # J

    .prologue
    .line 92
    sget-object v0, Lcom/idelan/java/Util/TimeUtils;->DEFAULT_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, v0}, Lcom/idelan/java/Util/TimeUtils;->getTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTime(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .registers 5
    .param p0, "timeInMillis"    # J
    .param p2, "dateFormat"    # Ljava/text/SimpleDateFormat;

    .prologue
    .line 82
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
