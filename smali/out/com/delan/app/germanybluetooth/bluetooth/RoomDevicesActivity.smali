.class public Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;
.super Lcom/delan/app/germanybluetooth/base/BleActivity;
.source "RoomDevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$MyReceive;
    }
.end annotation


# instance fields
.field private arrowIV:Landroid/widget/ImageView;

.field private bluetoothIconIv:Landroid/widget/ImageView;

.field private isInFrontGround:Z

.field private mDeviceAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

.field private mDevicesLV:Landroid/widget/ListView;

.field private needToReadProgtimeFlags:Z

.field private needToReadTemperature:Z

.field private needToScanAndConnectAllBle:Z

.field private odofd:I

.field private receiver:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$MyReceive;

.field private seekArc:Lcom/delan/app/germanybluetooth/widget/SeekArc;

.field private setPinBtn:Landroid/widget/Button;

.field private settingsIV:Landroid/widget/ImageView;

.field private temperatureTv:Landroid/widget/TextView;

.field private temperatureUnit:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;-><init>()V

    .line 58
    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->needToScanAndConnectAllBle:Z

    .line 59
    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->needToReadTemperature:Z

    .line 60
    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->needToReadProgtimeFlags:Z

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mDeviceAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)V
    .registers 1
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->upDateUI()V

    return-void
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->setCometTemperature(Z)V

    return-void
.end method

.method private afterGetFirmwareVersionReadWriteCharacter(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V
    .registers 5
    .param p1, "deviceBean"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .prologue
    const/4 v2, 0x0

    .line 548
    iget-boolean v0, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->needToWriteTime:Z

    if-eqz v0, :cond_c

    .line 549
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee01-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, p1, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 552
    :cond_c
    iget-boolean v0, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->needToReadBattery:Z

    if-eqz v0, :cond_19

    .line 553
    iput-boolean v2, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->needToReadBattery:Z

    .line 554
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee2c-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, p1, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 556
    :cond_19
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->needToReadTemperature:Z

    if-eqz v0, :cond_26

    .line 557
    iput-boolean v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->needToReadTemperature:Z

    .line 558
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, p1, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 560
    :cond_26
    return-void
.end method

.method private connectToDevices()V
    .registers 7

    .prologue
    .line 424
    iget-boolean v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->isInFrontGround:Z

    if-nez v1, :cond_5

    .line 445
    :cond_4
    :goto_4
    return-void

    .line 426
    :cond_5
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getNeedToTryConnect()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 428
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_60

    .line 429
    :goto_1f
    iget v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_f

    .line 430
    iget v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    .line 431
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->showName:Ljava/lang/String;

    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    invoke-virtual {p0, v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->showReconnectToast(Ljava/lang/String;I)V

    .line 432
    const-string v2, "%d try connect to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 433
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v3, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 434
    const v2, 0x7f06003e

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1f

    .line 439
    :cond_60
    const v2, 0x7f060084

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/idelan/app/Util/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_f

    .line 443
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :cond_6b
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->upDateUI()V

    .line 444
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->dismissLoadingDialog()V

    goto :goto_4
.end method

.method private handleFoundDevice(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I

    .prologue
    .line 382
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-eqz v1, :cond_6

    if-nez p1, :cond_7

    .line 398
    :cond_6
    :goto_6
    return-void

    .line 384
    :cond_7
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 386
    .local v0, "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_6

    iget-object v1, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    if-nez v1, :cond_6

    .line 389
    iput-object p1, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    .line 391
    invoke-super {p0, p1, p2}, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiDeviceFound(Landroid/bluetooth/BluetoothDevice;I)V

    .line 393
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->hasFoundAllDevice()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 394
    const v1, 0x7f060040

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 395
    const-string v1, "stopScan"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 396
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->stopScanning(Z)V

    goto :goto_6
.end method

.method private setCometTemperature(Z)V
    .registers 7
    .param p1, "setSeekArc"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 230
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    .line 231
    .local v0, "temperature":Lcom/delan/app/germanybluetooth/bean/chars/Temperature;
    iget v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->desiredTemp:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_28

    .line 232
    if-eqz p1, :cond_16

    .line 233
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->seekArc:Lcom/delan/app/germanybluetooth/widget/SeekArc;

    invoke-virtual {v1, v4}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->setProgress(I)V

    .line 234
    :cond_16
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->temperatureTv:Landroid/widget/TextView;

    const v2, 0x7f060065

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->temperatureUnit:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    :cond_27
    :goto_27
    return-void

    .line 236
    :cond_28
    iget v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->desiredTemp:I

    const/16 v2, 0x3d

    if-ne v1, v2, :cond_4d

    .line 237
    if-eqz p1, :cond_3b

    .line 238
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->seekArc:Lcom/delan/app/germanybluetooth/widget/SeekArc;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->seekArc:Lcom/delan/app/germanybluetooth/widget/SeekArc;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->getMax()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->setProgress(I)V

    .line 239
    :cond_3b
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->temperatureTv:Landroid/widget/TextView;

    const v2, 0x7f060067

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->temperatureUnit:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27

    .line 241
    :cond_4d
    iget v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->desiredTemp:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_27

    iget v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->desiredTemp:I

    const/16 v2, 0x38

    if-gt v1, v2, :cond_27

    .line 242
    if-eqz p1, :cond_66

    .line 243
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->seekArc:Lcom/delan/app/germanybluetooth/widget/SeekArc;

    iget v2, v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->desiredTemp:I

    add-int/lit8 v2, v2, -0x10

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->setProgress(I)V

    .line 244
    :cond_66
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->temperatureTv:Landroid/widget/TextView;

    iget v2, v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->desiredTemp:I

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->TempNumToSheShiDu(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->temperatureUnit:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_27
.end method

.method private upDateUI()V
    .registers 6

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 270
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getNeedToTryConnect()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_54

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_54

    .line 271
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bluetoothIconIv:Landroid/widget/ImageView;

    const v2, 0x7f030002

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 276
    :goto_22
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 277
    .local v0, "availableCometDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5d

    .line 278
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->seekArc:Lcom/delan/app/germanybluetooth/widget/SeekArc;

    invoke-virtual {v1, v3}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->setVisibility(I)V

    .line 279
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->settingsIV:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    :goto_40
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->arrowIV:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_68

    .line 286
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mDeviceAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->setList(Ljava/util/ArrayList;)V

    .line 289
    :goto_53
    return-void

    .line 273
    .end local v0    # "availableCometDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    :cond_54
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bluetoothIconIv:Landroid/widget/ImageView;

    const v2, 0x7f030013

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_22

    .line 281
    .restart local v0    # "availableCometDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    :cond_5d
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->seekArc:Lcom/delan/app/germanybluetooth/widget/SeekArc;

    invoke-virtual {v1, v4}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->setVisibility(I)V

    .line 282
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->settingsIV:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_40

    .line 288
    :cond_68
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mDeviceAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getProgtimeBlueList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->setList(Ljava/util/ArrayList;)V

    goto :goto_53
.end method


# virtual methods
.method protected afterBleAndLocationEnabled()V
    .registers 5

    .prologue
    .line 329
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->afterBleAndLocationEnabled()V

    .line 330
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->needToScanAndConnectAllBle:Z

    if-eqz v0, :cond_19

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->needToScanAndConnectAllBle:Z

    .line 332
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getText()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v3, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->getBleDevicesInTheRoomAndStartScan(Ljava/lang/String;Landroid/os/Handler;I)V

    .line 334
    :cond_19
    return-void
.end method

.method public doClickRightAction()V
    .registers 4

    .prologue
    .line 298
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->doClickRightAction()V

    .line 299
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->weatherDeviceInRoomReachMax()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 300
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->showUpperLimitMsg()V

    .line 304
    :goto_c
    return-void

    .line 303
    :cond_d
    const-class v0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getText()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->gotoActivityForResult(Landroid/content/Context;Ljava/lang/Class;Ljava/io/Serializable;I)V

    goto :goto_c
.end method

.method protected fillView()V
    .registers 3

    .prologue
    .line 116
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->fillView()V

    .line 117
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->setActionBarLeft(I)V

    .line 118
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->setActionBarRight(I)V

    .line 119
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->settingsIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->arrowIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-direct {v0, p0, v1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;-><init>(Landroid/content/Context;Lcom/delan/app/germanybluetooth/bean/RoomBean;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mDeviceAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    .line 123
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mDevicesLV:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mDeviceAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mDevicesLV:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->setPinBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mDeviceAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->setOnRightMenuListener(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$onRightMenuListener;)V

    .line 177
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->seekArc:Lcom/delan/app/germanybluetooth/widget/SeekArc;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$2;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$2;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->setOnSeekArcChangeListener(Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;)V

    .line 211
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mDeviceAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$3;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$3;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->setWidgetClickListener(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$WidgetClickListener;)V

    .line 224
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 337
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_74

    .line 371
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->handleMessage(Landroid/os/Message;)V

    .line 374
    :cond_9
    :goto_9
    return-void

    .line 339
    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-eqz v0, :cond_9

    .line 340
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 341
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, p0, v0}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->updateDeviceListFromDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 342
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getNeedToTryConnect()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 343
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->startScanning()V

    goto :goto_9

    .line 349
    :sswitch_32
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->connectToDevices()V

    goto :goto_9

    .line 352
    :sswitch_36
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->upDateUI()V

    goto :goto_9

    .line 355
    :sswitch_3a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_8a

    :cond_46
    move v0, v1

    :goto_47
    packed-switch v0, :pswitch_data_94

    goto :goto_9

    .line 357
    :pswitch_4b
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->upDateUI()V

    .line 358
    invoke-direct {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->setCometTemperature(Z)V

    goto :goto_9

    .line 355
    :sswitch_52
    const-string v3, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    const/4 v0, 0x0

    goto :goto_47

    :sswitch_5c
    const-string v3, "47e9ee2c-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    move v0, v2

    goto :goto_47

    .line 361
    :pswitch_66
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->upDateUI()V

    .line 362
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mDeviceAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->notifyDataSetChanged()V

    goto :goto_9

    .line 368
    :sswitch_6f
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->onScanningStop()V

    goto :goto_9

    .line 337
    nop

    :sswitch_data_74
    .sparse-switch
        0x4e -> :sswitch_6f
        0x68 -> :sswitch_a
        0x69 -> :sswitch_36
        0x6a -> :sswitch_32
        0x6b -> :sswitch_3a
    .end sparse-switch

    .line 355
    :sswitch_data_8a
    .sparse-switch
        0xefffe08 -> :sswitch_52
        0x384fe289 -> :sswitch_5c
    .end sparse-switch

    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_4b
        :pswitch_66
    .end packed-switch
.end method

.method protected initView()V
    .registers 3

    .prologue
    .line 82
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->initView()V

    .line 83
    const v1, 0x7f040043

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->setView(I)V

    .line 84
    const v1, 0x7f0d0114

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bluetoothIconIv:Landroid/widget/ImageView;

    .line 85
    const v1, 0x7f0d0115

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->settingsIV:Landroid/widget/ImageView;

    .line 86
    const v1, 0x7f0d0116

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/widget/SeekArc;

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->seekArc:Lcom/delan/app/germanybluetooth/widget/SeekArc;

    .line 87
    const v1, 0x7f0d0117

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->temperatureTv:Landroid/widget/TextView;

    .line 88
    const v1, 0x7f0d0118

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->temperatureUnit:Landroid/widget/TextView;

    .line 89
    const v1, 0x7f0d0119

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->arrowIV:Landroid/widget/ImageView;

    .line 90
    const v1, 0x7f0d011b

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->setPinBtn:Landroid/widget/Button;

    .line 91
    const v1, 0x7f0d011a

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mDevicesLV:Landroid/widget/ListView;

    .line 96
    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$MyReceive;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$MyReceive;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)V

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->receiver:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$MyReceive;

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "finish"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->receiver:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$MyReceive;

    invoke-virtual {p0, v1, v0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    return-void
.end method

.method protected loadData()V
    .registers 4

    .prologue
    .line 104
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->loadData()V

    .line 105
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXAR_DATA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "roomName":Ljava/lang/String;
    sget-object v1, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    new-instance v2, Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-direct {v2, p0, v0}, Lcom/delan/app/germanybluetooth/bean/RoomBean;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iput-object v2, v1, Lcom/delan/app/germanybluetooth/MyApplication;->mCurrentRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    .line 107
    sget-object v1, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/MyApplication;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .line 108
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    if-nez v1, :cond_26

    .line 109
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->finish()V

    .line 112
    :goto_25
    return-void

    .line 111
    :cond_26
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->setCurrentRoom(Lcom/delan/app/germanybluetooth/bean/RoomBean;)V

    goto :goto_25
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 564
    invoke-super {p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 565
    const/4 v1, -0x1

    if-eq p2, v1, :cond_7

    .line 574
    :cond_6
    :goto_6
    return-void

    .line 567
    :cond_7
    packed-switch p1, :pswitch_data_28

    goto :goto_6

    .line 569
    :pswitch_b
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 570
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 571
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1, p0, v0}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->addNewAddedDevices(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_6

    .line 567
    :pswitch_data_28
    .packed-switch 0x67
        :pswitch_b
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 308
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onClick(Landroid/view/View;)V

    .line 309
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_40

    .line 325
    :goto_a
    return-void

    .line 311
    :sswitch_b
    const-class v0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-virtual {p0, p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->gotoActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_a

    .line 314
    :sswitch_11
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->setPinDialog(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    goto :goto_a

    .line 317
    :sswitch_16
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-nez v0, :cond_32

    const/4 v0, 0x1

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 318
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 319
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mDeviceAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->setList(Ljava/util/ArrayList;)V

    goto :goto_a

    .line 317
    :cond_32
    const/4 v0, 0x0

    goto :goto_1d

    .line 321
    :cond_34
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mDeviceAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getProgtimeBlueList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->setList(Ljava/util/ArrayList;)V

    goto :goto_a

    .line 309
    :sswitch_data_40
    .sparse-switch
        0x7f0d0115 -> :sswitch_b
        0x7f0d0119 -> :sswitch_16
        0x7f0d011b -> :sswitch_11
    .end sparse-switch
.end method

.method protected onDestroy()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 600
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->receiver:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$MyReceive;

    invoke-virtual {p0, v3}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 601
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-eqz v3, :cond_3d

    .line 602
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3d

    .line 603
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 604
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_35

    iget-object v3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v3, :cond_35

    .line 605
    iget-object v3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->disconnectGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 606
    iput-object v6, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 608
    const-wide/16 v4, 0x12c

    :try_start_32
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_35
    .catch Ljava/lang/InterruptedException; {:try_start_32 .. :try_end_35} :catch_38

    .line 602
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 609
    :catch_38
    move-exception v1

    .line 610
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_35

    .line 614
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "i":I
    :cond_3d
    sget-object v3, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    iput-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iput-object v6, v3, Lcom/delan/app/germanybluetooth/MyApplication;->mCurrentRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    .line 615
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    if-eqz v3, :cond_4c

    .line 616
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-virtual {v3, v6}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->setCurrentRoom(Lcom/delan/app/germanybluetooth/bean/RoomBean;)V

    .line 617
    :cond_4c
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onDestroy()V

    .line 618
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 584
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onPause()V

    .line 585
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->isInFrontGround:Z

    .line 586
    return-void
.end method

.method protected onRestart()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 251
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    invoke-virtual {v1, p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->setUiCallBackAndUiHandler(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;Landroid/os/Handler;)V

    .line 253
    iput-boolean v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->needToReadTemperature:Z

    .line 254
    iput-boolean v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->needToReadProgtimeFlags:Z

    .line 255
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->isBluetoothFunctionOpen()Z

    move-result v1

    if-nez v1, :cond_20

    .line 257
    iput-boolean v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->needToScanAndConnectAllBle:Z

    .line 258
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->init()V

    .line 265
    :cond_19
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onRestart()V

    .line 266
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->upDateUI()V

    .line 267
    return-void

    .line 260
    :cond_20
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->connectToDevices()V

    .line 261
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 262
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iput-boolean v3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->needToReadBattery:Z

    goto :goto_2d
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 578
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onResume()V

    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->isInFrontGround:Z

    .line 580
    return-void
.end method

.method protected onScanningStop()V
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->hasDeviceFound()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 414
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->connectToDevices()V

    .line 416
    :cond_b
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->upDateUI()V

    .line 417
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 590
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onStop()V

    .line 591
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mDeviceAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->closeMenu()V

    .line 592
    return-void
.end method

.method public requestCoarseLocationFailed()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionDenied;
        value = 0x53
    .end annotation

    .prologue
    .line 652
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationFailed()V

    .line 653
    return-void
.end method

.method public requestCoarseLocationSuccess()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionGrant;
        value = 0x53
    .end annotation

    .prologue
    .line 647
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationSuccess()V

    .line 648
    return-void
.end method

.method public uiDeviceFound(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I

    .prologue
    .line 449
    if-eqz p1, :cond_5

    .line 450
    invoke-direct {p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->handleFoundDevice(Landroid/bluetooth/BluetoothDevice;I)V

    .line 452
    :cond_5
    return-void
.end method

.method public uiDeviceFound(Ljava/util/List;)V
    .registers 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 456
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    if-eqz p1, :cond_24

    .line 457
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    .line 458
    .local v0, "result":Landroid/bluetooth/le/ScanResult;
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 459
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->handleFoundDevice(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_6

    .line 462
    .end local v0    # "result":Landroid/bluetooth/le/ScanResult;
    :cond_24
    return-void
.end method

.method public uiNewValueForCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;[BLjava/lang/String;)V
    .registers 13
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p4, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p5, "rawValue"    # [B
    .param p6, "timestamp"    # Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 466
    invoke-super/range {p0 .. p6}, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiNewValueForCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;[BLjava/lang/String;)V

    .line 467
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 468
    .local v0, "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz p4, :cond_12

    if-nez v0, :cond_13

    .line 499
    :cond_12
    :goto_12
    return-void

    .line 470
    :cond_13
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "uuid":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_9e

    :cond_26
    move v2, v3

    :goto_27
    packed-switch v2, :pswitch_data_ac

    goto :goto_12

    .line 473
    :pswitch_2b
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "00002a26-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v2, v0, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 474
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->updateRecord(Ljava/lang/String;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    goto :goto_12

    .line 471
    :sswitch_3e
    const-string v2, "00002a28-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x0

    goto :goto_27

    :sswitch_48
    const-string v2, "00002a26-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :sswitch_52
    const-string v2, "47e9ee2c-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v2, 0x2

    goto :goto_27

    .line 477
    :pswitch_5c
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->updateRecord(Ljava/lang/String;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    .line 478
    const v2, 0x7f0600a3

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->coblVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_83

    .line 479
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    new-instance v3, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$4;

    invoke-direct {v3, p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$4;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v2, v3, v4, v5}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_12

    .line 486
    :cond_83
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ee30-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v0, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto :goto_12

    .line 489
    :pswitch_8b
    iget v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->battery:I

    if-ne v2, v3, :cond_12

    .line 490
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    new-instance v3, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$5;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_12

    .line 471
    nop

    :sswitch_data_9e
    .sparse-switch
        -0x5dd824f5 -> :sswitch_3e
        0x384fe289 -> :sswitch_52
        0x4f881209 -> :sswitch_48
    .end sparse-switch

    :pswitch_data_ac
    .packed-switch 0x0
        :pswitch_2b
        :pswitch_5c
        :pswitch_8b
    .end packed-switch
.end method

.method public uiWriteComplete(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 11
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    const/16 v6, 0x69

    const/4 v4, 0x0

    .line 503
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-eqz v3, :cond_d

    if-nez p2, :cond_e

    .line 545
    :cond_d
    :goto_d
    return-void

    .line 505
    :cond_e
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 506
    .local v2, "uuid":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 507
    .local v0, "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    if-eqz v0, :cond_d

    .line 509
    invoke-super {p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiWriteComplete(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 511
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_ba

    :cond_3b
    :goto_3b
    packed-switch v3, :pswitch_data_cc

    .line 534
    :cond_3e
    :goto_3e
    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bleBluetooth/GermanyUuids;->getDeviceTypeFromChar(Ljava/lang/String;)I

    move-result v1

    .line 535
    .local v1, "deviceType":I
    packed-switch v1, :pswitch_data_d8

    goto :goto_d

    .line 537
    :pswitch_46
    iget-boolean v3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->needToWriteTime:Z

    if-eqz v3, :cond_51

    .line 538
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v5, "47e9ef51-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v0, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 539
    :cond_51
    iget-boolean v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->needToReadProgtimeFlags:Z

    if-eqz v3, :cond_d

    .line 540
    iput-boolean v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->needToReadProgtimeFlags:Z

    .line 541
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v4, "47e9ef59-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Ljava/lang/String;)V

    goto :goto_d

    .line 511
    .end local v1    # "deviceType":I
    :sswitch_5f
    const-string v5, "47e9ef62-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    move v3, v4

    goto :goto_3b

    :sswitch_69
    const-string v5, "47e9ee30-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v3, 0x1

    goto :goto_3b

    :sswitch_73
    const-string v5, "47e9ee01-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v3, 0x2

    goto :goto_3b

    :sswitch_7d
    const-string v5, "47e9ef51-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    const/4 v3, 0x3

    goto :goto_3b

    .line 513
    :pswitch_87
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    invoke-virtual {v3, v6}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3e

    .line 516
    :pswitch_91
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    invoke-virtual {v3, v6}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 517
    if-nez p3, :cond_3e

    .line 518
    invoke-direct {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->afterGetFirmwareVersionReadWriteCharacter(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    goto :goto_3e

    .line 521
    :pswitch_a0
    if-nez p3, :cond_a5

    .line 522
    iput-boolean v4, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->needToWriteTime:Z

    goto :goto_3e

    .line 524
    :cond_a5
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v5, "47e9ee01-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v0, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto :goto_3e

    .line 527
    :pswitch_ad
    if-nez p3, :cond_3e

    .line 528
    iput-boolean v4, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->needToWriteTime:Z

    .line 529
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v5, "47e9ef61-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v0, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto :goto_3e

    .line 511
    nop

    :sswitch_data_ba
    .sparse-switch
        -0x1edf78b -> :sswitch_69
        0x255bea19 -> :sswitch_73
        0x3da40c75 -> :sswitch_7d
        0x67a09c95 -> :sswitch_5f
    .end sparse-switch

    :pswitch_data_cc
    .packed-switch 0x0
        :pswitch_87
        :pswitch_91
        :pswitch_a0
        :pswitch_ad
    .end packed-switch

    .line 535
    :pswitch_data_d8
    .packed-switch 0x2
        :pswitch_46
    .end packed-switch
.end method
