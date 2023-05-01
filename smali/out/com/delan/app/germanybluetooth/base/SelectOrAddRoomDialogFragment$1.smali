.class Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$1;
.super Ljava/lang/Object;
.source "SelectOrAddRoomDialogFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 55
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$1;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$1;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$000(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Landroid/widget/CheckBox;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$1;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$300(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$1;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$100(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$1;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-static {v2, p3}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->access$202(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/adapter/SelectRoomDialogAdapter;->notifyData(Ljava/util/List;I)V

    .line 60
    return-void
.end method
