.class public Lcom/apkfuns/logutils/pattern/LogPattern$CallerLogPattern;
.super Lcom/apkfuns/logutils/pattern/LogPattern;
.source "LogPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apkfuns/logutils/pattern/LogPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallerLogPattern"
.end annotation


# instance fields
.field private callerCount:I

.field private callerLength:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 6
    .param p1, "count"    # I
    .param p2, "length"    # I
    .param p3, "callerCount"    # I
    .param p4, "callerLength"    # I

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/apkfuns/logutils/pattern/LogPattern;-><init>(IILcom/apkfuns/logutils/pattern/LogPattern$1;)V

    .line 62
    iput p3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$CallerLogPattern;->callerCount:I

    .line 63
    iput p4, p0, Lcom/apkfuns/logutils/pattern/LogPattern$CallerLogPattern;->callerLength:I

    .line 64
    return-void
.end method


# virtual methods
.method protected doApply(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .registers 11
    .param p1, "caller"    # Ljava/lang/StackTraceElement;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 68
    if-nez p1, :cond_d

    .line 69
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Caller not found"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 72
    :cond_d
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v3

    if-gez v3, :cond_30

    .line 73
    const-string v3, "%s#%s"

    new-array v4, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, "callerString":Ljava/lang/String;
    :goto_27
    :try_start_27
    iget v3, p0, Lcom/apkfuns/logutils/pattern/LogPattern$CallerLogPattern;->callerCount:I

    iget v4, p0, Lcom/apkfuns/logutils/pattern/LogPattern$CallerLogPattern;->callerLength:I

    invoke-static {v0, v3, v4}, Lcom/apkfuns/logutils/utils/Utils;->shortenClassName(Ljava/lang/String;II)Ljava/lang/String;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2e} :catch_5a

    move-result-object v3

    .line 83
    :goto_2f
    return-object v3

    .line 75
    .end local v0    # "callerString":Ljava/lang/String;
    :cond_30
    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "stackTrace":Ljava/lang/String;
    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 77
    const-string v3, "%s.%s%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    aput-object v2, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "callerString":Ljava/lang/String;
    goto :goto_27

    .line 82
    .end local v2    # "stackTrace":Ljava/lang/String;
    :catch_5a
    move-exception v1

    .line 83
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_2f
.end method

.method protected isCallerNeeded()Z
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method
