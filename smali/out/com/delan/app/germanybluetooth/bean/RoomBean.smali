.class public Lcom/delan/app/germanybluetooth/bean/RoomBean;
.super Ljava/lang/Object;
.source "RoomBean.java"


# instance fields
.field public cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

.field private final ctx:Landroid/content/Context;

.field private isProgmaticRoom:Z

.field private mCometBlueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;",
            ">;"
        }
    .end annotation
.end field

.field private mHasConnected:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedToTryConnect:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;",
            ">;"
        }
    .end annotation
.end field

.field private mProgmaticBlueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;",
            ">;"
        }
    .end annotation
.end field

.field private mProgtimeBlueList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;",
            ">;"
        }
    .end annotation
.end field

.field public progmaticValueMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;",
            ">;"
        }
    .end annotation
.end field

.field public progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

.field private text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->isProgmaticRoom:Z

    .line 102
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->ctx:Landroid/content/Context;

    .line 103
    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->text:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->text:Ljava/lang/String;

    const v1, 0x7f06006e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->isProgmaticRoom:Z

    .line 106
    :cond_1c
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->init()V

    .line 107
    return-void
.end method

.method private updateDeviceList(Landroid/content/Context;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 186
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 187
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->originalName:Ljava/lang/String;

    const v3, 0x7f060026

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 188
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mCometBlueList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 189
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mCometBlueList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 190
    :cond_2f
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->originalName:Ljava/lang/String;

    const v3, 0x7f060029

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 191
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mProgtimeBlueList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 192
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mProgtimeBlueList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 193
    :cond_4c
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->originalName:Ljava/lang/String;

    const v3, 0x7f060028

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 194
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mProgmaticBlueList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 195
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mProgmaticBlueList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 198
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :cond_69
    return-void
.end method


# virtual methods
.method public addNewAddedDevices(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz p2, :cond_20

    .line 69
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 70
    .local v0, "de":Landroid/bluetooth/BluetoothDevice;
    new-instance v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-direct {v1, v0}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;-><init>(Landroid/bluetooth/BluetoothDevice;)V

    .line 71
    .local v1, "detail":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 73
    .end local v0    # "de":Landroid/bluetooth/BluetoothDevice;
    .end local v1    # "detail":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :cond_1d
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->updateDeviceList(Landroid/content/Context;)V

    .line 75
    :cond_20
    return-void
.end method

.method public deviceConnectionStatusChanged(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGatt;Z)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p3, "connected"    # Z

    .prologue
    .line 129
    if-nez p1, :cond_3

    .line 151
    :cond_2
    :goto_2
    return-void

    .line 131
    :cond_3
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 132
    .local v0, "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->clear()V

    .line 134
    iput-object p1, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    .line 135
    iput-boolean p3, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->connected:Z

    .line 136
    iput-object p2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->gatt:Landroid/bluetooth/BluetoothGatt;

    .line 137
    if-eqz p3, :cond_33

    .line 138
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 139
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 140
    :cond_25
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mHasConnected:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mHasConnected:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 144
    :cond_33
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mHasConnected:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40

    .line 145
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mHasConnected:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 147
    :cond_40
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    if-nez p1, :cond_4

    .line 207
    const/4 v0, 0x0

    .line 212
    :cond_3
    return-object v0

    .line 208
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v0, "availableList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 210
    .local v1, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget v3, v1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->successSetPin:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_d

    .line 211
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d
.end method

.method public getCometBlueList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mCometBlueList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .registers 6
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object v0, v1

    .line 118
    :goto_8
    return-object v0

    .line 112
    :cond_9
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mHasConnected:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 113
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    goto :goto_8

    .line 115
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :cond_26
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 116
    .restart local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_8

    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :cond_43
    move-object v0, v1

    .line 118
    goto :goto_8
.end method

.method public getHasConnected()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mHasConnected:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNeedToTryConnect()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getProgtimeBlueList()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mProgtimeBlueList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->text:Ljava/lang/String;

    return-object v0
.end method

.method public hasDeviceFound()Z
    .registers 4

    .prologue
    .line 402
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 403
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_6

    .line 404
    const/4 v1, 0x1

    .line 407
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x0

    goto :goto_17
.end method

.method public hasFoundAllDevice()Z
    .registers 4

    .prologue
    .line 394
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 395
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->ble:Landroid/bluetooth/BluetoothDevice;

    if-nez v2, :cond_6

    .line 396
    const/4 v1, 0x0

    .line 398
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :goto_17
    return v1

    :cond_18
    const/4 v1, 0x1

    goto :goto_17
.end method

.method public init()V
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    if-nez v0, :cond_5d

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    .line 158
    :goto_b
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mHasConnected:Ljava/util/ArrayList;

    if-nez v0, :cond_63

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mHasConnected:Ljava/util/ArrayList;

    .line 162
    :goto_16
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->isProgmaticRoom:Z

    if-nez v0, :cond_25

    .line 163
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mCometBlueList:Ljava/util/ArrayList;

    if-nez v0, :cond_69

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mCometBlueList:Ljava/util/ArrayList;

    .line 168
    :cond_25
    :goto_25
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->isProgmaticRoom:Z

    if-nez v0, :cond_34

    .line 169
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mProgtimeBlueList:Ljava/util/ArrayList;

    if-nez v0, :cond_6f

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mProgtimeBlueList:Ljava/util/ArrayList;

    .line 173
    :cond_34
    :goto_34
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->isProgmaticRoom:Z

    if-eqz v0, :cond_43

    .line 174
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mProgmaticBlueList:Ljava/util/ArrayList;

    if-nez v0, :cond_75

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mProgmaticBlueList:Ljava/util/ArrayList;

    .line 178
    :cond_43
    :goto_43
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->isProgmaticRoom:Z

    if-nez v0, :cond_5c

    .line 179
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/CometChars;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/CometChars;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    .line 180
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    invoke-direct {v0}, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    .line 181
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    .line 183
    :cond_5c
    return-void

    .line 156
    :cond_5d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_b

    .line 160
    :cond_63
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mHasConnected:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_16

    .line 166
    :cond_69
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mCometBlueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_25

    .line 171
    :cond_6f
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mProgtimeBlueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_34

    .line 176
    :cond_75
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mProgmaticBlueList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_43
.end method

.method public newValueForCharacteristic(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 13
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v7, 0x10

    const/16 v5, 0x8

    const/16 v6, 0x9

    .line 231
    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v2

    if-nez v2, :cond_13

    .line 391
    :cond_12
    :goto_12
    return-void

    .line 233
    :cond_13
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->weatherDeviceBelongTheRoom(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 235
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v1

    .line 236
    .local v1, "rawValue":[B
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const/4 v2, -0x1

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_40e

    :cond_35
    :goto_35
    packed-switch v2, :pswitch_data_494

    goto :goto_12

    .line 238
    :pswitch_39
    array-length v2, v1

    if-lt v2, v5, :cond_12

    .line 239
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    goto :goto_12

    .line 236
    :sswitch_4a
    const-string v9, "47e9ee10-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    move v2, v3

    goto :goto_35

    :sswitch_54
    const-string v9, "47e9ee11-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    move v2, v4

    goto :goto_35

    :sswitch_5e
    const-string v9, "47e9ee12-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/4 v2, 0x2

    goto :goto_35

    :sswitch_68
    const-string v9, "47e9ee13-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/4 v2, 0x3

    goto :goto_35

    :sswitch_72
    const-string v9, "47e9ee14-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/4 v2, 0x4

    goto :goto_35

    :sswitch_7c
    const-string v9, "47e9ee15-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/4 v2, 0x5

    goto :goto_35

    :sswitch_86
    const-string v9, "47e9ee16-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/4 v2, 0x6

    goto :goto_35

    :sswitch_90
    const-string v9, "47e9ee20-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/4 v2, 0x7

    goto :goto_35

    :sswitch_9a
    const-string v9, "47e9ee21-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    move v2, v5

    goto :goto_35

    :sswitch_a4
    const-string v9, "47e9ee22-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    move v2, v6

    goto :goto_35

    :sswitch_ae
    const-string v9, "47e9ee23-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0xa

    goto/16 :goto_35

    :sswitch_ba
    const-string v9, "47e9ee24-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0xb

    goto/16 :goto_35

    :sswitch_c6
    const-string v9, "47e9ee25-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0xc

    goto/16 :goto_35

    :sswitch_d2
    const-string v9, "47e9ee26-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0xd

    goto/16 :goto_35

    :sswitch_de
    const-string v9, "47e9ee27-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0xe

    goto/16 :goto_35

    :sswitch_ea
    const-string v9, "47e9ee2a-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0xf

    goto/16 :goto_35

    :sswitch_f6
    const-string v9, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    move v2, v7

    goto/16 :goto_35

    :sswitch_101
    const-string v9, "47e9ee2c-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x11

    goto/16 :goto_35

    :sswitch_10d
    const-string v9, "00002a26-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x12

    goto/16 :goto_35

    :sswitch_119
    const-string v9, "00002a28-0000-1000-8000-00805f9b34fb"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x13

    goto/16 :goto_35

    :sswitch_125
    const-string v9, "47e9ee2e-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x14

    goto/16 :goto_35

    :sswitch_131
    const-string v9, "47e9ee30-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x15

    goto/16 :goto_35

    :sswitch_13d
    const-string v9, "47e9ef52-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x16

    goto/16 :goto_35

    :sswitch_149
    const-string v9, "47e9ef53-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x17

    goto/16 :goto_35

    :sswitch_155
    const-string v9, "47e9ef54-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x18

    goto/16 :goto_35

    :sswitch_161
    const-string v9, "47e9ef55-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x19

    goto/16 :goto_35

    :sswitch_16d
    const-string v9, "47e9ef56-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x1a

    goto/16 :goto_35

    :sswitch_179
    const-string v9, "47e9ef57-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x1b

    goto/16 :goto_35

    :sswitch_185
    const-string v9, "47e9ef58-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x1c

    goto/16 :goto_35

    :sswitch_191
    const-string v9, "47e9ef59-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x1d

    goto/16 :goto_35

    :sswitch_19d
    const-string v9, "47e9ef60-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x1e

    goto/16 :goto_35

    :sswitch_1a9
    const-string v9, "47e9ef61-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x1f

    goto/16 :goto_35

    :sswitch_1b5
    const-string v9, "47e9ef62-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    const/16 v2, 0x20

    goto/16 :goto_35

    .line 242
    :pswitch_1c1
    array-length v2, v1

    if-lt v2, v5, :cond_12

    .line 243
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    goto/16 :goto_12

    .line 246
    :pswitch_1d3
    array-length v2, v1

    if-lt v2, v5, :cond_12

    .line 247
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    goto/16 :goto_12

    .line 250
    :pswitch_1e5
    array-length v2, v1

    if-lt v2, v5, :cond_12

    .line 251
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    goto/16 :goto_12

    .line 254
    :pswitch_1f7
    array-length v2, v1

    if-lt v2, v5, :cond_12

    .line 255
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    goto/16 :goto_12

    .line 258
    :pswitch_209
    array-length v2, v1

    if-lt v2, v5, :cond_12

    .line 259
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    goto/16 :goto_12

    .line 262
    :pswitch_21b
    array-length v2, v1

    if-lt v2, v5, :cond_12

    .line 263
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    goto/16 :goto_12

    .line 266
    :pswitch_22d
    array-length v2, v1

    if-lt v2, v6, :cond_12

    .line 267
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday1:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    goto/16 :goto_12

    .line 270
    :pswitch_23f
    array-length v2, v1

    if-lt v2, v6, :cond_12

    .line 271
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday2:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    goto/16 :goto_12

    .line 274
    :pswitch_251
    array-length v2, v1

    if-lt v2, v6, :cond_12

    .line 275
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday3:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    goto/16 :goto_12

    .line 278
    :pswitch_263
    array-length v2, v1

    if-lt v2, v6, :cond_12

    .line 279
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday4:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    goto/16 :goto_12

    .line 282
    :pswitch_275
    array-length v2, v1

    if-lt v2, v6, :cond_12

    .line 283
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday5:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    goto/16 :goto_12

    .line 286
    :pswitch_287
    array-length v2, v1

    if-lt v2, v6, :cond_12

    .line 287
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday6:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    goto/16 :goto_12

    .line 290
    :pswitch_299
    array-length v2, v1

    if-lt v2, v6, :cond_12

    .line 291
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday7:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    goto/16 :goto_12

    .line 294
    :pswitch_2ab
    array-length v2, v1

    if-lt v2, v6, :cond_12

    .line 295
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday8:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    goto/16 :goto_12

    .line 298
    :pswitch_2bd
    array-length v2, v1

    const/4 v3, 0x3

    if-lt v2, v3, :cond_12

    .line 299
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;

    goto/16 :goto_12

    .line 302
    :pswitch_2d0
    array-length v2, v1

    const/4 v3, 0x7

    if-lt v2, v3, :cond_12

    .line 303
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    goto/16 :goto_12

    .line 306
    :pswitch_2e3
    array-length v2, v1

    if-lt v2, v4, :cond_12

    .line 307
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 308
    .local v0, "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_12

    .line 309
    aget-byte v2, v1, v3

    const/4 v4, -0x1

    if-lt v2, v4, :cond_12

    aget-byte v2, v1, v3

    const/16 v4, 0x64

    if-ge v2, v4, :cond_12

    .line 310
    aget-byte v2, v1, v3

    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->battery:I

    goto/16 :goto_12

    .line 316
    .end local v0    # "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :pswitch_301
    array-length v2, v1

    if-lez v2, :cond_12

    .line 317
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 318
    .restart local v0    # "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_12

    .line 319
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->coblVersion:Ljava/lang/String;

    goto/16 :goto_12

    .line 324
    .end local v0    # "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :pswitch_317
    array-length v2, v1

    if-lez v2, :cond_12

    .line 325
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 326
    .restart local v0    # "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_12

    .line 327
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->rfblVersion:Ljava/lang/String;

    goto/16 :goto_12

    .line 332
    .end local v0    # "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :pswitch_32d
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_12

    .line 333
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/LcdTimer;

    invoke-direct {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/LcdTimer;-><init>([B)V

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->lcdTimer:Lcom/delan/app/germanybluetooth/bean/chars/LcdTimer;

    goto/16 :goto_12

    .line 336
    :pswitch_33c
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    .line 337
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 338
    .restart local v0    # "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_12

    .line 339
    invoke-static {v1}, Lutils/NumberConvert;->bytes2Int([B)I

    move-result v2

    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->actualPin:I

    goto/16 :goto_12

    .line 344
    .end local v0    # "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :pswitch_352
    array-length v2, v1

    if-lt v2, v7, :cond_12

    .line 345
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto/16 :goto_12

    .line 348
    :pswitch_364
    array-length v2, v1

    if-lt v2, v7, :cond_12

    .line 349
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto/16 :goto_12

    .line 352
    :pswitch_376
    array-length v2, v1

    if-lt v2, v7, :cond_12

    .line 353
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto/16 :goto_12

    .line 356
    :pswitch_388
    array-length v2, v1

    if-lt v2, v7, :cond_12

    .line 357
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto/16 :goto_12

    .line 360
    :pswitch_39a
    array-length v2, v1

    if-lt v2, v7, :cond_12

    .line 361
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto/16 :goto_12

    .line 364
    :pswitch_3ac
    array-length v2, v1

    if-lt v2, v7, :cond_12

    .line 365
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto/16 :goto_12

    .line 368
    :pswitch_3be
    array-length v2, v1

    if-lt v2, v7, :cond_12

    .line 369
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto/16 :goto_12

    .line 372
    :pswitch_3d0
    array-length v2, v1

    if-lt v2, v4, :cond_12

    .line 373
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    new-instance v3, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;-><init>()V

    invoke-virtual {v3, v1}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->toObject([B)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;

    move-result-object v3

    iput-object v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;

    goto/16 :goto_12

    .line 376
    :pswitch_3e2
    array-length v2, v1

    if-lt v2, v4, :cond_12

    .line 377
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    aget-byte v3, v1, v3

    iput v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->result:I

    goto/16 :goto_12

    .line 380
    :pswitch_3ed
    array-length v2, v1

    if-lt v2, v4, :cond_12

    .line 381
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    aget-byte v3, v1, v3

    iput v3, v2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->startDataTransfer:I

    goto/16 :goto_12

    .line 384
    :pswitch_3f8
    array-length v2, v1

    const/4 v3, 0x4

    if-ne v2, v3, :cond_12

    .line 385
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getDeviceBean(Ljava/lang/String;)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 386
    .restart local v0    # "deviceBean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_12

    .line 387
    invoke-static {v1}, Lutils/NumberConvert;->bytes2Int([B)I

    move-result v2

    iput v2, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->actualPin:I

    goto/16 :goto_12

    .line 236
    :sswitch_data_40e
    .sparse-switch
        -0x77dccf83 -> :sswitch_191
        -0x75105475 -> :sswitch_125
        -0x6fbc2a89 -> :sswitch_149
        -0x5e07bcc5 -> :sswitch_72
        -0x5dd824f5 -> :sswitch_119
        -0x5d5b1126 -> :sswitch_ba
        -0x466c4608 -> :sswitch_155
        -0x34b7d844 -> :sswitch_7c
        -0x340b2ca5 -> :sswitch_c6
        -0x1d1c6187 -> :sswitch_161
        -0x1a4fe679 -> :sswitch_ea
        -0xb67f3c3 -> :sswitch_86
        -0xabb4824 -> :sswitch_d2
        -0x3474ec9 -> :sswitch_4a
        -0x29aa32a -> :sswitch_90
        -0x1edf78b -> :sswitch_131
        0xc3382fa -> :sswitch_16d
        0xefffe08 -> :sswitch_f6
        0x1500d393 -> :sswitch_19d
        0x1e949c5d -> :sswitch_de
        0x260895b8 -> :sswitch_54
        0x26b54157 -> :sswitch_9a
        0x3583677b -> :sswitch_179
        0x384fe289 -> :sswitch_101
        0x3e50b814 -> :sswitch_1a9
        0x4f587a39 -> :sswitch_5e
        0x4f881209 -> :sswitch_10d
        0x500525d8 -> :sswitch_a4
        0x5ed34bfc -> :sswitch_185
        0x66f3f0f6 -> :sswitch_13d
        0x67a09c95 -> :sswitch_1b5
        0x78a85eba -> :sswitch_68
        0x79550a59 -> :sswitch_ae
    .end sparse-switch

    :pswitch_data_494
    .packed-switch 0x0
        :pswitch_39
        :pswitch_1c1
        :pswitch_1d3
        :pswitch_1e5
        :pswitch_1f7
        :pswitch_209
        :pswitch_21b
        :pswitch_22d
        :pswitch_23f
        :pswitch_251
        :pswitch_263
        :pswitch_275
        :pswitch_287
        :pswitch_299
        :pswitch_2ab
        :pswitch_2bd
        :pswitch_2d0
        :pswitch_2e3
        :pswitch_301
        :pswitch_317
        :pswitch_32d
        :pswitch_33c
        :pswitch_352
        :pswitch_364
        :pswitch_376
        :pswitch_388
        :pswitch_39a
        :pswitch_3ac
        :pswitch_3be
        :pswitch_3d0
        :pswitch_3e2
        :pswitch_3ed
        :pswitch_3f8
    .end packed-switch
.end method

.method public remove(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V
    .registers 5
    .param p1, "bean"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .prologue
    .line 411
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 412
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mHasConnected:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 413
    iget-object v0, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->originalName:Ljava/lang/String;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->ctx:Landroid/content/Context;

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 414
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mCometBlueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 419
    :cond_20
    :goto_20
    return-void

    .line 415
    :cond_21
    iget-object v0, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->originalName:Ljava/lang/String;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->ctx:Landroid/content/Context;

    const v2, 0x7f060029

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 416
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mProgtimeBlueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_20

    .line 417
    :cond_38
    iget-object v0, p1, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->originalName:Ljava/lang/String;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->ctx:Landroid/content/Context;

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 418
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mProgmaticBlueList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_20
.end method

.method public setText(Ljava/lang/String;)V
    .registers 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->text:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public updateDeviceListFromDB(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 12
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/bean/DataBaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p2, "dbRecords":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;"
    if-eqz p2, :cond_2c

    .line 52
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;

    .line 53
    .local v7, "db":Lcom/delan/app/germanybluetooth/bean/DataBaseBean;
    new-instance v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v1, v7, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->address:Ljava/lang/String;

    iget-object v2, v7, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->showName:Ljava/lang/String;

    iget-object v3, v7, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->originalName:Ljava/lang/String;

    iget v4, v7, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->pin:I

    iget-object v5, v7, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->coblVersion:Ljava/lang/String;

    iget-object v6, v7, Lcom/delan/app/germanybluetooth/bean/DataBaseBean;->rfblVersion:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 54
    .local v0, "detail":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 56
    .end local v0    # "detail":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .end local v7    # "db":Lcom/delan/app/germanybluetooth/bean/DataBaseBean;
    :cond_29
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->updateDeviceList(Landroid/content/Context;)V

    .line 58
    :cond_2c
    return-void
.end method

.method public weatherDeviceBelongTheRoom(Ljava/lang/String;)Z
    .registers 7
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 216
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 226
    :cond_8
    :goto_8
    return v1

    .line 218
    :cond_9
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mNeedToTryConnect:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 219
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    move v1, v2

    .line 220
    goto :goto_8

    .line 222
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :cond_27
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->mHasConnected:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 223
    .restart local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2d

    move v1, v2

    .line 224
    goto :goto_8
.end method
