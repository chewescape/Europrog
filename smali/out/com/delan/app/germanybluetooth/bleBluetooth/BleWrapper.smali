.class public Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;
.super Ljava/lang/Object;
.source "BleWrapper.java"


# instance fields
.field private bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

.field private final mBleCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private final mDeviceFoundCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

.field private mScanCallback:Landroid/bluetooth/le/ScanCallback;

.field private mUiCallback:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

.field private scanFilters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/le/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private scanSetting:Landroid/bluetooth/le/ScanSettings;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/BleService;)V
    .registers 3
    .param p1, "bleService"    # Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mUiCallback:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    .line 40
    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .line 41
    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 297
    new-instance v0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$1;-><init>(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mDeviceFoundCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    .line 319
    new-instance v0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$2;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$2;-><init>(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mBleCallback:Landroid/bluetooth/BluetoothGattCallback;

    .line 45
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .line 46
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->initialize()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mUiCallback:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;Landroid/bluetooth/BluetoothGatt;)V
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->startServicesDiscovery(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;Landroid/bluetooth/BluetoothGatt;)V
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->getSupportedServices(Landroid/bluetooth/BluetoothGatt;)V

    return-void
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 3
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "x2"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->getCharacteristicValue(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    return-void
.end method

.method private getCharacteristicValue(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 10
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 246
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    .line 256
    :cond_8
    :goto_8
    return-void

    .line 248
    :cond_9
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v5

    .line 250
    .local v5, "rawValue":[B
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 251
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "timestamp":Ljava/lang/String;
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mUiCallback:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    if-eqz v0, :cond_8

    .line 253
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mUiCallback:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    .line 254
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v3

    move-object v1, p1

    move-object v4, p2

    .line 253
    invoke-interface/range {v0 .. v6}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;->uiNewValueForCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;[BLjava/lang/String;)V

    goto :goto_8
.end method

.method private getSupportedServices(Landroid/bluetooth/BluetoothGatt;)V
    .registers 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 217
    const/4 v0, 0x0

    .line 218
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    if-eqz p1, :cond_7

    .line 219
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getServices()Ljava/util/List;

    move-result-object v0

    .line 220
    :cond_7
    const-string v1, "getSupportedServices"

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 221
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mUiCallback:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    if-eqz v1, :cond_1b

    .line 222
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mUiCallback:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    :goto_18
    invoke-interface {v2, p1, v1, v0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;->uiAvailableServices(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V

    .line 224
    :cond_1b
    return-void

    .line 222
    :cond_1c
    const/4 v1, 0x0

    goto :goto_18
.end method

.method private initialize()V
    .registers 6

    .prologue
    .line 124
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v4, "bluetooth"

    .line 125
    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    .line 126
    .local v0, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 128
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_78

    .line 129
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v3

    iput-object v3, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->scanFilters:Ljava/util/ArrayList;

    .line 134
    new-instance v1, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    .line 135
    .local v1, "builder":Landroid/bluetooth/le/ScanFilter$Builder;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const v4, 0x7f060026

    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 136
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->scanFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const v4, 0x7f060029

    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 138
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->scanFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const v4, 0x7f060028

    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/bluetooth/le/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Landroid/bluetooth/le/ScanFilter$Builder;

    .line 140
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->scanFilters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v2, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v2}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    .line 146
    .local v2, "builder1":Landroid/bluetooth/le/ScanSettings$Builder;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    .line 149
    invoke-virtual {v2}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v3

    iput-object v3, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->scanSetting:Landroid/bluetooth/le/ScanSettings;

    .line 151
    .end local v1    # "builder":Landroid/bluetooth/le/ScanFilter$Builder;
    .end local v2    # "builder1":Landroid/bluetooth/le/ScanSettings$Builder;
    :cond_78
    return-void
.end method

.method private startServicesDiscovery(Landroid/bluetooth/BluetoothGatt;)V
    .registers 3
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    .line 204
    if-eqz p1, :cond_a

    .line 205
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 206
    const-string v0, "startServicesDiscovery"

    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 208
    :cond_a
    return-void
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;)Z
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "gatt"    # Landroid/bluetooth/BluetoothGatt;

    .prologue
    const/4 v0, 0x0

    .line 154
    if-nez p1, :cond_4

    .line 195
    :goto_3
    return v0

    .line 159
    :cond_4
    if-eqz p2, :cond_1d

    .line 160
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 163
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGatt;->connect()Z

    move-result v0

    goto :goto_3

    .line 166
    :cond_1d
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2d

    .line 167
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mBleCallback:Landroid/bluetooth/BluetoothGattCallback;

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;I)Landroid/bluetooth/BluetoothGatt;

    .line 195
    :goto_2b
    const/4 v0, 0x1

    goto :goto_3

    .line 169
    :cond_2d
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mBleCallback:Landroid/bluetooth/BluetoothGattCallback;

    invoke-virtual {p1, v1, v0, v2}, Landroid/bluetooth/BluetoothDevice;->connectGatt(Landroid/content/Context;ZLandroid/bluetooth/BluetoothGattCallback;)Landroid/bluetooth/BluetoothGatt;

    goto :goto_2b
.end method

.method public requestCharacteristicValue(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 231
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_6

    if-nez p1, :cond_d

    .line 232
    :cond_6
    const-string v0, "requestCharacteristicValue has null value"

    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    .line 233
    const/4 v0, 0x0

    .line 235
    :goto_c
    return v0

    :cond_d
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    goto :goto_c
.end method

.method public setNotificationForCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .registers 8
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "enabled"    # Z

    .prologue
    .line 274
    if-eqz p2, :cond_4

    if-nez p1, :cond_5

    .line 291
    :cond_4
    :goto_4
    return-void

    .line 277
    :cond_5
    invoke-virtual {p1, p2, p3}, Landroid/bluetooth/BluetoothGatt;->setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z

    move-result v1

    .line 279
    .local v1, "success":Z
    if-nez v1, :cond_10

    .line 280
    const-string v3, "Setting proper notification status for characteristic failed!"

    invoke-static {v3}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    .line 283
    :cond_10
    const-string v3, "00002902-0000-1000-8000-00805f9b34fb"

    .line 284
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 283
    invoke-virtual {p2, v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptor(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattDescriptor;

    move-result-object v0

    .line 285
    .local v0, "descriptor":Landroid/bluetooth/BluetoothGattDescriptor;
    if-eqz v0, :cond_4

    .line 286
    if-eqz p3, :cond_27

    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->ENABLE_NOTIFICATION_VALUE:[B

    .line 288
    .local v2, "val":[B
    :goto_20
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothGattDescriptor;->setValue([B)Z

    .line 289
    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothGatt;->writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z

    goto :goto_4

    .line 286
    .end local v2    # "val":[B
    :cond_27
    sget-object v2, Landroid/bluetooth/BluetoothGattDescriptor;->DISABLE_NOTIFICATION_VALUE:[B

    goto :goto_20
.end method

.method public setUiCallBack(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;)V
    .registers 2
    .param p1, "uiCallBack"    # Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mUiCallback:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    .line 51
    return-void
.end method

.method public startScanning()V
    .registers 3

    .prologue
    .line 59
    const-string v0, "startScanning"

    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mDeviceFoundCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    .line 104
    return-void
.end method

.method public stopScanning()V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mDeviceFoundCallback:Landroid/bluetooth/BluetoothAdapter$LeScanCallback;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    .line 116
    return-void
.end method

.method public writeDataToCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .registers 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 260
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_f

    .line 261
    :cond_8
    const-string v0, "writeDataToCharacteristic has null value"

    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/Object;)V

    .line 262
    const/4 v0, 0x0

    .line 268
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p1, p2}, Landroid/bluetooth/BluetoothGatt;->writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    move-result v0

    goto :goto_e
.end method
