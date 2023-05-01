.class public Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;
.super Lcom/delan/app/germanybluetooth/base/BleActivity;
.source "DeviceListActivity.java"


# instance fields
.field private allDevicesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DataBaseBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private currentSelectedDevice:Landroid/bluetooth/BluetoothDevice;

.field private dialog:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

.field private hasScanAvailableDevice:Z

.field private mDevicesListAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

.field private newAddedBleDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private targetRoom:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->mDevicesListAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->newAddedBleDevices:Ljava/util/ArrayList;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->hasScanAvailableDevice:Z

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->targetRoom:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->mDevicesListAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->newAddedBleDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->addDeviceToRoomMap(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->allDevicesMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->dialog:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    return-object v0
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Landroid/bluetooth/BluetoothDevice;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->currentSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$800(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method private addDeviceToRoomMap(Ljava/lang/String;)V
    .registers 5
    .param p1, "targetRoom"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->allDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 119
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;"
    if-nez v0, :cond_14

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;"
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->allDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :cond_14
    new-instance v1, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->currentSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    return-void
.end method

.method private handleDeviceFound(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I

    .prologue
    const v3, 0x7f06006e

    const/16 v2, 0x6c

    .line 179
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->mDevicesListAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->contains(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 180
    invoke-super {p0, p1, p2}, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiDeviceFound(Landroid/bluetooth/BluetoothDevice;I)V

    .line 181
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f060028

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 182
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->targetRoom:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 183
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    if-nez v0, :cond_4f

    .line 184
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->newAddedBleDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 185
    const-string v0, "add device"

    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 186
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    invoke-virtual {v0, v2, p1}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 193
    :cond_4f
    :goto_4f
    return-void

    .line 189
    :cond_50
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->targetRoom:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 190
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    invoke-virtual {v0, p1, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->ifDeviceNotInAnyRoomAddToShow(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;I)V

    goto :goto_4f
.end method

.method private showSelectRoomDialog()V
    .registers 7

    .prologue
    .line 144
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->dialog:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    if-nez v3, :cond_15

    .line 145
    new-instance v3, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;-><init>()V

    iput-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->dialog:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    .line 146
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->dialog:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    new-instance v4, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;

    invoke-direct {v4, p0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$2;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)V

    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->setDialogClickListener(Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment$OnDialogClicked;)V

    .line 167
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v0, "availableRooms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->allDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    :goto_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 169
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 170
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->weatherDeviceInRoomReachMax(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 171
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 173
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_40
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->dialog:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-virtual {v3, v0}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->setList(Ljava/util/ArrayList;)V

    .line 174
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->dialog:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->isAdded()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 175
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->dialog:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f06007a

    invoke-virtual {p0, v5}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 176
    :cond_5d
    return-void
.end method


# virtual methods
.method protected afterBleAndLocationEnabled()V
    .registers 4

    .prologue
    .line 69
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->afterBleAndLocationEnabled()V

    .line 70
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v2, 0x6f

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->getAllRoomAndDevices(Landroid/os/Handler;I)V

    .line 71
    return-void
.end method

.method protected fillView()V
    .registers 2

    .prologue
    .line 59
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->fillView()V

    .line 60
    const v0, 0x7f060042

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 61
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->setActionBarLeft(I)V

    .line 62
    return-void
.end method

.method public finish()V
    .registers 4

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 267
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x7f060061

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->newAddedBleDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 268
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->setResult(ILandroid/content/Intent;)V

    .line 269
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->finish()V

    .line 270
    return-void
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 236
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_48

    .line 260
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->handleMessage(Landroid/os/Message;)V

    .line 263
    :cond_8
    :goto_8
    return-void

    .line 238
    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/HashMap;

    if-eqz v0, :cond_1c

    .line 239
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashMap;

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->allDevicesMap:Ljava/util/HashMap;

    .line 240
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->allDevicesMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 243
    :cond_1c
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->mDevicesListAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->clearList()V

    .line 244
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->startScanning()V

    goto :goto_8

    .line 247
    :sswitch_25
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_8

    .line 248
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->mDevicesListAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v0}, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->addDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 249
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->mDevicesListAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->notifyDataSetChanged()V

    .line 250
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->hasScanAvailableDevice:Z

    if-nez v0, :cond_8

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->hasScanAvailableDevice:Z

    .line 252
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->dismissLoadingDialog()V

    goto :goto_8

    .line 257
    :sswitch_44
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->dismissLoadingDialog()V

    goto :goto_8

    .line 236
    :sswitch_data_48
    .sparse-switch
        0x4e -> :sswitch_44
        0x6c -> :sswitch_25
        0x6f -> :sswitch_9
    .end sparse-switch
.end method

.method protected initView()V
    .registers 4

    .prologue
    .line 48
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->initView()V

    .line 49
    const v1, 0x7f04001b

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->setView(I)V

    .line 50
    const v1, 0x7f0d007d

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 51
    .local v0, "deviceListLV":Landroid/widget/ListView;
    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->mDevicesListAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    .line 52
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->mDevicesListAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 53
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 54
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXAR_DATA"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->targetRoom:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
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
    .line 83
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->mDevicesListAdapter:Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;

    invoke-virtual {v2, p3}, Lcom/delan/app/germanybluetooth/adapter/DeviceListAdapter;->getDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 84
    .local v0, "device":Landroid/bluetooth/BluetoothDevice;
    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->currentSelectedDevice:Landroid/bluetooth/BluetoothDevice;

    .line 85
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->targetRoom:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 86
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->dialog:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->dialog:Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/base/SelectOrAddRoomDialogFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 87
    :cond_1c
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->showSelectRoomDialog()V

    .line 115
    :cond_1f
    :goto_1f
    return-void

    .line 89
    :cond_20
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->targetRoom:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->weatherDeviceInRoomReachMax(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 90
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->showUpperLimitMsg()V

    goto :goto_1f

    .line 94
    :cond_2c
    const v2, 0x7f06009d

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    .local v1, "msg":Ljava/lang/String;
    new-instance v2, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;Landroid/bluetooth/BluetoothDevice;)V

    invoke-static {v1, p0, v2}, Lutils/DialogUtils;->confirmDialog(Ljava/lang/String;Landroid/content/Context;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    goto :goto_1f
.end method

.method public requestCoarseLocationFailed()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionDenied;
        value = 0x53
    .end annotation

    .prologue
    .line 279
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationFailed()V

    .line 280
    return-void
.end method

.method public requestCoarseLocationSuccess()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionGrant;
        value = 0x53
    .end annotation

    .prologue
    .line 274
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationSuccess()V

    .line 275
    return-void
.end method

.method protected startScanning()V
    .registers 5

    .prologue
    .line 225
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->startScanning()V

    .line 226
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->targetRoom:Ljava/lang/String;

    const v1, 0x7f06006e

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 227
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$3;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity$3;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 233
    :cond_1e
    return-void
.end method

.method public uiDeviceFound(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I

    .prologue
    .line 203
    if-eqz p1, :cond_15

    .line 204
    const/16 v0, -0x3c

    if-ge p2, v0, :cond_16

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->targetRoom:Ljava/lang/String;

    const v1, 0x7f06006e

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 208
    :cond_15
    :goto_15
    return-void

    .line 206
    :cond_16
    invoke-direct {p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->handleDeviceFound(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_15
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
    .line 212
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    if-eqz p1, :cond_3b

    .line 213
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    .line 214
    .local v0, "result":Landroid/bluetooth/le/ScanResult;
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 215
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v2

    const/16 v3, -0x3c

    if-ge v2, v3, :cond_2f

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->targetRoom:Ljava/lang/String;

    const v3, 0x7f06006e

    invoke-virtual {p0, v3}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 217
    :cond_2f
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getRssi()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->handleDeviceFound(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_6

    .line 221
    .end local v0    # "result":Landroid/bluetooth/le/ScanResult;
    :cond_3b
    return-void
.end method

.method protected weatherDeviceInRoomReachMax(Ljava/lang/String;)Z
    .registers 7
    .param p1, "targetRoom"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 133
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;->allDevicesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 134
    .local v0, "dataBaseBeen":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;"
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1c

    .line 135
    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x6

    if-lt v3, v4, :cond_1a

    .line 137
    :cond_19
    :goto_19
    return v1

    :cond_1a
    move v1, v2

    .line 135
    goto :goto_19

    .line 137
    :cond_1c
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_19

    :cond_25
    move v1, v2

    goto :goto_19
.end method
