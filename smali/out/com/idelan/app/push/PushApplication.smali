.class public Lcom/idelan/app/push/PushApplication;
.super Landroid/app/Application;
.source "PushApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public closePush()V
    .registers 3

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/idelan/app/push/ServerPushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/idelan/app/push/PushApplication;->stopService(Landroid/content/Intent;)Z

    .line 30
    return-void
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 12
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 14
    return-void
.end method

.method public openPush()V
    .registers 3

    .prologue
    .line 20
    invoke-static {p0}, Lcom/idelan/app/push/ServerPushService;->isEanbled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/idelan/app/push/ServerPushService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/idelan/app/push/PushApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    :cond_10
    return-void
.end method

.method public setPushAppParameter(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "iconId"    # I
    .param p2, "pushAppTitle"    # Ljava/lang/String;
    .param p3, "pushAddress"    # Ljava/lang/String;
    .param p4, "pushPort"    # I
    .param p5, "pushAppId"    # Ljava/lang/String;
    .param p6, "pushCorpId"    # Ljava/lang/String;
    .param p7, "pushKey"    # Ljava/lang/String;

    .prologue
    .line 53
    if-eqz p1, :cond_4

    .line 54
    sput p1, Lcom/idelan/app/push/PushIConstants;->PushIcon:I

    .line 55
    :cond_4
    invoke-static {p2}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 56
    sput-object p2, Lcom/idelan/app/push/PushIConstants;->PushAppTitle:Ljava/lang/String;

    .line 57
    :cond_c
    invoke-static {p3}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 58
    sput-object p3, Lcom/idelan/app/push/PushIConstants;->PushAddress:Ljava/lang/String;

    .line 59
    :cond_14
    if-eqz p4, :cond_18

    .line 60
    sput p4, Lcom/idelan/app/push/PushIConstants;->PushPort:I

    .line 61
    :cond_18
    invoke-static {p5}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 62
    sput-object p5, Lcom/idelan/app/push/PushIConstants;->PushAppId:Ljava/lang/String;

    .line 63
    :cond_20
    invoke-static {p6}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 64
    sput-object p6, Lcom/idelan/app/push/PushIConstants;->PushCorpId:Ljava/lang/String;

    .line 65
    :cond_28
    invoke-static {p7}, Lcom/idelan/Charset/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 66
    sput-object p7, Lcom/idelan/app/push/PushIConstants;->PushKey:Ljava/lang/String;

    .line 67
    :cond_30
    return-void
.end method
