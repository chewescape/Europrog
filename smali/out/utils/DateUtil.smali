.class public Lutils/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 41
    const-string v3, ";&#|&#|;"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "tmp":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v4, v2

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v4, :cond_2a

    aget-object v0, v2, v3

    .line 44
    .local v0, "aTmp":Ljava/lang/String;
    const-string v5, "\\d{5}"

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-char v5, v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    :goto_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 47
    :cond_26
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 50
    .end local v0    # "aTmp":Ljava/lang/String;
    :cond_2a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static formatDate(Ljava/lang/String;Ljava/util/Date;)Ljava/lang/String;
    .registers 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    .line 16
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 17
    .local v0, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v2

    .line 19
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    :goto_9
    return-object v2

    .line 18
    :catch_a
    move-exception v1

    .line 19
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public static formatToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 5
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 26
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 27
    .local v0, "df":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_a

    move-result-object v2

    .line 29
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    :goto_9
    return-object v2

    .line 28
    :catch_a
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_9
.end method

.method public static getStartTime(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 54
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
