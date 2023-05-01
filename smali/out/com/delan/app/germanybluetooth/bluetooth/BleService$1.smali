.class Lcom/delan/app/germanybluetooth/bluetooth/BleService$1;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/BleService;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

.field final synthetic val$ble:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$gatt:Landroid/bluetooth/BluetoothGatt;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;)V
    .registers 4
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$1;->val$ble:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 151
    const-string v0, "%s connect time out"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$1;->val$ble:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 153
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$1;->val$gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$1;->val$ble:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1, v2, v3}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;->uiDeviceConnectionStatusChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 158
    :cond_26
    :goto_26
    return-void

    .line 155
    :cond_27
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 156
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_26
.end method
