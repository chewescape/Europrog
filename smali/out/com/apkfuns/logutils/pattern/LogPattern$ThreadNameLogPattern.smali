.class public Lcom/apkfuns/logutils/pattern/LogPattern$ThreadNameLogPattern;
.super Lcom/apkfuns/logutils/pattern/LogPattern;
.source "LogPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkfuns/logutils/pattern/LogPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThreadNameLogPattern"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .registers 4
    .param p1, "count"    # I
    .param p2, "length"    # I

    .prologue
    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/apkfuns/logutils/pattern/LogPattern;-><init>(IILcom/apkfuns/logutils/pattern/LogPattern$1;)V

    .line 130
    return-void
.end method


# virtual methods
.method protected doApply(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 3
    .param p1, "caller"    # Ljava/lang/StackTraceElement;

    .prologue
    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
