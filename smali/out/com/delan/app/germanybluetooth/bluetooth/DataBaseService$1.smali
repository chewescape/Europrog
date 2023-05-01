.class Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$1;
.super Ljava/lang/Object;
.source "DataBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->addBleToDataBase(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;

.field final synthetic val$roomName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .registers 4
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$1;->val$roomName:Ljava/lang/String;

    iput-object p3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v6, 0x0

    .line 59
    new-instance v0, Lutils/DatabaseHelper;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-direct {v0, v1}, Lutils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 60
    .local v0, "dbHelper":Lutils/DatabaseHelper;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$1;->val$roomName:Ljava/lang/String;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lutils/DatabaseHelper;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {v0}, Lutils/DatabaseHelper;->close()V

    .line 62
    return-void
.end method
