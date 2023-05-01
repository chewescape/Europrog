.class public Lcom/idelan/app/push/DateTimeUtil;
.super Ljava/lang/Object;
.source "DateTimeUtil.java"


# static fields
.field public static DEFAULTFORMAT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sput-object v0, Lcom/idelan/app/push/DateTimeUtil;->DEFAULTFORMAT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertDateTimeStrFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "dateStr"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "newPattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p0, p1}, Lcom/idelan/app/push/DateTimeUtil;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/idelan/app/push/DateTimeUtil;->formatCalendar(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatCalendar(Ljava/util/Calendar;)Ljava/lang/String;
    .registers 2
    .param p0, "calendar"    # Ljava/util/Calendar;

    .prologue
    .line 27
    sget-object v0, Lcom/idelan/app/push/DateTimeUtil;->DEFAULTFORMAT:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/idelan/app/push/DateTimeUtil;->formatCalendar(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatCalendar(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatDate(Ljava/util/Date;)Ljava/lang/String;
    .registers 2
    .param p0, "date"    # Ljava/util/Date;

    .prologue
    .line 59
    sget-object v0, Lcom/idelan/app/push/DateTimeUtil;->DEFAULTFORMAT:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/idelan/app/push/DateTimeUtil;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 51
    if-nez p0, :cond_5

    .line 52
    const-string v1, ""

    .line 55
    :goto_4
    return-object v1

    .line 53
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 54
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 55
    invoke-static {v0, p1}, Lcom/idelan/app/push/DateTimeUtil;->formatCalendar(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method public static getCurDateTime()Ljava/lang/String;
    .registers 1

    .prologue
    .line 13
    sget-object v0, Lcom/idelan/app/push/DateTimeUtil;->DEFAULTFORMAT:Ljava/lang/String;

    invoke-static {v0}, Lcom/idelan/app/push/DateTimeUtil;->getCurDateTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurDateTime(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "pattern"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/idelan/app/push/DateTimeUtil;->formatCalendar(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .param p0, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 v1, 0x0

    .line 40
    :goto_3
    return-object v1

    .line 39
    :cond_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 40
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_3
.end method

.method public static parseDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 44
    if-nez p0, :cond_4

    .line 45
    const/4 v1, 0x0

    .line 47
    :goto_3
    return-object v1

    .line 46
    :cond_4
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 47
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    goto :goto_3
.end method

.method public static parseString(Ljava/lang/String;)Ljava/util/Calendar;
    .registers 2
    .param p0, "dateStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 76
    sget-object v0, Lcom/idelan/app/push/DateTimeUtil;->DEFAULTFORMAT:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/idelan/app/push/DateTimeUtil;->parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static parseString(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Calendar;
    .registers 5
    .param p0, "dateStr"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 63
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 64
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 65
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 66
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 67
    return-object v0
.end method
