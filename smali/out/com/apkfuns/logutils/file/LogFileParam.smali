.class public Lcom/apkfuns/logutils/file/LogFileParam;
.super Ljava/lang/Object;
.source "LogFileParam.java"


# instance fields
.field private logLevel:I

.field private tagName:Ljava/lang/String;

.field private threadName:Ljava/lang/String;

.field private time:J


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "time"    # J
    .param p3, "logLevel"    # I
    .param p4, "threadName"    # Ljava/lang/String;
    .param p5, "tagName"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-wide p1, p0, Lcom/apkfuns/logutils/file/LogFileParam;->time:J

    .line 16
    iput p3, p0, Lcom/apkfuns/logutils/file/LogFileParam;->logLevel:I

    .line 17
    iput-object p4, p0, Lcom/apkfuns/logutils/file/LogFileParam;->threadName:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/apkfuns/logutils/file/LogFileParam;->tagName:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getLogLevel()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/apkfuns/logutils/file/LogFileParam;->logLevel:I

    return v0
.end method

.method public getTagName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/apkfuns/logutils/file/LogFileParam;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/apkfuns/logutils/file/LogFileParam;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/apkfuns/logutils/file/LogFileParam;->time:J

    return-wide v0
.end method
