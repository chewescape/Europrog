.class public Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;
.super Lcom/delan/app/germanybluetooth/base/BleActivity;
.source "VersionListActivity.java"


# static fields
.field private static final ACK:B = 0x1t

.field private static final DATAOK:B = -0x45t

.field private static final NACK:B = 0x0t

.field private static final STARTOK:B = -0x56t


# instance fields
.field private adapter:Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;

.field private backgroundRL:Landroid/widget/RelativeLayout;

.field private backgroundTV:Landroid/widget/TextView;

.field private cmdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private coblFile:Ljava/io/File;

.field private coblFileName:Ljava/lang/String;

.field private hasDoDownLoadWork:Z

.field private index:I

.field private iv:Landroid/widget/ImageView;

.field private mCRC:Lutils/CRC;

.field private rfblFile:Ljava/io/File;

.field private rfblFileName:Ljava/lang/String;

.field public selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

.field private updateLV:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->hasDoDownLoadWork:Z

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    .prologue
    .line 52
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->index:I

    return v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->backgroundRL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->iv:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->backgroundTV:Landroid/widget/TextView;

    return-object v0
.end method

.method private connectToDevices()V
    .registers 5

    .prologue
    .line 239
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget v0, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_37

    .line 240
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget v1, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    .line 241
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->showName:Ljava/lang/String;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget v1, v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    invoke-virtual {p0, v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->showReconnectToast(Ljava/lang/String;I)V

    .line 242
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    if-nez v0, :cond_38

    .line 243
    const v0, 0x7f06003e

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->connectToDevices()V

    .line 250
    :cond_37
    :goto_37
    return-void

    .line 246
    :cond_38
    const-string v0, "try connect to %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->dismissLoadingDialog()V

    goto :goto_37
.end method

.method private doDownLoadWork()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 208
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v5, "/updateFiles/"

    invoke-virtual {v4, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->ifParentDirNotExistCreate(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 209
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 210
    .local v1, "path":Ljava/lang/String;
    new-instance v2, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;

    const-string v4, "https://www.eurotronic.org/SUOTA/COBL.zip"

    invoke-direct {v2, v4, v1, p0}, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 211
    .local v2, "taskCobl":Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;
    new-instance v3, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;

    const-string v4, "https://www.eurotronic.org/SUOTA/RFBL.zip"

    invoke-direct {v3, v4, v1, p0}, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 212
    .local v3, "taskRfbl":Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;
    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v2, v4}, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 213
    new-array v4, v6, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/downloader/DownLoaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 214
    return-void
.end method

.method private getCometBlueList(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DataBaseBean;",
            ">;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, "allDevicesMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;>;"
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->coblFile:Ljava/io/File;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->rfblFile:Ljava/io/File;

    if-nez v5, :cond_a

    .line 530
    :cond_8
    const/4 v3, 0x0

    .line 549
    :cond_9
    return-object v3

    .line 531
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 533
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 534
    .local v4, "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2d
    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;

    .line 535
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DataBaseBean;
    iget-object v7, v0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->originalName:Ljava/lang/String;

    const v8, 0x7f060026

    invoke-virtual {p0, v8}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2d

    .line 536
    iget-object v7, v0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->rfblVersion:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 537
    iget-object v7, v0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->rfblVersion:Ljava/lang/String;

    const-string v8, "RFBL"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2d

    iget-object v7, v0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->rfblVersion:Ljava/lang/String;

    const-string v8, "RFBL0012"

    invoke-virtual {v7, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_2d

    .line 538
    iget-object v7, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->rfblFileName:Ljava/lang/String;

    iget-object v8, v0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->rfblVersion:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_78

    iget-object v7, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->coblFileName:Ljava/lang/String;

    iget-object v8, v0, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->coblVersion:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2d

    .line 539
    :cond_78
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 544
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DataBaseBean;
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;>;"
    .end local v4    # "value":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;"
    :cond_7c
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v5, p0, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->updateDeviceListFromDB(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 545
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .local v3, "list1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v5}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getNeedToTryConnect()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_90
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 547
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_90
.end method

.method private modRTU_CRC([BI)S
    .registers 4
    .param p1, "buf"    # [B
    .param p2, "len"    # I

    .prologue
    .line 588
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->mCRC:Lutils/CRC;

    if-nez v0, :cond_b

    .line 589
    new-instance v0, Lutils/CRC;

    invoke-direct {v0}, Lutils/CRC;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->mCRC:Lutils/CRC;

    .line 590
    :cond_b
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->mCRC:Lutils/CRC;

    invoke-virtual {v0, p1, p2}, Lutils/CRC;->crcCompute([BI)S

    move-result v0

    return v0
.end method

.method private receivedNotification(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 8
    .param p1, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 457
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    .line 458
    .local v0, "value":[B
    if-eqz v0, :cond_c

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_d

    .line 493
    :cond_c
    :goto_c
    return-void

    .line 460
    :cond_d
    aget-byte v1, v0, v3

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    aget-byte v2, v0, v4

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->index:I

    .line 461
    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 462
    const/4 v1, 0x2

    aget-byte v1, v0, v1

    sparse-switch v1, :sswitch_data_9e

    goto :goto_c

    .line 464
    :sswitch_28
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 465
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v3, "47e9ee40-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto :goto_c

    .line 468
    :sswitch_3d
    iget v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->index:I

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_63

    .line 469
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->index:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 470
    iget v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->index:I

    invoke-direct {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->updateProgress(I)V

    .line 471
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v3, "47e9ee40-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto :goto_c

    .line 473
    :cond_63
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->showUpdateSuccess()V

    goto :goto_c

    .line 476
    :sswitch_67
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-virtual {p1, v1}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 477
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v3, "47e9ee40-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto :goto_c

    .line 480
    :sswitch_7c
    iget v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->index:I

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_99

    .line 481
    iget v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->index:I

    invoke-direct {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->updateProgress(I)V

    .line 482
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    new-instance v2, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$4;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_c

    .line 490
    :cond_99
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->showUpdateSuccess()V

    goto/16 :goto_c

    .line 462
    :sswitch_data_9e
    .sparse-switch
        -0x56 -> :sswitch_28
        -0x45 -> :sswitch_7c
        0x0 -> :sswitch_67
        0x1 -> :sswitch_3d
    .end sparse-switch
.end method

.method private showUpdateSuccess()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    .line 509
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 510
    .local v0, "startCmd":Ljava/lang/String;
    const-string v1, "COBL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 511
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->backgroundRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 512
    const v1, 0x7f060054

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 513
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->coblFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->coblVersion:Ljava/lang/String;

    .line 514
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->updateRecord()V

    .line 515
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->remove(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    .line 516
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->removeItem(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    .line 517
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->notifyDataSetChanged()V

    .line 518
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->disconnectGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 525
    :goto_4a
    return-void

    .line 520
    :cond_4b
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->backgroundRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 521
    const v1, 0x7f060075

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->rfblFileName:Ljava/lang/String;

    iput-object v2, v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->rfblVersion:Ljava/lang/String;

    .line 523
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->updateRecord()V

    goto :goto_4a
.end method

.method private startUpdate()V
    .registers 3

    .prologue
    .line 253
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->rfblFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->rfblVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 254
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->rfblFile:Ljava/io/File;

    const-string v1, "RF---SUOTA"

    invoke-direct {p0, v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->startUpdate(Ljava/io/File;Ljava/lang/String;)V

    .line 257
    :cond_13
    :goto_13
    return-void

    .line 255
    :cond_14
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->coblFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->coblVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 256
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->coblFile:Ljava/io/File;

    const-string v1, "EUROTRONIC"

    invoke-direct {p0, v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->startUpdate(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_13
.end method

.method private startUpdate(Ljava/io/File;Ljava/lang/String;)V
    .registers 24
    .param p1, "file"    # Ljava/io/File;
    .param p2, "startOtaCmd"    # Ljava/lang/String;

    .prologue
    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_11

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 262
    :cond_11
    const/4 v15, 0x0

    .line 264
    .local v15, "stream":Ljava/io/FileInputStream;
    :try_start_12
    new-instance v16, Ljava/io/FileInputStream;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1b} :catch_109

    .line 265
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .local v16, "stream":Ljava/io/FileInputStream;
    :try_start_1b
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->length()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v11, v0

    .line 266
    .local v11, "fileLen":I
    new-instance v18, Ljava/util/ArrayList;

    shr-int/lit8 v19, v11, 0x4

    add-int/lit8 v19, v19, 0x1

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    .line 267
    const/16 v18, 0x14

    move/from16 v0, v18

    new-array v7, v0, [B

    .line 268
    .local v7, "cmd":[B
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 269
    .local v5, "bytes":[B
    const/16 v18, 0x0

    const/16 v19, 0x0

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v5, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    array-length v0, v5

    move/from16 v18, v0

    shr-int/lit8 v19, v11, 0x8

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v7, v18

    .line 271
    array-length v0, v5

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    int-to-byte v0, v11

    move/from16 v19, v0

    aput-byte v19, v7, v18

    .line 272
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    .line 273
    .local v14, "s":Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, "."

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 274
    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 275
    const/16 v18, 0x0

    array-length v0, v5

    move/from16 v19, v0

    rsub-int/lit8 v19, v19, 0x14

    array-length v0, v5

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v5, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    const/16 v18, 0x1000

    move/from16 v0, v18

    new-array v5, v0, [B

    .line 281
    const/4 v12, 0x0

    .line 282
    .local v12, "index":I
    :goto_a0
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .local v4, "byteRead":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v4, v0, :cond_115

    .line 283
    const/16 v17, 0x0

    .local v17, "usedBytes":I
    move v13, v12

    .line 284
    .end local v12    # "index":I
    .local v13, "index":I
    :goto_af
    add-int/lit8 v18, v17, 0x10

    move/from16 v0, v18

    if-gt v0, v4, :cond_107

    .line 285
    const/16 v18, 0x14

    move/from16 v0, v18

    new-array v7, v0, [B

    .line 286
    const/16 v18, 0x0

    shr-int/lit8 v19, v13, 0x8

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v7, v18

    .line 287
    const/16 v18, 0x1

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "index":I
    .restart local v12    # "index":I
    int-to-byte v0, v13

    move/from16 v19, v0

    aput-byte v19, v7, v18

    .line 288
    const/16 v18, 0x2

    const/16 v19, 0x10

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v5, v0, v7, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 289
    add-int/lit8 v17, v17, 0x10

    .line 290
    const/16 v18, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->modRTU_CRC([BI)S

    move-result v8

    .line 291
    .local v8, "crc":I
    const/16 v18, 0x12

    shr-int/lit8 v19, v8, 0x8

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v7, v18

    .line 292
    const/16 v18, 0x13

    int-to-byte v0, v8

    move/from16 v19, v0

    aput-byte v19, v7, v18

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_105
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_105} :catch_18e

    move v13, v12

    .line 294
    .end local v12    # "index":I
    .restart local v13    # "index":I
    goto :goto_af

    .end local v8    # "crc":I
    :cond_107
    move v12, v13

    .line 295
    .end local v13    # "index":I
    .restart local v12    # "index":I
    goto :goto_a0

    .line 296
    .end local v4    # "byteRead":I
    .end local v5    # "bytes":[B
    .end local v7    # "cmd":[B
    .end local v11    # "fileLen":I
    .end local v12    # "index":I
    .end local v14    # "s":Ljava/lang/String;
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .end local v17    # "usedBytes":I
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    :catch_109
    move-exception v9

    .line 298
    .local v9, "e":Ljava/io/IOException;
    :goto_10a
    if-eqz v15, :cond_10f

    .line 299
    :try_start_10c
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_10f
    .catch Ljava/io/IOException; {:try_start_10c .. :try_end_10f} :catch_110

    .line 314
    .end local v9    # "e":Ljava/io/IOException;
    :cond_10f
    :goto_10f
    return-void

    .line 300
    .restart local v9    # "e":Ljava/io/IOException;
    :catch_110
    move-exception v10

    .line 301
    .local v10, "e1":Ljava/io/IOException;
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10f

    .line 305
    .end local v9    # "e":Ljava/io/IOException;
    .end local v10    # "e1":Ljava/io/IOException;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v4    # "byteRead":I
    .restart local v5    # "bytes":[B
    .restart local v7    # "cmd":[B
    .restart local v11    # "fileLen":I
    .restart local v12    # "index":I
    .restart local v14    # "s":Ljava/lang/String;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :cond_115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_18b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_18b

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-object/from16 v18, v0

    const-string v19, "47e9ee40-47e9-11e4-8939-164230d1df67"

    invoke-virtual/range {v18 .. v19}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getCharacter(Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v6

    .line 307
    .local v6, "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v6, :cond_13a

    move-object/from16 v15, v16

    .line 308
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto :goto_10f

    .line 309
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :cond_13a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->setValue([B)Z

    .line 310
    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v19 .. v19}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->cmdList:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-object/from16 v19, v0

    const-string v20, "47e9ee40-47e9-11e4-8939-164230d1df67"

    invoke-virtual/range {v18 .. v20}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .end local v6    # "ch":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_18b
    move-object/from16 v15, v16

    .line 314
    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto :goto_10f

    .line 296
    .end local v4    # "byteRead":I
    .end local v5    # "bytes":[B
    .end local v7    # "cmd":[B
    .end local v11    # "fileLen":I
    .end local v12    # "index":I
    .end local v14    # "s":Ljava/lang/String;
    .end local v15    # "stream":Ljava/io/FileInputStream;
    .restart local v16    # "stream":Ljava/io/FileInputStream;
    :catch_18e
    move-exception v9

    move-object/from16 v15, v16

    .end local v16    # "stream":Ljava/io/FileInputStream;
    .restart local v15    # "stream":Ljava/io/FileInputStream;
    goto/16 :goto_10a
.end method

.method private updateProgress(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 497
    new-instance v0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$5;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;I)V

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 506
    return-void
.end method


# virtual methods
.method public doZipExtractorWork(Ljava/lang/String;)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "/updateFiles/"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->ifParentDirNotExistCreate(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "path":Ljava/lang/String;
    new-instance v1, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v0, p0, v2}, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 201
    .local v1, "task":Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/downloader/ZipExtractorTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 202
    return-void
.end method

.method public downloadFinished(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 11
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Long;

    .prologue
    .line 148
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_d

    .line 149
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->finish()V

    .line 150
    :cond_d
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v5, "/updateFiles/"

    invoke-virtual {v4, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->ifParentDirNotExistCreate(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 151
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "files":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 153
    .local v3, "postStr":Ljava/lang/String;
    const-string v4, "COBL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_58

    .line 154
    const-string v3, ".DTA"

    .line 157
    :cond_24
    :goto_24
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    array-length v4, v1

    if-ge v2, v4, :cond_63

    .line 158
    aget-object v4, v1, v2

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 159
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 157
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 155
    .end local v2    # "i":I
    :cond_58
    const-string v4, "RFBL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 156
    const-string v3, ".img"

    goto :goto_24

    .line 161
    .restart local v2    # "i":I
    :cond_63
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->doZipExtractorWork(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method protected fillView()V
    .registers 3

    .prologue
    .line 97
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->fillView()V

    .line 98
    const v0, 0x7f06009c

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 99
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->setActionBarLeft(I)V

    .line 100
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->baseView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 101
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 423
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_60

    .line 451
    :pswitch_5
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->handleMessage(Landroid/os/Message;)V

    .line 454
    :cond_8
    :goto_8
    return-void

    .line 425
    :pswitch_9
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/HashMap;

    if-eqz v1, :cond_8

    .line 426
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/HashMap;

    move-object v0, v1

    check-cast v0, Ljava/util/HashMap;

    .line 427
    .local v0, "allDevices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;>;"
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;

    invoke-direct {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->getCometBlueList(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->setList(Ljava/util/ArrayList;)V

    goto :goto_8

    .line 431
    .end local v0    # "allDevices":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;>;"
    :pswitch_20
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->stopScanning(Z)V

    .line 432
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->connectToDevices()V

    goto :goto_8

    .line 435
    :pswitch_2a
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->connectToDevices()V

    goto :goto_8

    .line 438
    :pswitch_2e
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->getBleWrapper()Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v4, "47e9ee40-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getCharacter(Ljava/lang/String;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->setNotificationForCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V

    .line 439
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v2, 0x77

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_8

    .line 442
    :pswitch_4e
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->receivedNotification(Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_8

    .line 445
    :pswitch_56
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->startUpdate()V

    goto :goto_8

    .line 448
    :pswitch_5a
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->notifyDataSetChanged()V

    goto :goto_8

    .line 423
    :pswitch_data_60
    .packed-switch 0x69
        :pswitch_5a
        :pswitch_2a
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_20
        :pswitch_2e
        :pswitch_4e
        :pswitch_56
    .end packed-switch
.end method

.method protected initView()V
    .registers 3

    .prologue
    .line 73
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->initView()V

    .line 74
    const v0, 0x7f04004a

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->setView(I)V

    .line 75
    const v0, 0x7f0d0126

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->updateLV:Landroid/widget/ListView;

    .line 76
    const v0, 0x7f0d0128

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->iv:Landroid/widget/ImageView;

    .line 77
    const v0, 0x7f0d0129

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->backgroundTV:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0d0127

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->backgroundRL:Landroid/widget/RelativeLayout;

    .line 79
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;

    .line 80
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->updateLV:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->updateLV:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    return-void
.end method

.method protected loadData()V
    .registers 4

    .prologue
    .line 86
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->loadData()V

    .line 87
    sget-object v0, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    new-instance v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/MyApplication;->mCurrentRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    .line 88
    sget-object v0, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/MyApplication;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .line 89
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    if-nez v0, :cond_1d

    .line 90
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->finish()V

    .line 93
    :goto_1c
    return-void

    .line 92
    :cond_1d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->setCurrentRoom(Lcom/delan/app/germanybluetooth/bean/RoomBean;)V

    goto :goto_1c
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 557
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-eqz v2, :cond_2e

    .line 558
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 559
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 560
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_2b

    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_2b

    .line 561
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->disconnectGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 562
    iput-object v3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 558
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 565
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .end local v1    # "i":I
    :cond_2e
    sget-object v2, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    iput-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/MyApplication;->mCurrentRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    .line 566
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    if-eqz v2, :cond_3d

    .line 567
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->setCurrentRoom(Lcom/delan/app/germanybluetooth/bean/RoomBean;)V

    .line 568
    :cond_3d
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onDestroy()V

    .line 569
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 218
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 219
    .local v0, "oldDevice":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;

    invoke-virtual {v1, p3}, Lcom/delan/app/germanybluetooth/adapter/VersionUpdateAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v1

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 220
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    if-eq v1, v0, :cond_19

    .line 221
    if-eqz v0, :cond_15

    .line 222
    iget-object v1, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->disconnectGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 224
    :cond_15
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->startScanning()V

    .line 233
    :goto_18
    return-void

    .line 226
    :cond_19
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget v1, v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->successSetPin:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    .line 227
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v2, 0x77

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_18

    .line 229
    :cond_2c
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->disconnectGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 230
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->startScanning()V

    goto :goto_18
.end method

.method protected onStart()V
    .registers 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onStart()V

    .line 107
    invoke-static {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 108
    const v0, 0x7f0600ab

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$1;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)V

    invoke-static {v0, p0, v1}, Lutils/DialogUtils;->confirmDialog(Ljava/lang/String;Landroid/content/Context;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    .line 128
    :cond_18
    :goto_18
    return-void

    .line 123
    :cond_19
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->hasDoDownLoadWork:Z

    if-nez v0, :cond_18

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->hasDoDownLoadWork:Z

    .line 125
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->doDownLoadWork()V

    goto :goto_18
.end method

.method public requestCoarseLocationFailed()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionDenied;
        value = 0x53
    .end annotation

    .prologue
    .line 600
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationFailed()V

    .line 601
    return-void
.end method

.method public requestCoarseLocationSuccess()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionGrant;
        value = 0x53
    .end annotation

    .prologue
    .line 595
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationSuccess()V

    .line 596
    return-void
.end method

.method public uiDeviceConnectionStatusChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "connected"    # Z

    .prologue
    .line 346
    invoke-super {p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiDeviceConnectionStatusChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 347
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 348
    return-void
.end method

.method public uiDeviceFound(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I

    .prologue
    .line 325
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 326
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iput-object p1, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    .line 327
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 329
    :cond_23
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
    .line 333
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    if-eqz p1, :cond_43

    .line 334
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    .line 335
    .local v0, "result":Landroid/bluetooth/le/ScanResult;
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 336
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 337
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iput-object v2, v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    .line 338
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v2, 0x74

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 342
    .end local v0    # "result":Landroid/bluetooth/le/ScanResult;
    :cond_43
    return-void
.end method

.method public uiGotNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 5
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 416
    invoke-super {p0, p1, p2}, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiGotNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 417
    if-eqz p1, :cond_1b

    if-eqz p2, :cond_1b

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 420
    :cond_1b
    :goto_1b
    return-void

    .line 419
    :cond_1c
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, p2}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1b
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
    .line 354
    invoke-super/range {p0 .. p6}, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiNewValueForCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;[BLjava/lang/String;)V

    .line 355
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 376
    :goto_13
    return-void

    .line 357
    :cond_14
    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, "uuid":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_78

    :cond_28
    :goto_28
    packed-switch v1, :pswitch_data_82

    goto :goto_13

    .line 360
    :pswitch_2c
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v3, "00002a26-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v1, v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 361
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->updateRecord()V

    goto :goto_13

    .line 358
    :sswitch_39
    const-string v2, "00002a28-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x0

    goto :goto_28

    :sswitch_43
    const-string v2, "00002a26-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v1, 0x1

    goto :goto_28

    .line 364
    :pswitch_4d
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->updateRecord()V

    .line 365
    const v1, 0x7f0600a3

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->coblVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_6e

    .line 366
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    new-instance v2, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$2;

    invoke-direct {v2, p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$2;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)V

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v2, v4, v5}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_13

    .line 373
    :cond_6e
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v3, "47e9ee30-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto :goto_13

    .line 358
    :sswitch_data_78
    .sparse-switch
        -0x5dd824f5 -> :sswitch_39
        0x4f881209 -> :sswitch_43
    .end sparse-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_4d
    .end packed-switch
.end method

.method public uiWriteComplete(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 398
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    if-eqz v1, :cond_1e

    if-eqz p2, :cond_1e

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 412
    :cond_1e
    :goto_1e
    return-void

    .line 400
    :cond_1f
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "uuid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 403
    invoke-super {p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiWriteComplete(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 405
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_64

    :cond_3c
    :goto_3c
    packed-switch v1, :pswitch_data_6a

    goto :goto_1e

    .line 407
    :pswitch_40
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 408
    if-nez p3, :cond_1e

    .line 409
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v2, 0x75

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1e

    .line 405
    :pswitch_59
    const-string v2, "47e9ee30-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3c

    const/4 v1, 0x0

    goto :goto_3c

    nop

    :pswitch_data_64
    .packed-switch -0x1edf78b
        :pswitch_59
    .end packed-switch

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_40
    .end packed-switch
.end method

.method public unzipFinished(Ljava/lang/String;Ljava/lang/Long;)V
    .registers 12
    .param p1, "zipFile"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Long;

    .prologue
    const/4 v8, 0x0

    .line 165
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_e

    .line 166
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->finish()V

    .line 167
    :cond_e
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v4, "/updateFiles/"

    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->ifParentDirNotExistCreate(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 168
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 169
    .local v1, "files":[Ljava/lang/String;
    const-string v3, "COBL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_99

    .line 170
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_23
    array-length v3, v1

    if-ge v2, v3, :cond_54

    .line 171
    aget-object v3, v1, v2

    const-string v4, ".DTA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 172
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->coblFile:Ljava/io/File;

    .line 184
    .end local v2    # "i":I
    :cond_54
    :goto_54
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->coblFile:Ljava/io/File;

    if-eqz v3, :cond_95

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->rfblFile:Ljava/io/File;

    if-eqz v3, :cond_95

    .line 185
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->coblFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->coblFileName:Ljava/lang/String;

    .line 186
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->coblFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->coblFileName:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->coblFileName:Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->rfblFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->rfblFileName:Ljava/lang/String;

    .line 188
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->rfblFileName:Ljava/lang/String;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->rfblFileName:Ljava/lang/String;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->rfblFileName:Ljava/lang/String;

    .line 189
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v5, 0x6f

    invoke-virtual {v3, v4, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->getAllRoomAndDevices(Landroid/os/Handler;I)V

    .line 191
    :cond_95
    return-void

    .line 170
    .restart local v2    # "i":I
    :cond_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 176
    .end local v2    # "i":I
    :cond_99
    const-string v3, "RFBL"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 177
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_a2
    array-length v3, v1

    if-ge v2, v3, :cond_54

    .line 178
    aget-object v3, v1, v2

    const-string v4, ".img"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 179
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->rfblFile:Ljava/io/File;

    goto :goto_54

    .line 177
    :cond_d4
    add-int/lit8 v2, v2, 0x1

    goto :goto_a2
.end method

.method public updateRecord()V
    .registers 4

    .prologue
    .line 379
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->selectedDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    new-instance v2, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$3;

    invoke-direct {v2, p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity$3;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->queryDeviceRoom(Landroid/bluetooth/BluetoothDevice;Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$OnDbResult;)V

    .line 394
    return-void
.end method
