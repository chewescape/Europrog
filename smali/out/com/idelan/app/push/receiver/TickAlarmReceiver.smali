.class public Lcom/idelan/app/push/receiver/TickAlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TickAlarmReceiver.java"


# instance fields
.field wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    invoke-static {p1}, Lcom/idelan/app/push/ServerPushService;->isEanbled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 23
    invoke-static {p1}, Lcom/idelan/app/Util/NetUtil;->isWiFiActive(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 30
    :cond_c
    :goto_c
    return-void

    .line 26
    :cond_d
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/idelan/app/push/ServerPushService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, "startSrv":Landroid/content/Intent;
    const-string v1, "CMD"

    const-string v2, "TICK"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_c
.end method
