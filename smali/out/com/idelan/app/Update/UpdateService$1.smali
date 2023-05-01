.class Lcom/idelan/app/Update/UpdateService$1;
.super Landroid/os/Handler;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/Update/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/app/Update/UpdateService;


# direct methods
.method constructor <init>(Lcom/idelan/app/Update/UpdateService;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/app/Update/UpdateService$1;->this$0:Lcom/idelan/app/Update/UpdateService;

    .line 96
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 99
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 118
    :goto_5
    return-void

    .line 102
    :pswitch_6
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateService$1;->this$0:Lcom/idelan/app/Update/UpdateService;

    invoke-static {v0}, Lcom/idelan/app/Update/UpdateService;->access$0(Lcom/idelan/app/Update/UpdateService;)V

    .line 104
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateService$1;->this$0:Lcom/idelan/app/Update/UpdateService;

    invoke-virtual {v0}, Lcom/idelan/app/Update/UpdateService;->stopSelf()V

    goto :goto_5

    .line 108
    :pswitch_11
    sget-object v0, Lcom/idelan/app/Update/UpdateManager;->listener:Lcom/idelan/app/Update/UpdateListener;

    invoke-interface {v0}, Lcom/idelan/app/Update/UpdateListener;->breakUpdate()V

    .line 109
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateService$1;->this$0:Lcom/idelan/app/Update/UpdateService;

    invoke-static {v0}, Lcom/idelan/app/Update/UpdateService;->access$1(Lcom/idelan/app/Update/UpdateService;)V

    .line 111
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateService$1;->this$0:Lcom/idelan/app/Update/UpdateService;

    invoke-virtual {v0}, Lcom/idelan/app/Update/UpdateService;->onDestroy()V

    .line 112
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateService$1;->this$0:Lcom/idelan/app/Update/UpdateService;

    invoke-virtual {v0}, Lcom/idelan/app/Update/UpdateService;->stopSelf()V

    goto :goto_5

    .line 99
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_11
        :pswitch_6
    .end packed-switch
.end method
