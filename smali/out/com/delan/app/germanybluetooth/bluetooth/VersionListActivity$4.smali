.class Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$4;
.super Ljava/lang/Object;
.source "VersionListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->receivedNotification(Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

.field final synthetic val$ch:Landroid/bluetooth/BluetoothGattCharacteristic;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$4;->val$ch:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 485
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$4;->val$ch:Landroid/bluetooth/BluetoothGattCharacteristic;

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 486
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v2, "47e9ee40-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 487
    return-void
.end method
