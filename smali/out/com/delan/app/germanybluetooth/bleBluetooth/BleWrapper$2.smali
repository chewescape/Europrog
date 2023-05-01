.class Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$2;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$2;->this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 403
    const-string v0, "onCharacteristicChanged"

    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 404
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$2;->this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->access$000(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;->uiGotNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 405
    return-void
.end method

.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 375
    if-nez p3, :cond_7

    .line 377
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$2;->this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-static {v0, p1, p2}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->access$300(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 380
    :cond_7
    return-void
.end method

.method public onCharacteristicWrite(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 395
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$2;->this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->access$000(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 396
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$2;->this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->access$000(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;->uiWriteComplete(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 398
    :cond_11
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .registers 8
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 325
    const/4 v0, 0x2

    if-ne p3, v0, :cond_37

    .line 326
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$2;->this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->access$000(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 327
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$2;->this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->access$000(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {v0, p1, v1, v2}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;->uiDeviceConnectionStatusChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 329
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 330
    const-string v0, "%s \u84dd\u7259\u8fde\u63a5\u6210\u529f"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 337
    :cond_31
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$2;->this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-static {v0, p1}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->access$100(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;Landroid/bluetooth/BluetoothGatt;)V

    .line 348
    :cond_36
    :goto_36
    return-void

    .line 342
    :cond_37
    if-nez p3, :cond_36

    .line 343
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$2;->this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->access$000(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 344
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$2;->this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->access$000(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    move-result-object v0

    .line 345
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 344
    invoke-interface {v0, p1, v1, v3}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;->uiDeviceConnectionStatusChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_36
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .registers 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .prologue
    .line 357
    if-nez p2, :cond_7

    .line 360
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$2;->this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-static {v0, p1}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->access$200(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;Landroid/bluetooth/BluetoothGatt;)V

    .line 362
    :cond_7
    return-void
.end method
