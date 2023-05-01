.class Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;
.super Ljava/lang/Object;
.source "RoomDevicesActivity.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$onRightMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->fillView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRightMenuClicked(II)V
    .registers 7
    .param p1, "index"    # I
    .param p2, "position"    # I

    .prologue
    .line 132
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->closeMenu()V

    .line 133
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 171
    :goto_19
    return-void

    .line 135
    :cond_1a
    packed-switch p1, :pswitch_data_50

    goto :goto_19

    .line 137
    :pswitch_1e
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    const v3, 0x7f06005d

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$1;

    invoke-direct {v3, p0, p2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;I)V

    invoke-static {v1, v2, v3}, Lutils/DialogUtils;->showInputBluetoothDialog(Landroid/app/Activity;Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->dialog:Landroid/app/Dialog;

    goto :goto_19

    .line 154
    :pswitch_37
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    const v2, 0x7f06003c

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    new-instance v3, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$2;

    invoke-direct {v3, p0, p2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$2;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;I)V

    invoke-static {v1, v2, v3}, Lutils/DialogUtils;->confirmDialog(Ljava/lang/String;Landroid/content/Context;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->dialog:Landroid/app/Dialog;

    goto :goto_19

    .line 135
    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_37
    .end packed-switch
.end method
