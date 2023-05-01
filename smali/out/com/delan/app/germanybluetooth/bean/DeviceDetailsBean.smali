.class public Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
.super Ljava/lang/Object;
.source "DeviceDetailsBean.java"


# static fields
.field public static final MAX_TRY_CONNECT_TIME:I = 0x5


# instance fields
.field public actualPin:I

.field private address:Ljava/lang/String;

.field public battery:I

.field public ble:Landroid/bluetooth/BluetoothDevice;

.field public chars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattCharacteristic;",
            ">;"
        }
    .end annotation
.end field

.field public coblVersion:Ljava/lang/String;

.field public connected:Z

.field public desiredPin:I

.field public gatt:Landroid/bluetooth/BluetoothGatt;

.field public hasTryConnectTime:I

.field private isInReadWrite:Z

.field public needToReadBattery:Z

.field public needToWriteTime:Z

.field public originalName:Ljava/lang/String;

.field public rfblVersion:Ljava/lang/String;

.field public services:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field public showName:Ljava/lang/String;

.field public successSetPin:I

.field public trySetPinCount:I


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    .line 37
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->actualPin:I

    .line 38
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->desiredPin:I

    .line 49
    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->needToReadBattery:Z

    .line 50
    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->needToWriteTime:Z

    .line 53
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->trySetPinCount:I

    .line 56
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    .line 57
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->address:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->showName:Ljava/lang/String;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->originalName:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "showName"    # Ljava/lang/String;
    .param p3, "originalName"    # Ljava/lang/String;
    .param p4, "pin"    # I
    .param p5, "coblVersion"    # Ljava/lang/String;
    .param p6, "rfblVersion"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    .line 37
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->actualPin:I

    .line 38
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->desiredPin:I

    .line 49
    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->needToReadBattery:Z

    .line 50
    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->needToWriteTime:Z

    .line 53
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->trySetPinCount:I

    .line 62
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->address:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->showName:Ljava/lang/String;

    .line 64
    iput-object p3, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->originalName:Ljava/lang/String;

    .line 65
    iput p4, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->actualPin:I

    iput p4, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->desiredPin:I

    .line 66
    iput-object p5, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->coblVersion:Ljava/lang/String;

    .line 67
    iput-object p6, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->rfblVersion:Ljava/lang/String;

    .line 68
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 83
    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    .line 84
    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->connected:Z

    .line 85
    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 86
    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->services:Ljava/util/ArrayList;

    .line 87
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->successSetPin:I

    .line 88
    iput v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->trySetPinCount:I

    .line 89
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->releaseReadWrite()V

    .line 90
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    if-nez v0, :cond_7

    .line 94
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->address:Ljava/lang/String;

    .line 96
    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_6
.end method

.method public getCharacter(Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;
    .registers 6
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->chars:Ljava/util/List;

    if-eqz v2, :cond_b

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_b
    move-object v0, v1

    .line 106
    :goto_c
    return-object v0

    .line 102
    :cond_d
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->chars:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 103
    .local v0, "c":Landroid/bluetooth/BluetoothGattCharacteristic;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_c

    .end local v0    # "c":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_32
    move-object v0, v1

    .line 106
    goto :goto_c
.end method

.method public declared-synchronized getReadWriteRight()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 71
    monitor-enter p0

    :try_start_2
    iget-boolean v1, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->isInReadWrite:Z

    if-nez v1, :cond_b

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->isInReadWrite:Z
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_d

    .line 75
    :goto_9
    monitor-exit p0

    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_9

    .line 71
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseReadWrite()V
    .registers 2

    .prologue
    .line 79
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->isInReadWrite:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 80
    monitor-exit p0

    return-void

    .line 79
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method
