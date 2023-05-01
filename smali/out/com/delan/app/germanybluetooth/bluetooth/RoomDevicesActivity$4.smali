.class Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$4;
.super Ljava/lang/Object;
.source "RoomDevicesActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->uiNewValueForCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

.field final synthetic val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V
    .registers 3
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$4;->val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 482
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$1000(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$4;->val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v2, "47e9ee30-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 483
    return-void
.end method
