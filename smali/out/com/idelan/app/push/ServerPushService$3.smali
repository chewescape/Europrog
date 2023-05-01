.class Lcom/idelan/app/push/ServerPushService$3;
.super Landroid/content/BroadcastReceiver;
.source "ServerPushService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/push/ServerPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/app/push/ServerPushService;


# direct methods
.method constructor <init>(Lcom/idelan/app/push/ServerPushService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/app/push/ServerPushService$3;->this$0:Lcom/idelan/app/push/ServerPushService;

    .line 380
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 384
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService$3;->this$0:Lcom/idelan/app/push/ServerPushService;

    iget-object v0, v0, Lcom/idelan/app/push/ServerPushService;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_d

    .line 385
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService$3;->this$0:Lcom/idelan/app/push/ServerPushService;

    iget-object v0, v0, Lcom/idelan/app/push/ServerPushService;->kl:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 387
    :cond_d
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService$3;->this$0:Lcom/idelan/app/push/ServerPushService;

    iget-object v1, p0, Lcom/idelan/app/push/ServerPushService$3;->this$0:Lcom/idelan/app/push/ServerPushService;

    iget-object v1, v1, Lcom/idelan/app/push/ServerPushService;->screenReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/idelan/app/push/ServerPushService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 388
    return-void
.end method
