.class public Lcom/apkfuns/logutils/pattern/LogPattern$DateLogPattern;
.super Lcom/apkfuns/logutils/pattern/LogPattern;
.source "LogPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkfuns/logutils/pattern/LogPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateLogPattern"
.end annotation


# instance fields
.field private final dateFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "length"    # I
    .param p3, "dateFormat"    # Ljava/lang/String;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/apkfuns/logutils/pattern/LogPattern;-><init>(IILcom/apkfuns/logutils/pattern/LogPattern$1;)V

    .line 40
    if-eqz p3, :cond_e

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$DateLogPattern;->dateFormat:Ljava/text/SimpleDateFormat;

    .line 46
    :goto_d
    return-void

    .line 43
    :cond_e
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$DateLogPattern;->dateFormat:Ljava/text/SimpleDateFormat;

    goto :goto_d
.end method


# virtual methods
.method protected doApply(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 4
    .param p1, "caller"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$DateLogPattern;->dateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
