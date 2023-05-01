.class public Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;
.super Lcom/apkfuns/logutils/pattern/LogPattern;
.source "LogPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkfuns/logutils/pattern/LogPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlainLogPattern"
.end annotation


# instance fields
.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 5
    .param p1, "count"    # I
    .param p2, "length"    # I
    .param p3, "string"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/apkfuns/logutils/pattern/LogPattern;-><init>(IILcom/apkfuns/logutils/pattern/LogPattern$1;)V

    .line 25
    iput-object p3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;->string:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected doApply(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 3
    .param p1, "caller"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/apkfuns/logutils/pattern/LogPattern$PlainLogPattern;->string:Ljava/lang/String;

    return-object v0
.end method
