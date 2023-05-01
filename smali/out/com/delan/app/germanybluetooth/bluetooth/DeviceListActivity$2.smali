.class Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;
.super Ljava/lang/Object;
.source "DeviceListActivity.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$OnDialogClicked;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->showSelectRoomDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmClicked(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isNew"    # Z

    .prologue
    .line 149
    if-eqz p2, :cond_1d

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$500(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 150
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    const v2, 0x7f060077

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    :goto_1c
    return-void

    .line 153
    :cond_1d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$600(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->dismiss()V

    .line 154
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$800(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$700(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->addBleToDataBase(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 156
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$700(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$700(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->deleteItem(Landroid/bluetooth/BluetoothDevice;)V

    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->notifyDataSetChanged()V

    .line 160
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;Ljava/lang/String;)V

    goto :goto_1c
.end method
