.class public Lcom/delan/app/germanybluetooth/bluetooth/SysIdleBroadCastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SysIdleBroadCastReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 23
    const-string v4, "BroadCastReceiver onReceive"

    invoke-static {v4}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 24
    sget-object v4, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    iget-object v1, v4, Lcom/delan/app/germanybluetooth/MyApplication;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    .line 25
    .local v1, "bleService":Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    if-eqz v1, :cond_42

    .line 26
    const-string v4, "stopScanning"

    invoke-static {v4}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 27
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->stopScanning(Z)V

    .line 30
    sget-object v4, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    iget-object v3, v4, Lcom/delan/app/germanybluetooth/MyApplication;->mCurrentRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    .line 31
    .local v3, "room":Lcom/delan/app/germanybluetooth/bean/RoomBean;
    if-eqz v3, :cond_3b

    .line 32
    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v2

    .line 33
    .local v2, "hasConnected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_22
    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 34
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v5, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    if-eqz v5, :cond_22

    .line 35
    iget-object v5, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    invoke-static {v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->disconnectGatt(Landroid/bluetooth/BluetoothGatt;)V

    .line 36
    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->clear()V

    goto :goto_22

    .line 40
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .end local v2    # "hasConnected":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    :cond_3b
    invoke-static {}, Lcom/idelan/app/Util/AppManager;->getAppManager()Lcom/idelan/app/Util/AppManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/idelan/app/Util/AppManager;->AppExit(Landroid/content/Context;)V

    .line 42
    .end local v3    # "room":Lcom/delan/app/germanybluetooth/bean/RoomBean;
    :cond_42
    return-void
.end method
