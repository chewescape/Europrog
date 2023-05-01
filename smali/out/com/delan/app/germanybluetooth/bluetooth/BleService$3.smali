.class Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readWriteCharacter(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field count:I

.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

.field final synthetic val$ch:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

.field final synthetic val$isWrite:Z


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .registers 6
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iput-object p3, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->val$ch:Landroid/bluetooth/BluetoothGattCharacteristic;

    iput-boolean p4, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->val$isWrite:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const/16 v0, 0x64

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->count:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 249
    :goto_0
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getReadWriteRight()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 250
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 251
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x73

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/ReadWriteCharPara;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->val$ch:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-boolean v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->val$isWrite:Z

    invoke-direct {v3, v4, v5, v6}, Lcom/delan/app/germanybluetooth/bean/ReadWriteCharPara;-><init>(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 264
    :cond_2a
    :goto_2a
    return-void

    .line 253
    :cond_2b
    iget v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->count:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->count:I

    if-gez v1, :cond_4b

    .line 254
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 255
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->val$ch:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-boolean v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/BleService$3;->val$isWrite:Z

    invoke-interface {v1, v2, v3, v4}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;->uiWaitReadWriteCharacteristicTimeOut(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    goto :goto_2a

    .line 259
    :cond_4b
    const-wide/16 v2, 0x64

    :try_start_4d
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_50
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_0

    .line 260
    :catch_51
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
