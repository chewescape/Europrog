.class Lcom/idelan/app/push/ServerPushService$1;
.super Landroid/os/Handler;
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
    iput-object p1, p0, Lcom/idelan/app/push/ServerPushService$1;->this$0:Lcom/idelan/app/push/ServerPushService;

    .line 54
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 56
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_16

    .line 57
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 58
    .local v0, "str":[Ljava/lang/String;
    iget-object v1, p0, Lcom/idelan/app/push/ServerPushService$1;->this$0:Lcom/idelan/app/push/ServerPushService;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/idelan/app/push/ServerPushService;->pushMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .end local v0    # "str":[Ljava/lang/String;
    :cond_16
    return-void
.end method
