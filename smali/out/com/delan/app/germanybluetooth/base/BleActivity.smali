.class public abstract Lcom/delan/app/germanybluetooth/base/BleActivity;
.super Lcom/delan/app/germanybluetooth/base/BaseActivity;
.source "BleActivity.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;


# static fields
.field protected static final ACCESS_COARSE_LOCATION:I = 0x53

.field protected static final ADD_DEVICE_TO_LIST:I = 0x6c

.field protected static final CONNECT_TO_DEVICES:I = 0x6a

.field protected static final DELETE_ALL_DEVICES:I = 0x72

.field public static final DEVICE_HAS_FOUND:I = 0x74

.field protected static final DEVICE_LIST_ACTIVITY:I = 0x67

.field public static final DISMISS_LOADING_DIALOG:I = 0x48

.field private static final ENABLE_BT_REQUEST_ID:I = 0x51

.field private static final ENABLE_LOCAL_REQUEST_ID:I = 0x52

.field private static final FINISH_ACTIVITY:I = 0x4b

.field protected static final GET_ALL_ROOM_AND_DEVICE:I = 0x6f

.field protected static final GET_PROFILE_DETAILS:I = 0x71

.field protected static final PROFILE_LIST:I = 0x70

.field public static final RAW_READ_WRITE_CHARACTER:I = 0x73

.field protected static final RECEIVED_NOTIFICATION:I = 0x76

.field public static final SCANNING_HAS_STOP:I = 0x4e

.field protected static final SET_PIN_SUCCESS:I = 0x75

.field public static final SHOW_LOADING_DIALOG:I = 0x47

.field private static final SHOW_SET_PIN_DIALOG:I = 0x6e

.field public static final SHOW_TOAST:I = 0x49

.field protected static final START_SCAN_BLE_LIST:I = 0x68

.field protected static final START_UPDATE:I = 0x77

.field protected static final UI_NEW_VALUE_FOR_CHARACTERISTIC:I = 0x6b

.field protected static final UPDATE_UI:I = 0x69

.field public static final WRITE_CHARACTERISTIC:I = 0x4c


# instance fields
.field protected bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

.field protected mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

.field protected waitWriteComplete:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->waitWriteComplete:I

    return-void
.end method

.method private btDisabled()V
    .registers 2

    .prologue
    .line 476
    const v0, 0x7f060034

    invoke-static {p0, v0}, Lutils/MyToastUtil;->showToastLong(Landroid/content/Context;I)V

    .line 477
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->finish()V

    .line 478
    return-void
.end method

.method private static final isLocationEnable(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    const-string v3, "location"

    .line 174
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/LocationManager;

    .line 175
    .local v1, "locationManager":Landroid/location/LocationManager;
    const-string v3, "gps"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 176
    .local v0, "gps":Z
    const-string v3, "network"

    invoke-virtual {v1, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 177
    .local v2, "network":Z
    if-nez v0, :cond_18

    if-eqz v2, :cond_1a

    :cond_18
    const/4 v3, 0x1

    :goto_19
    return v3

    :cond_1a
    const/4 v3, 0x0

    goto :goto_19
.end method

.method private locationDisabled()V
    .registers 2

    .prologue
    .line 481
    const v0, 0x7f060057

    invoke-static {p0, v0}, Lutils/MyToastUtil;->showToastLong(Landroid/content/Context;I)V

    .line 482
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->finish()V

    .line 483
    return-void
.end method

.method private requestCoarseLocation()V
    .registers 5

    .prologue
    .line 126
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    .line 127
    const/16 v0, 0x53

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/zhy/m/permission/MPermissions;->requestPermissions(Landroid/app/Activity;I[Ljava/lang/String;)V

    .line 130
    :goto_16
    return-void

    .line 129
    :cond_17
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->afterBleAndLocationEnabled()V

    goto :goto_16
.end method


# virtual methods
.method protected afterBleAndLocationEnabled()V
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->initBleWrapper()V

    .line 150
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    invoke-virtual {v0, p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->setUiCallBackAndUiHandler(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;Landroid/os/Handler;)V

    .line 151
    return-void
.end method

.method public doClickLeftAction()V
    .registers 5

    .prologue
    .line 232
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->doClickLeftAction()V

    .line 234
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    if-eqz v0, :cond_11

    .line 235
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v1, 0x4b

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 238
    :goto_10
    return-void

    .line 237
    :cond_11
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->finish()V

    goto :goto_10
.end method

.method protected handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 486
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_68

    .line 523
    :cond_5
    :goto_5
    return-void

    .line 488
    :sswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 489
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5

    .line 492
    :sswitch_14
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->showLoadingDialog()V

    goto :goto_5

    .line 495
    :sswitch_18
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->dismissLoadingDialog()V

    goto :goto_5

    .line 498
    :sswitch_1c
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->finish()V

    goto :goto_5

    .line 501
    :sswitch_20
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    if-eqz v3, :cond_5

    .line 502
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 503
    .local v0, "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->setPinDialog(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    goto :goto_5

    .line 507
    .end local v0    # "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :sswitch_2e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 509
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 510
    .local v2, "uuid":Ljava/lang/String;
    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bleBluetooth/GermanyUuids;->getDeviceTypeFromChar(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    .line 511
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-virtual {v3, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Ljava/lang/String;)V

    goto :goto_5

    .line 514
    .end local v2    # "uuid":Ljava/lang/String;
    :sswitch_45
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/delan/app/germanybluetooth/bean/ReadWriteCharPara;

    if-eqz v3, :cond_5

    .line 515
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/ReadWriteCharPara;

    .line 516
    .local v1, "para":Lcom/delan/app/germanybluetooth/bean/ReadWriteCharPara;
    iget-boolean v3, v1, Lcom/delan/app/germanybluetooth/bean/ReadWriteCharPara;->isWrite:Z

    if-eqz v3, :cond_5d

    .line 517
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v4, v1, Lcom/delan/app/germanybluetooth/bean/ReadWriteCharPara;->deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v5, v1, Lcom/delan/app/germanybluetooth/bean/ReadWriteCharPara;->ch:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3, v4, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->rawWriteDataToCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_5

    .line 519
    :cond_5d
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v4, v1, Lcom/delan/app/germanybluetooth/bean/ReadWriteCharPara;->deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v5, v1, Lcom/delan/app/germanybluetooth/bean/ReadWriteCharPara;->ch:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3, v4, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->rawRequestRead(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    goto :goto_5

    .line 486
    nop

    :sswitch_data_68
    .sparse-switch
        0x47 -> :sswitch_14
        0x48 -> :sswitch_18
        0x49 -> :sswitch_6
        0x4b -> :sswitch_1c
        0x4c -> :sswitch_2e
        0x6e -> :sswitch_20
        0x73 -> :sswitch_45
    .end sparse-switch
.end method

.method protected isBluetoothFunctionOpen()Z
    .registers 4

    .prologue
    .line 138
    const-string v2, "bluetooth"

    .line 139
    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/base/BleActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothManager;

    .line 140
    .local v1, "bluetoothManager":Landroid/bluetooth/BluetoothManager;
    if-eqz v1, :cond_18

    .line 141
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 142
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 143
    const/4 v2, 0x1

    .line 145
    .end local v0    # "adapter":Landroid/bluetooth/BluetoothAdapter;
    :goto_17
    return v2

    :cond_18
    const/4 v2, 0x0

    goto :goto_17
.end method

.method protected loadData()V
    .registers 2

    .prologue
    .line 87
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->loadData()V

    .line 88
    instance-of v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    if-nez v0, :cond_1e

    instance-of v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    if-nez v0, :cond_1e

    instance-of v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    if-nez v0, :cond_1e

    .line 89
    sget-object v0, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/MyApplication;->mCurrentRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-nez v0, :cond_1e

    .line 90
    instance-of v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    if-nez v0, :cond_1e

    .line 91
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->finish()V

    .line 93
    :cond_1e
    sget-object v0, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/MyApplication;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .line 94
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    if-nez v0, :cond_2b

    .line 95
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->finish()V

    .line 96
    :cond_2b
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/16 v3, 0x52

    .line 208
    const/16 v1, 0x51

    if-ne p1, v1, :cond_2b

    .line 209
    if-nez p2, :cond_c

    .line 210
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->btDisabled()V

    .line 228
    :cond_b
    :goto_b
    return-void

    .line 212
    :cond_c
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_27

    .line 213
    invoke-static {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->isLocationEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_23

    .line 214
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .local v0, "enableLocationIntent":Landroid/content/Intent;
    invoke-virtual {p0, v0, v3}, Lcom/delan/app/germanybluetooth/base/BleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_b

    .line 217
    .end local v0    # "enableLocationIntent":Landroid/content/Intent;
    :cond_23
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocation()V

    goto :goto_b

    .line 219
    :cond_27
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->afterBleAndLocationEnabled()V

    goto :goto_b

    .line 221
    :cond_2b
    if-ne p1, v3, :cond_b

    .line 222
    invoke-static {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->isLocationEnable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 223
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->locationDisabled()V

    goto :goto_b

    .line 225
    :cond_37
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocation()V

    goto :goto_b
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 242
    const/4 v0, 0x4

    if-ne p1, v0, :cond_12

    .line 243
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    if-eqz v0, :cond_12

    .line 244
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v1, 0x4b

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 245
    const/4 v0, 0x1

    .line 247
    :goto_11
    return v0

    :cond_12
    invoke-super {p0, p1, p2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_11
.end method

.method public onPause()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 252
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    if-eqz v0, :cond_16

    .line 253
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->stopScanning(Z)V

    .line 254
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    invoke-virtual {v0, v2, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->setUiCallBackAndUiHandler(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;Landroid/os/Handler;)V

    .line 256
    :cond_16
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->onPause()V

    .line 257
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 184
    invoke-static {p0, p1, p2, p3}, Lcom/zhy/m/permission/MPermissions;->onRequestPermissionsResult(Landroid/app/Activity;I[Ljava/lang/String;[I)V

    .line 185
    invoke-super {p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 186
    return-void
.end method

.method protected onStart()V
    .registers 5

    .prologue
    .line 103
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->onStart()V

    .line 104
    sget-object v2, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/MyApplication;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .line 105
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    if-nez v2, :cond_e

    .line 122
    :goto_d
    return-void

    .line 107
    :cond_e
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    invoke-virtual {v2, p0, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->setUiCallBackAndUiHandler(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;Landroid/os/Handler;)V

    .line 108
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->isBluetoothFunctionOpen()Z

    move-result v2

    if-nez v2, :cond_28

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.bluetooth.adapter.action.REQUEST_ENABLE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v0, "enableBtIntent":Landroid/content/Intent;
    const/16 v2, 0x51

    invoke-virtual {p0, v0, v2}, Lcom/delan/app/germanybluetooth/base/BleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 114
    .end local v0    # "enableBtIntent":Landroid/content/Intent;
    :cond_28
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_45

    .line 115
    invoke-static {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->isLocationEnable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 116
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, "enableLocationIntent":Landroid/content/Intent;
    const/16 v2, 0x52

    invoke-virtual {p0, v1, v2}, Lcom/delan/app/germanybluetooth/base/BleActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_d

    .line 119
    .end local v1    # "enableLocationIntent":Landroid/content/Intent;
    :cond_41
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocation()V

    goto :goto_d

    .line 121
    :cond_45
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->afterBleAndLocationEnabled()V

    goto :goto_d
.end method

.method public requestCoarseLocationFailed()V
    .registers 2
    .annotation build Lcom/zhy/m/permission/PermissionDenied;
        value = 0x53
    .end annotation

    .prologue
    .line 201
    const v0, 0x7f06003f

    invoke-static {p0, v0}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;I)V

    .line 202
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->finish()V

    .line 203
    return-void
.end method

.method public requestCoarseLocationSuccess()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionDenied;
        value = 0x53
    .end annotation

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->afterBleAndLocationEnabled()V

    .line 194
    return-void
.end method

.method protected setPinDialog(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V
    .registers 5
    .param p1, "deviceBean"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->hasDialogShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 574
    :cond_6
    :goto_6
    return-void

    .line 532
    :cond_7
    if-eqz p1, :cond_28

    .line 533
    iget v1, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->trySetPinCount:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_6

    .line 535
    const v1, 0x7f060083

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, "title":Ljava/lang/String;
    :goto_15
    const v1, 0x7f06007d

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/delan/app/germanybluetooth/base/BleActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity$2;-><init>(Lcom/delan/app/germanybluetooth/base/BleActivity;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    invoke-static {p0, v0, v1, v2}, Lutils/DialogUtils;->showChangePinDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->dialog:Landroid/app/Dialog;

    goto :goto_6

    .line 537
    .end local v0    # "title":Ljava/lang/String;
    :cond_28
    const v1, 0x7f06007c

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "title":Ljava/lang/String;
    goto :goto_15
.end method

.method protected showReconnectToast(Ljava/lang/String;I)V
    .registers 3
    .param p1, "showName"    # Ljava/lang/String;
    .param p2, "hasTryConnectTime"    # I

    .prologue
    .line 606
    return-void
.end method

.method protected showUpperLimitMsg()V
    .registers 2

    .prologue
    .line 585
    const v0, 0x7f060043

    invoke-static {p0, v0}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;I)V

    .line 586
    return-void
.end method

.method protected startScanning()V
    .registers 5

    .prologue
    .line 157
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->stopScanning(Z)V

    .line 158
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    new-instance v1, Lcom/delan/app/germanybluetooth/base/BleActivity$1;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/base/BleActivity$1;-><init>(Lcom/delan/app/germanybluetooth/base/BleActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 164
    return-void
.end method

.method public uiAvailableServices(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Ljava/util/List;)V
    .registers 13
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
    .line 340
    .local p3, "services":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothGattService;>;"
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-eqz v6, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    .line 377
    :cond_8
    :goto_8
    return-void

    .line 342
    :cond_9
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v2

    .line 343
    .local v2, "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v2, :cond_8

    .line 345
    iput-object p1, v2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 346
    iput-object p2, v2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    move-object v6, p3

    .line 347
    check-cast v6, Ljava/util/ArrayList;

    iput-object v6, v2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->services:Ljava/util/ArrayList;

    .line 348
    if-eqz p3, :cond_8

    .line 349
    const/4 v5, 0x0

    .local v5, "specialService":Landroid/bluetooth/BluetoothGattService;
    const/4 v1, 0x0

    .line 350
    .local v1, "cometDeviceInfoService":Landroid/bluetooth/BluetoothGattService;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    :goto_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothGattService;

    .line 351
    .local v4, "s":Landroid/bluetooth/BluetoothGattService;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ee00"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_44

    .line 352
    move-object v5, v4

    goto :goto_26

    .line 353
    :cond_44
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "ef50"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_56

    .line 354
    move-object v5, v4

    goto :goto_26

    .line 355
    :cond_56
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "df67"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6c

    .line 356
    move-object v5, v4

    goto :goto_26

    .line 357
    :cond_6c
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "180a"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 358
    move-object v1, v4

    goto :goto_26

    .line 362
    .end local v4    # "s":Landroid/bluetooth/BluetoothGattService;
    :cond_7e
    if-eqz v5, :cond_8

    .line 363
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v6

    iput-object v6, v2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->chars:Ljava/util/List;

    .line 364
    iget-object v6, v2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->chars:Ljava/util/List;

    if-eqz v6, :cond_8

    .line 366
    iget-object v6, v2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->chars:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/delan/app/germanybluetooth/bleBluetooth/GermanyUuids;->getDeviceTypeFromChar(Ljava/lang/String;)I

    move-result v3

    .line 367
    .local v3, "deviceType":I
    const/4 v6, 0x1

    if-ne v3, v6, :cond_cf

    if-eqz v1, :cond_cf

    .line 368
    const-string v6, "00002a26-0000-1000-8000-00805f9b34fb"

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 369
    .local v0, "c":Landroid/bluetooth/BluetoothGattCharacteristic;
    iget-object v6, v2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->chars:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    const-string v6, "00002a28-0000-1000-8000-00805f9b34fb"

    invoke-static {v6}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    .line 371
    iget-object v6, v2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->chars:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v7, "00002a28-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v6, v2, v7}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto/16 :goto_8

    .line 373
    .end local v0    # "c":Landroid/bluetooth/BluetoothGattCharacteristic;
    :cond_cf
    const/4 v6, 0x2

    if-ne v3, v6, :cond_8

    .line 374
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v7, "47e9ef62-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v6, v2, v7}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto/16 :goto_8
.end method

.method public uiDeviceConnectionStatusChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 10
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "connected"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 307
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-eqz v1, :cond_d

    if-eqz p2, :cond_d

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    if-nez v1, :cond_e

    .line 329
    :cond_d
    :goto_d
    return-void

    .line 309
    :cond_e
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 310
    .local v0, "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_d

    .line 312
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1, p2, p1, p3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->deviceConnectionStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;Z)V

    .line 313
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->connectBleTimeout:Ljava/lang/Runnable;

    if-eqz v1, :cond_33

    .line 314
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->connectBleTimeout:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 315
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->connectBleTimeout:Ljava/lang/Runnable;

    .line 317
    :cond_33
    if-nez p3, :cond_6a

    .line 318
    const-string v1, "%s %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "disconnected"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    iput v4, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->waitWriteComplete:I

    .line 322
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 326
    :goto_53
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 328
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_d

    .line 324
    :cond_6a
    const-string v1, "%s %s"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    const-string v3, "connected"

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_53
.end method

.method public uiDeviceFound(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I

    .prologue
    .line 267
    if-eqz p1, :cond_1f

    .line 268
    const-string v0, "%s %s %ddb"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :cond_1f
    return-void
.end method

.method public uiDeviceFound(Ljava/util/List;)V
    .registers 8
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
    .line 278
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/le/ScanResult;>;"
    if-eqz p1, :cond_37

    .line 279
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/ScanResult;

    .line 280
    .local v0, "result":Landroid/bluetooth/le/ScanResult;
    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 281
    const-string v2, "%s %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 283
    .end local v0    # "result":Landroid/bluetooth/le/ScanResult;
    :cond_37
    return-void
.end method

.method public uiGotNotification(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 472
    const-string v0, "uiGotNotification"

    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method public uiNewValueForCharacteristic(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattService;Landroid/bluetooth/BluetoothGattCharacteristic;[BLjava/lang/String;)V
    .registers 12
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "service"    # Landroid/bluetooth/BluetoothGattService;
    .param p4, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p5, "rawValue"    # [B
    .param p6, "timestamp"    # Ljava/lang/String;

    .prologue
    .line 381
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-eqz v1, :cond_8

    if-eqz p2, :cond_8

    if-nez p4, :cond_9

    .line 398
    :cond_8
    :goto_8
    return-void

    .line 383
    :cond_9
    const-string v1, "%s %s get new value"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleNamesResolver;->getName(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    invoke-static {p5}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 389
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 390
    .local v0, "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_8

    .line 391
    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->releaseReadWrite()V

    .line 392
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, p4}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->newValueForCharacteristic(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 393
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    if-eqz v1, :cond_8

    .line 394
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v2, 0x48

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 395
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v2, 0x6b

    invoke-virtual {p4}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8
.end method

.method public uiReadWriteCharacteristicError(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .registers 8
    .param p1, "deviceBean"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "isWrite"    # Z

    .prologue
    .line 420
    if-eqz p1, :cond_38

    if-eqz p2, :cond_38

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-eqz v0, :cond_38

    .line 421
    if-eqz p3, :cond_1b

    .line 422
    iget v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->waitWriteComplete:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->waitWriteComplete:I

    .line 423
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 425
    :cond_1b
    const-string v1, "%s %s %s Characteristic Error"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p2}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleNamesResolver;->getName(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p3, :cond_39

    const-string v0, "write"

    :goto_33
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 427
    :cond_38
    return-void

    .line 425
    :cond_39
    const-string v0, "read"

    goto :goto_33
.end method

.method public uiScanFailed(I)V
    .registers 6
    .param p1, "errorCode"    # I

    .prologue
    .line 292
    const-string v0, "start Scan Failed errCode=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v1, 0x49

    const v2, 0x7f060079

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/base/BleActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 294
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 295
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 296
    return-void
.end method

.method public uiWaitReadWriteCharacteristicTimeOut(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Landroid/bluetooth/BluetoothGattCharacteristic;Z)V
    .registers 8
    .param p1, "deviceBean"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "isWrite"    # Z

    .prologue
    .line 402
    if-eqz p1, :cond_34

    if-eqz p2, :cond_34

    .line 403
    if-eqz p3, :cond_17

    .line 404
    iget v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->waitWriteComplete:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->waitWriteComplete:I

    .line 405
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 407
    :cond_17
    const-string v1, "%s %s Wait %s Characteristic Time Out"

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-static {p2}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleNamesResolver;->getName(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p3, :cond_35

    const-string v0, "write"

    :goto_2f
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    :cond_34
    return-void

    .line 407
    :cond_35
    const-string v0, "read"

    goto :goto_2f
.end method

.method public uiWriteComplete(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 13
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v2, 0x2

    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 438
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-eqz v4, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-eqz v4, :cond_12

    if-nez p2, :cond_13

    .line 468
    .end local p0    # "this":Lcom/delan/app/germanybluetooth/base/BleActivity;
    :cond_12
    :goto_12
    return-void

    .line 440
    .restart local p0    # "this":Lcom/delan/app/germanybluetooth/base/BleActivity;
    :cond_13
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 441
    .local v0, "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_12

    .line 444
    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->releaseReadWrite()V

    .line 445
    iget v4, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->waitWriteComplete:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->waitWriteComplete:I

    .line 446
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v5, 0x48

    invoke-virtual {v4, v5}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 448
    if-nez p3, :cond_8c

    .line 449
    const-string v4, "%s %s %s "

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p2}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleNamesResolver;->getName(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "success"

    aput-object v6, v5, v2

    invoke-static {v4, v5}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 453
    :goto_54
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, "uuid":Ljava/lang/String;
    const-string v4, "47e9ee30-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_70

    const-string v4, "47e9ef62-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 455
    :cond_70
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v5, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4, v5, p2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->newValueForCharacteristic(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 456
    if-nez p3, :cond_7a

    move v2, v3

    :cond_7a
    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->successSetPin:I

    .line 457
    iput v7, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->trySetPinCount:I

    .line 458
    iget v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->successSetPin:I

    if-ne v2, v3, :cond_bc

    .line 459
    instance-of v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    if-eqz v2, :cond_af

    .line 460
    check-cast p0, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;

    .end local p0    # "this":Lcom/delan/app/germanybluetooth/base/BleActivity;
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/VersionListActivity;->updateRecord()V

    goto :goto_12

    .line 451
    .end local v1    # "uuid":Ljava/lang/String;
    .restart local p0    # "this":Lcom/delan/app/germanybluetooth/base/BleActivity;
    :cond_8c
    const-string v4, "%s %s %s errorCode=0x%02x"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {p2}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleNamesResolver;->getName(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "failed"

    aput-object v6, v5, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Lcom/apkfuns/logutils/LogUtils;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_54

    .line 462
    .restart local v1    # "uuid":Ljava/lang/String;
    :cond_af
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->updateRecord(Ljava/lang/String;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    goto/16 :goto_12

    .line 465
    :cond_bc
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v3, 0x6e

    invoke-virtual {v2, v3, v0}, Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_12
.end method

.method protected weatherDeviceInRoomReachMax()Z
    .registers 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 577
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v4}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getNeedToTryConnect()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int v0, v3, v4

    .line 578
    .local v0, "i":I
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-le v3, v4, :cond_24

    .line 579
    const/4 v3, 0x6

    if-lt v0, v3, :cond_22

    .line 581
    :cond_21
    :goto_21
    return v1

    :cond_22
    move v1, v2

    .line 579
    goto :goto_21

    .line 581
    :cond_24
    const/4 v3, 0x2

    if-ge v0, v3, :cond_21

    move v1, v2

    goto :goto_21
.end method
