.class Lcom/idelan/app/push/ServerPushService$2;
.super Lcom/idelan/app/push/IServicePush$Stub;
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
    iput-object p1, p0, Lcom/idelan/app/push/ServerPushService$2;->this$0:Lcom/idelan/app/push/ServerPushService;

    .line 62
    invoke-direct {p0}, Lcom/idelan/app/push/IServicePush$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public iGetCommonStatus()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService$2;->this$0:Lcom/idelan/app/push/ServerPushService;

    invoke-static {v0}, Lcom/idelan/app/push/ServerPushService;->getCommonStatus(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public iGetPushTokenId()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService$2;->this$0:Lcom/idelan/app/push/ServerPushService;

    invoke-static {v0}, Lcom/idelan/app/push/ServerPushService;->getPushTokenId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iIsEanbled()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 71
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService$2;->this$0:Lcom/idelan/app/push/ServerPushService;

    invoke-static {v0}, Lcom/idelan/app/push/ServerPushService;->isEanbled(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public iSetCommonStatus(Z)V
    .registers 3
    .param p1, "status"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService$2;->this$0:Lcom/idelan/app/push/ServerPushService;

    invoke-static {v0, p1}, Lcom/idelan/app/push/ServerPushService;->setCommonStatus(Landroid/content/Context;Z)V

    .line 82
    return-void
.end method

.method public iSetEanbled(Z)V
    .registers 3
    .param p1, "bRun"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/idelan/app/push/ServerPushService$2;->this$0:Lcom/idelan/app/push/ServerPushService;

    invoke-static {v0, p1}, Lcom/idelan/app/push/ServerPushService;->setEanbled(Landroid/content/Context;Z)V

    .line 67
    return-void
.end method
