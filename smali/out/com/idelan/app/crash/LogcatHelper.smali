.class public Lcom/idelan/app/crash/LogcatHelper;
.super Lcom/idelan/app/crash/BaseHelper;
.source "LogcatHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idelan/app/crash/LogcatHelper$LogDumper;
    }
.end annotation


# static fields
.field private static INSTANCE:Lcom/idelan/app/crash/LogcatHelper;


# instance fields
.field private fileName:Ljava/lang/String;

.field private mLogDumper:Lcom/idelan/app/crash/LogcatHelper$LogDumper;

.field private mPId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput-object v0, Lcom/idelan/app/crash/LogcatHelper;->INSTANCE:Lcom/idelan/app/crash/LogcatHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/idelan/app/crash/BaseHelper;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idelan/app/crash/LogcatHelper;->mLogDumper:Lcom/idelan/app/crash/LogcatHelper$LogDumper;

    .line 34
    const-string v0, "Log"

    invoke-virtual {p0, p1, v0}, Lcom/idelan/app/crash/LogcatHelper;->createFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/idelan/app/crash/LogcatHelper;->fileName:Ljava/lang/String;

    .line 35
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/idelan/app/crash/LogcatHelper;->mPId:I

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/idelan/app/crash/LogcatHelper;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/idelan/app/crash/LogcatHelper;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/idelan/app/crash/LogcatHelper;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    sget-object v0, Lcom/idelan/app/crash/LogcatHelper;->INSTANCE:Lcom/idelan/app/crash/LogcatHelper;

    if-nez v0, :cond_b

    .line 28
    new-instance v0, Lcom/idelan/app/crash/LogcatHelper;

    invoke-direct {v0, p0}, Lcom/idelan/app/crash/LogcatHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/idelan/app/crash/LogcatHelper;->INSTANCE:Lcom/idelan/app/crash/LogcatHelper;

    .line 30
    :cond_b
    sget-object v0, Lcom/idelan/app/crash/LogcatHelper;->INSTANCE:Lcom/idelan/app/crash/LogcatHelper;

    return-object v0
.end method


# virtual methods
.method public start()V
    .registers 3

    .prologue
    .line 39
    const-string v0, ""

    iget-object v1, p0, Lcom/idelan/app/crash/LogcatHelper;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 44
    :goto_a
    return-void

    .line 41
    :cond_b
    iget-object v0, p0, Lcom/idelan/app/crash/LogcatHelper;->mLogDumper:Lcom/idelan/app/crash/LogcatHelper$LogDumper;

    if-nez v0, :cond_1c

    .line 42
    new-instance v0, Lcom/idelan/app/crash/LogcatHelper$LogDumper;

    iget v1, p0, Lcom/idelan/app/crash/LogcatHelper;->mPId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/idelan/app/crash/LogcatHelper$LogDumper;-><init>(Lcom/idelan/app/crash/LogcatHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/idelan/app/crash/LogcatHelper;->mLogDumper:Lcom/idelan/app/crash/LogcatHelper$LogDumper;

    .line 43
    :cond_1c
    iget-object v0, p0, Lcom/idelan/app/crash/LogcatHelper;->mLogDumper:Lcom/idelan/app/crash/LogcatHelper$LogDumper;

    invoke-virtual {v0}, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->start()V

    goto :goto_a
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/idelan/app/crash/LogcatHelper;->mLogDumper:Lcom/idelan/app/crash/LogcatHelper$LogDumper;

    if-eqz v0, :cond_c

    .line 48
    iget-object v0, p0, Lcom/idelan/app/crash/LogcatHelper;->mLogDumper:Lcom/idelan/app/crash/LogcatHelper$LogDumper;

    invoke-virtual {v0}, Lcom/idelan/app/crash/LogcatHelper$LogDumper;->stopLogs()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/idelan/app/crash/LogcatHelper;->mLogDumper:Lcom/idelan/app/crash/LogcatHelper$LogDumper;

    .line 51
    :cond_c
    return-void
.end method
