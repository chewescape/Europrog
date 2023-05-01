.class public Lcom/delan/app/germanybluetooth/bean/chars/Time;
.super Ljava/lang/Object;
.source "Time.java"


# instance fields
.field public day:I

.field public hour:I

.field public min:I

.field public month:I

.field public year:I


# direct methods
.method private constructor <init>()V
    .registers 6

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yy:MM:dd:HH:mm"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 34
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "s":Ljava/lang/String;
    const-string v3, ":"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "strings":[Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4a

    .line 37
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/delan/app/germanybluetooth/bean/chars/Time;->year:I

    .line 38
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/delan/app/germanybluetooth/bean/chars/Time;->month:I

    .line 39
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/delan/app/germanybluetooth/bean/chars/Time;->day:I

    .line 40
    const/4 v3, 0x3

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/delan/app/germanybluetooth/bean/chars/Time;->hour:I

    .line 41
    const/4 v3, 0x4

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/delan/app/germanybluetooth/bean/chars/Time;->min:I

    .line 43
    :cond_4a
    return-void
.end method

.method public static getBytes()[B
    .registers 4

    .prologue
    .line 46
    const/4 v2, 0x5

    new-array v0, v2, [B

    .line 47
    .local v0, "rawValue":[B
    new-instance v1, Lcom/delan/app/germanybluetooth/bean/chars/Time;

    invoke-direct {v1}, Lcom/delan/app/germanybluetooth/bean/chars/Time;-><init>()V

    .line 48
    .local v1, "time":Lcom/delan/app/germanybluetooth/bean/chars/Time;
    const/4 v2, 0x0

    iget v3, v1, Lcom/delan/app/germanybluetooth/bean/chars/Time;->min:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 49
    const/4 v2, 0x1

    iget v3, v1, Lcom/delan/app/germanybluetooth/bean/chars/Time;->hour:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 50
    const/4 v2, 0x2

    iget v3, v1, Lcom/delan/app/germanybluetooth/bean/chars/Time;->day:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 51
    const/4 v2, 0x3

    iget v3, v1, Lcom/delan/app/germanybluetooth/bean/chars/Time;->month:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 52
    const/4 v2, 0x4

    iget v3, v1, Lcom/delan/app/germanybluetooth/bean/chars/Time;->year:I

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 53
    return-object v0
.end method
