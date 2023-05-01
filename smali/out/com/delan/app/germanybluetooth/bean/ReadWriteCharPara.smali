.class public Lcom/delan/app/germanybluetooth/bean/ReadWriteCharPara;
.super Ljava/lang/Object;
.source "ReadWriteCharPara.java"


# instance fields
.field public final ch:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public final deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

.field public final isWrite:Z


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .registers 4
    .param p1, "deviceBean"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "isWrite"    # Z

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/ReadWriteCharPara;->deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 16
    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bean/ReadWriteCharPara;->ch:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 17
    iput-boolean p3, p0, Lcom/delan/app/germanybluetooth/bean/ReadWriteCharPara;->isWrite:Z

    .line 18
    return-void
.end method
