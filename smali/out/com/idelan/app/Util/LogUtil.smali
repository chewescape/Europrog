.class public Lcom/idelan/app/Util/LogUtil;
.super Ljava/lang/Object;
.source "LogUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TAG"

.field public static isDebug:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/idelan/app/Util/LogUtil;->isDebug:Z

    .line 17
    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot be instantiated"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    sget-boolean v0, Lcom/idelan/app/Util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_9

    .line 27
    const-string v0, "TAG"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_9
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-boolean v0, Lcom/idelan/app/Util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_7

    .line 48
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_7
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 31
    sget-boolean v0, Lcom/idelan/app/Util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_9

    .line 32
    const-string v0, "TAG"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_9
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 52
    sget-boolean v0, Lcom/idelan/app/Util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_7

    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_7
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 21
    sget-boolean v0, Lcom/idelan/app/Util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_9

    .line 22
    const-string v0, "TAG"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_9
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-boolean v0, Lcom/idelan/app/Util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_7

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_7
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 36
    sget-boolean v0, Lcom/idelan/app/Util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_9

    .line 37
    const-string v0, "TAG"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_9
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-boolean v0, Lcom/idelan/app/Util/LogUtil;->isDebug:Z

    if-eqz v0, :cond_7

    .line 58
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_7
    return-void
.end method
