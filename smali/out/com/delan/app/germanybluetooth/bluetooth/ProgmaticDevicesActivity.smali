.class public Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;
.super Lcom/delan/app/germanybluetooth/base/BleActivity;
.source "ProgmaticDevicesActivity.java"


# static fields
.field private static final allIndex:[Ljava/lang/String;


# instance fields
.field private adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

.field private bluetoothIV:Landroid/widget/ImageView;

.field private profileBeanList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/ProfileBean;",
            ">;"
        }
    .end annotation
.end field

.field private progmaticBTN:Landroid/widget/Button;

.field private progmaticLV:Landroid/widget/ListView;

.field private settingsIV:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 44
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "(P1)"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "(P2)"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "(P3)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "(P4)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "(P5)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "(P6)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "(P7)"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "(P8)"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "(P9)"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "(P10)"

    aput-object v2, v0, v1

    sput-object v0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->allIndex:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->profileBeanList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->profileBeanList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->waitWriteComplete:I

    return p1
.end method

.method static synthetic access$1100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$1200()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 42
    sget-object v0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->allIndex:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->addNewProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method private addNewProfile(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->profileBeanList:Ljava/util/ArrayList;

    new-instance v1, Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    invoke-direct {v1, p1}, Lcom/delan/app/germanybluetooth/bean/ProfileBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->profileBeanList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->notifyData(Ljava/util/ArrayList;)V

    .line 203
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    new-instance v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    invoke-direct {v1}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeProfile(Ljava/lang/String;)V

    .line 205
    return-void
.end method

.method private connectToDevices()V
    .registers 7

    .prologue
    .line 284
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getNeedToTryConnect()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 286
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_52

    .line 287
    :goto_1a
    iget v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_a

    .line 288
    iget v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    .line 289
    const-string v2, "try connect to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 290
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->showName:Ljava/lang/String;

    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->hasTryConnectTime:I

    invoke-virtual {p0, v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->showReconnectToast(Ljava/lang/String;I)V

    .line 291
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    iget-object v4, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v2, v3, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->connect(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 292
    const v2, 0x7f06003e

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1a

    .line 297
    :cond_52
    const v2, 0x7f060084

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/idelan/app/Util/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_a

    .line 301
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :cond_5d
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->upDateUI()V

    .line 302
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->dismissLoadingDialog()V

    .line 303
    :cond_63
    return-void
.end method

.method private deleteAllDevice()V
    .registers 5

    .prologue
    .line 363
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v1

    .line 364
    .local v1, "hasConnected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 365
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v3, :cond_a

    .line 370
    iget-object v3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->disconnectGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 371
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_a

    .line 374
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :cond_23
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->init()V

    .line 375
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->upDateUI()V

    .line 376
    return-void
.end method

.method private upDateUI()V
    .registers 6

    .prologue
    .line 136
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3d

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getNeedToTryConnect()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_3d

    .line 137
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bluetoothIV:Landroid/widget/ImageView;

    const v4, 0x7f030002

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 142
    :goto_20
    const/4 v1, 0x0

    .line 143
    .local v1, "hasAvailableDevice":Z
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v2

    .line 144
    .local v2, "hasConnected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2b
    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 145
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v4, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->chars:Ljava/util/List;

    if-eqz v4, :cond_2b

    .line 146
    const/4 v1, 0x1

    goto :goto_2b

    .line 139
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .end local v1    # "hasAvailableDevice":Z
    .end local v2    # "hasConnected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    :cond_3d
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bluetoothIV:Landroid/widget/ImageView;

    const v4, 0x7f030013

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_20

    .line 148
    .restart local v1    # "hasAvailableDevice":Z
    .restart local v2    # "hasConnected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    :cond_46
    if-eqz v1, :cond_51

    .line 149
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->progmaticBTN:Landroid/widget/Button;

    const v4, 0x7f060091

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    .line 152
    :goto_50
    return-void

    .line 151
    :cond_51
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->progmaticBTN:Landroid/widget/Button;

    const v4, 0x7f06004c

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_50
.end method


# virtual methods
.method public doClickRightAction()V
    .registers 3

    .prologue
    .line 167
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->doClickRightAction()V

    .line 169
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->getCount()I

    move-result v0

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_18

    .line 170
    const v0, 0x7f06006b

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    :cond_17
    :goto_17
    return-void

    .line 173
    :cond_18
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->hasDialogShowing()Z

    move-result v0

    if-nez v0, :cond_17

    .line 175
    const v0, 0x7f060062

    .line 176
    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$2;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$2;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)V

    invoke-static {p0, v0, v1}, Lutils/DialogUtils;->showAddDialog(Landroid/app/Activity;Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->dialog:Landroid/app/Dialog;

    goto :goto_17
.end method

.method protected fillView()V
    .registers 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->fillView()V

    .line 76
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 77
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->setActionBarLeft(I)V

    .line 78
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->setActionBarRight(I)V

    .line 80
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->settingsIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->progmaticBTN:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->profileBeanList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    .line 83
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->progmaticLV:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->setOnRightMenuListener(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$onRightMenuListener;)V

    .line 133
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 327
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_6c

    .line 357
    :pswitch_5
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->handleMessage(Landroid/os/Message;)V

    .line 360
    :cond_8
    :goto_8
    return-void

    .line 329
    :pswitch_9
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    .line 330
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 331
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->profileBeanList:Ljava/util/ArrayList;

    if-nez v2, :cond_39

    .line 332
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->profileBeanList:Ljava/util/ArrayList;

    .line 335
    :goto_1e
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 336
    .local v1, "name":Ljava/lang/String;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->profileBeanList:Ljava/util/ArrayList;

    new-instance v4, Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    invoke-direct {v4, v1}, Lcom/delan/app/germanybluetooth/bean/ProfileBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 334
    .end local v1    # "name":Ljava/lang/String;
    :cond_39
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->profileBeanList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1e

    .line 338
    :cond_3f
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->profileBeanList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->notifyData(Ljava/util/ArrayList;)V

    .line 339
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v4, 0x71

    invoke-virtual {v2, v0, v3, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readProfiles(Ljava/util/ArrayList;Landroid/os/Handler;I)V

    goto :goto_8

    .line 343
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_50
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/HashMap;

    if-eqz v2, :cond_8

    .line 344
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, v3, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    goto :goto_8

    .line 348
    :pswitch_5f
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->connectToDevices()V

    goto :goto_8

    .line 351
    :pswitch_63
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->upDateUI()V

    goto :goto_8

    .line 354
    :pswitch_67
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->deleteAllDevice()V

    goto :goto_8

    .line 327
    nop

    :pswitch_data_6c
    .packed-switch 0x69
        :pswitch_63
        :pswitch_5f
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
        :pswitch_50
        :pswitch_67
    .end packed-switch
.end method

.method protected initView()V
    .registers 2

    .prologue
    .line 57
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->initView()V

    .line 58
    const v0, 0x7f04001e

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->setView(I)V

    .line 59
    const v0, 0x7f0d0086

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bluetoothIV:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0d0085

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->settingsIV:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f0d0088

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->progmaticBTN:Landroid/widget/Button;

    .line 62
    const v0, 0x7f0d0087

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->progmaticLV:Landroid/widget/ListView;

    .line 63
    return-void
.end method

.method protected loadData()V
    .registers 4

    .prologue
    .line 67
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->loadData()V

    .line 68
    sget-object v0, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    new-instance v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;

    const v2, 0x7f06006e

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iput-object v1, v0, Lcom/delan/app/germanybluetooth/MyApplication;->mCurrentRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    .line 69
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    if-eqz v0, :cond_20

    .line 70
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->setCurrentRoom(Lcom/delan/app/germanybluetooth/bean/RoomBean;)V

    .line 71
    :cond_20
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 380
    invoke-super {p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 381
    const/4 v1, -0x1

    if-eq p2, v1, :cond_7

    .line 393
    :cond_6
    :goto_6
    return-void

    .line 383
    :cond_7
    packed-switch p1, :pswitch_data_32

    goto :goto_6

    .line 385
    :pswitch_b
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 386
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 387
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1, p0, v0}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->addNewAddedDevices(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 388
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    invoke-virtual {v1, p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->setUiCallBackAndUiHandler(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;Landroid/os/Handler;)V

    .line 389
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->connectToDevices()V

    goto :goto_6

    .line 383
    :pswitch_data_32
    .packed-switch 0x67
        :pswitch_b
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f060064

    .line 208
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onClick(Landroid/view/View;)V

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_d0

    .line 278
    :cond_d
    :goto_d
    :pswitch_d
    return-void

    .line 211
    :pswitch_e
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v1, "profileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->profileBeanList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    .line 213
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/ProfileBean;
    iget-boolean v3, v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->isSelected:Z

    if-eqz v3, :cond_19

    .line 214
    iget-object v3, v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->simpleName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 217
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/ProfileBean;
    :cond_2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3b

    .line 219
    const-class v2, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    invoke-virtual {p0, p0, v2, v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->gotoActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/io/Serializable;)V

    goto :goto_d

    .line 222
    :cond_3b
    invoke-virtual {p0, v4}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_d

    .line 226
    .end local v1    # "profileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :pswitch_43
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->progmaticBTN:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const v3, 0x7f06004c

    invoke-virtual {p0, v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_79

    .line 227
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->weatherDeviceInRoomReachMax()Z

    move-result v2

    if-eqz v2, :cond_60

    .line 228
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->showUpperLimitMsg()V

    goto :goto_d

    .line 231
    :cond_60
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->hasDialogShowing()Z

    move-result v2

    if-nez v2, :cond_d

    .line 232
    const v2, 0x7f06004b

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$3;

    invoke-direct {v3, p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$3;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)V

    invoke-static {v2, p0, v3}, Lutils/DialogUtils;->confirmDialog(Ljava/lang/String;Landroid/content/Context;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->dialog:Landroid/app/Dialog;

    goto :goto_d

    .line 242
    :cond_79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .restart local v1    # "profileNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->profileBeanList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_84
    :goto_84
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    .line 245
    .restart local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/ProfileBean;
    iget-boolean v3, v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->isSelected:Z

    if-eqz v3, :cond_84

    .line 246
    iget-object v3, v0, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->simpleName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 248
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/ProfileBean;
    :cond_9a
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_a5

    .line 249
    invoke-static {p0, v4}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;I)V

    goto/16 :goto_d

    .line 250
    :cond_a5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0xa

    if-le v2, v3, :cond_b5

    .line 251
    const v2, 0x7f06005b

    invoke-static {p0, v2}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;I)V

    goto/16 :goto_d

    .line 253
    :cond_b5
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->hasDialogShowing()Z

    move-result v2

    if-nez v2, :cond_d

    .line 254
    const v2, 0x7f060049

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$4;

    invoke-direct {v3, p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$4;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;Ljava/util/ArrayList;)V

    invoke-static {v2, p0, v3}, Lutils/DialogUtils;->confirmDialog(Ljava/lang/String;Landroid/content/Context;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->dialog:Landroid/app/Dialog;

    goto/16 :goto_d

    .line 209
    nop

    :pswitch_data_d0
    .packed-switch 0x7f0d0085
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_43
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 406
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-eqz v1, :cond_27

    .line 407
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 408
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v2, :cond_f

    .line 409
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->disconnectGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 410
    iput-object v3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    goto :goto_f

    .line 413
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :cond_27
    sget-object v1, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    iput-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iput-object v3, v1, Lcom/delan/app/germanybluetooth/MyApplication;->mCurrentRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    .line 414
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    if-eqz v1, :cond_36

    .line 415
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-virtual {v1, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->setCurrentRoom(Lcom/delan/app/germanybluetooth/bean/RoomBean;)V

    .line 416
    :cond_36
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onDestroy()V

    .line 417
    return-void
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 156
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onStart()V

    .line 157
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    if-eqz v0, :cond_1c

    .line 158
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->profileBeanList:Ljava/util/ArrayList;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->profileBeanList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1c

    .line 159
    :cond_13
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v2, 0x70

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->showProfileInLocal(Landroid/os/Handler;I)V

    .line 160
    :cond_1c
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 397
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onStop()V

    .line 398
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->closeMenu()V

    .line 399
    return-void
.end method

.method public requestCoarseLocationFailed()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionDenied;
        value = 0x53
    .end annotation

    .prologue
    .line 426
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationFailed()V

    .line 427
    return-void
.end method

.method public requestCoarseLocationSuccess()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionGrant;
        value = 0x53
    .end annotation

    .prologue
    .line 421
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationSuccess()V

    .line 422
    return-void
.end method

.method public uiAvailableServices(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V
    .registers 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothGatt;",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/util/List",
            "<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    invoke-super {p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiAvailableServices(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V

    .line 308
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 309
    return-void
.end method

.method public uiWriteComplete(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 10
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 312
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-eqz v2, :cond_e

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_e

    if-nez p2, :cond_f

    .line 324
    :cond_e
    :goto_e
    return-void

    .line 314
    :cond_f
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 315
    .local v0, "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_e

    .line 317
    invoke-super {p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiWriteComplete(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    .line 318
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-virtual {v2, v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeNextCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    .line 319
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "47e9ef41-47e9-11e4-8939-164230d1df67"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 320
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 321
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x72

    iput v2, v1, Landroid/os/Message;->what:I

    .line 322
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v1, v4, v5}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_e
.end method
