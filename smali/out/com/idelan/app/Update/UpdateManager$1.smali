.class Lcom/idelan/app/Update/UpdateManager$1;
.super Landroid/os/Handler;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/Update/UpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/app/Update/UpdateManager;


# direct methods
.method constructor <init>(Lcom/idelan/app/Update/UpdateManager;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/app/Update/UpdateManager$1;->this$0:Lcom/idelan/app/Update/UpdateManager;

    .line 58
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    .line 74
    :goto_5
    return-void

    .line 64
    :pswitch_6
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateManager$1;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v0}, Lcom/idelan/app/Update/UpdateManager;->access$0(Lcom/idelan/app/Update/UpdateManager;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget-object v1, p0, Lcom/idelan/app/Update/UpdateManager$1;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v1}, Lcom/idelan/app/Update/UpdateManager;->access$1(Lcom/idelan/app/Update/UpdateManager;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 65
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateManager$1;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v0}, Lcom/idelan/app/Update/UpdateManager;->access$2(Lcom/idelan/app/Update/UpdateManager;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/idelan/app/Update/UpdateManager$1;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v2}, Lcom/idelan/app/Update/UpdateManager;->access$1(Lcom/idelan/app/Update/UpdateManager;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 69
    :pswitch_38
    iget-object v0, p0, Lcom/idelan/app/Update/UpdateManager$1;->this$0:Lcom/idelan/app/Update/UpdateManager;

    invoke-static {v0}, Lcom/idelan/app/Update/UpdateManager;->access$3(Lcom/idelan/app/Update/UpdateManager;)V

    goto :goto_5

    .line 60
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_6
        :pswitch_38
    .end packed-switch
.end method
