.class Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$2;
.super Ljava/lang/Object;
.source "VersionListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->uiNewValueForCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 369
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v2, "47e9ee30-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 370
    return-void
.end method
