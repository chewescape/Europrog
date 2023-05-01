.class Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$4;
.super Ljava/lang/Object;
.source "DataBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->queryDeviceRoom(Landroid/bluetooth/BluetoothDevice;Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$OnDbResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

.field final synthetic val$callBack:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$OnDbResult;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Landroid/bluetooth/BluetoothDevice;Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$OnDbResult;)V
    .registers 4
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$4;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$4;->val$callBack:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$OnDbResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 114
    new-instance v0, Lutils/DatabaseHelper;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$4;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-direct {v0, v2}, Lutils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 115
    .local v0, "dbHelper":Lutils/DatabaseHelper;
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$4;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lutils/DatabaseHelper;->getBleRoom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, "room":Ljava/lang/String;
    invoke-virtual {v0}, Lutils/DatabaseHelper;->close()V

    .line 117
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$4;->val$callBack:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$OnDbResult;

    if-eqz v2, :cond_23

    .line 118
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$4;->val$callBack:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$OnDbResult;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$4;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$OnDbResult;->onSuccess(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 119
    :cond_23
    return-void
.end method
