.class Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$2;
.super Lutils/DialogUtils$DialogCallBack;
.source "RoomDevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->onRightMenuClicked(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    iput p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$2;->val$position:I

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveButton(Ljava/lang/Object;)V
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 157
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 158
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    move-result-object v1

    iget v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$2;->val$position:I

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 159
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->remove(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    .line 160
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->notifyDataSetChanged()V

    .line 161
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$500(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->deleteRecord(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v1, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v1, :cond_4e

    .line 163
    iget-object v1, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->disconnectGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 164
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 166
    :cond_4e
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$600(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)V

    .line 167
    return-void
.end method
