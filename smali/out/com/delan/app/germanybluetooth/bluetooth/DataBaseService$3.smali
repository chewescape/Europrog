.class Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$3;
.super Ljava/lang/Object;
.source "DataBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->ifDeviceNotInAnyRoomAddToShow(Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$msgId:I

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Landroid/bluetooth/BluetoothDevice;Landroid/os/Handler;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$3;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$3;->val$uiHandler:Landroid/os/Handler;

    iput p4, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$3;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 94
    new-instance v0, Lutils/DatabaseHelper;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-direct {v0, v2}, Lutils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 95
    .local v0, "dbHelper":Lutils/DatabaseHelper;
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$3;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lutils/DatabaseHelper;->getBleRoom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "room":Ljava/lang/String;
    invoke-virtual {v0}, Lutils/DatabaseHelper;->close()V

    .line 97
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 98
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$3;->val$uiHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$3;->val$msgId:I

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$3;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3, v4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 100
    :cond_27
    return-void
.end method
