.class Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$3;
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
    .line 73
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$3;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$3;->this$0:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->dismiss()V

    .line 77
    return-void
.end method
