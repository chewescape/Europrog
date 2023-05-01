.class public Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;
.super Landroid/app/Service;
.source "DataBaseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$OnDbResult;
    }
.end annotation


# static fields
.field private static final profileDir:Ljava/lang/String; = "/progmaticProfiles/"

.field public static final updateDir:Ljava/lang/String; = "/updateFiles/"


# instance fields
.field public final mFixedThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 47
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->isExternalStorageWritable()Z

    move-result v0

    return v0
.end method

.method private isExternalStorageWritable()Z
    .registers 3

    .prologue
    .line 264
    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addBleToDataBase(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .registers 5
    .param p1, "roomName"    # Ljava/lang/String;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public changeTableName(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V
    .registers 12
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;
    .param p3, "uiHandler"    # Landroid/os/Handler;
    .param p4, "msgId"    # I

    .prologue
    .line 226
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 238
    return-void
.end method

.method public createRoomInDataBase(Ljava/lang/String;)V
    .registers 4
    .param p1, "roomName"    # Ljava/lang/String;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$2;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$2;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 80
    return-void
.end method

.method public deleteFile(Ljava/lang/String;)Z
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$14;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$14;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public deleteRecord(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "deviceAddress"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$9;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public deleteRoomFromDB(Ljava/lang/String;)V
    .registers 4
    .param p1, "roomName"    # Ljava/lang/String;

    .prologue
    .line 185
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$8;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$8;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 193
    return-void
.end method

.method public fileRename(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "oldName"    # Ljava/lang/String;
    .param p2, "newName"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$13;

    invoke-direct {v1, p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$13;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public getAllRoomAndDevices(Landroid/os/Handler;I)V
    .registers 5
    .param p1, "uiHandler"    # Landroid/os/Handler;
    .param p2, "msgId"    # I

    .prologue
    .line 142
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$6;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Landroid/os/Handler;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method public getBleDevicesInTheRoomAndStartScan(Ljava/lang/String;Landroid/os/Handler;I)V
    .registers 6
    .param p1, "roomName"    # Ljava/lang/String;
    .param p2, "uiHandler"    # Landroid/os/Handler;
    .param p3, "msgId"    # I

    .prologue
    .line 167
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$7;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;Landroid/os/Handler;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 177
    return-void
.end method

.method public ifDeviceNotInAnyRoomAddToShow(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;I)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uiHandler"    # Landroid/os/Handler;
    .param p3, "msgId"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$3;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public ifParentDirNotExistCreate(Ljava/lang/String;)Ljava/io/File;
    .registers 5
    .param p1, "subPath"    # Ljava/lang/String;

    .prologue
    .line 269
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 270
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 274
    .local v0, "dir":Ljava/io/File;
    :goto_2b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_34

    .line 275
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 276
    :cond_34
    return-object v0

    .line 272
    .end local v0    # "dir":Ljava/io/File;
    :cond_35
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v0    # "dir":Ljava/io/File;
    goto :goto_2b
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    return-object v0
.end method

.method public queryDeviceRoom(Landroid/bluetooth/BluetoothDevice;Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$OnDbResult;)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "callBack"    # Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$OnDbResult;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$4;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Landroid/bluetooth/BluetoothDevice;Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$OnDbResult;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public readProfiles(Ljava/util/ArrayList;Landroid/os/Handler;I)V
    .registers 6
    .param p2, "uiHandler"    # Landroid/os/Handler;
    .param p3, "msgId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, "filesName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$15;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/util/ArrayList;Landroid/os/Handler;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method public showProfileInLocal(Landroid/os/Handler;I)V
    .registers 5
    .param p1, "uiHandler"    # Landroid/os/Handler;
    .param p2, "msgId"    # I

    .prologue
    .line 247
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$12;

    invoke-direct {v1, p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$12;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Landroid/os/Handler;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method

.method public showRoomInDataBase(Landroid/os/Handler;I)V
    .registers 5
    .param p1, "uiHandler"    # Landroid/os/Handler;
    .param p2, "msgId"    # I

    .prologue
    .line 130
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$5;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Landroid/os/Handler;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method

.method public updateRecord(Ljava/lang/String;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V
    .registers 11
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "bean"    # Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .prologue
    .line 207
    invoke-virtual {p2}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->originalName:Ljava/lang/String;

    iget-object v4, p2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->showName:Ljava/lang/String;

    iget v5, p2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->actualPin:I

    iget-object v6, p2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->coblVersion:Ljava/lang/String;

    iget-object v7, p2, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->rfblVersion:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->updateRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 208
    return-void
.end method

.method public updateRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 18
    .param p1, "tableName"    # Ljava/lang/String;
    .param p2, "devcieAddress"    # Ljava/lang/String;
    .param p3, "originalName"    # Ljava/lang/String;
    .param p4, "showName"    # Ljava/lang/String;
    .param p5, "pin"    # I
    .param p6, "coblVersion"    # Ljava/lang/String;
    .param p7, "rfblVersion"    # Ljava/lang/String;

    .prologue
    .line 211
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 223
    return-void
.end method

.method public writeProfile(Ljava/lang/String;)V
    .registers 3
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 372
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 373
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->writeProfiles(Ljava/util/ArrayList;)V

    .line 375
    return-void
.end method

.method public writeProfiles(Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 344
    .local p1, "filesName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->mFixedThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$16;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$16;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/util/ArrayList;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 369
    return-void
.end method
