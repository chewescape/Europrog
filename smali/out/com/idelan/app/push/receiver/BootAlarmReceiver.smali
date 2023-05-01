.class public Lcom/idelan/app/push/receiver/BootAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootAlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    invoke-static {p1}, Lcom/idelan/app/push/ServerPushService;->isEanbled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 19
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/idelan/app/push/ServerPushService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v0, "startSrv":Landroid/content/Intent;
    const-string v1, "CMD"

    const-string v2, "TICK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 23
    .end local v0    # "startSrv":Landroid/content/Intent;
    :cond_17
    return-void
.end method
