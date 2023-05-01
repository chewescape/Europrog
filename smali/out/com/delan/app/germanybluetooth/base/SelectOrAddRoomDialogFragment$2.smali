.class Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$2;
.super Ljava/lang/Object;
.source "SelectOrAddRoomDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$2;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$2;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$000(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 70
    :goto_c
    return-void

    .line 68
    :cond_d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$2;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$000(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 69
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$2;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$300(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$2;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$100(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->notifyData(Ljava/util/List;I)V

    goto :goto_c
.end method
