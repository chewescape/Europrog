.class Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;
.super Lutils/DialogUtils$DialogCallBack;
.source "DeviceListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButton(Ljava/lang/Object;)V
    .registers 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 111
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onNegativeButton(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method public onPositiveButton(Ljava/lang/Object;)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 98
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    const v2, 0x7f06006e

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_29

    .line 100
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->addBleToDataBase(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    .line 101
    :cond_29
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->deleteItem(Landroid/bluetooth/BluetoothDevice;)V

    .line 102
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->notifyDataSetChanged()V

    .line 103
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    const v2, 0x7f060032

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;Ljava/lang/String;)V

    .line 107
    return-void
.end method
