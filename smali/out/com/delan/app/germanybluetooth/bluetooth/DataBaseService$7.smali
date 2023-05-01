.class Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$7;
.super Ljava/lang/Object;
.source "DataBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->getBleDevicesInTheRoomAndStartScan(Ljava/lang/String;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

.field final synthetic val$msgId:I

.field final synthetic val$roomName:Ljava/lang/String;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;Landroid/os/Handler;I)V
    .registers 5
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$7;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$7;->val$roomName:Ljava/lang/String;

    iput-object p3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$7;->val$uiHandler:Landroid/os/Handler;

    iput p4, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$7;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 170
    new-instance v1, Lutils/DatabaseHelper;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$7;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-direct {v1, v2}, Lutils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, "dbHelper":Lutils/DatabaseHelper;
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$7;->val$roomName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lutils/DatabaseHelper;->getRecordInRoom(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 172
    .local v0, "addressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;"
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$7;->val$uiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1c

    .line 173
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$7;->val$uiHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$7;->val$msgId:I

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 174
    :cond_1c
    invoke-virtual {v1}, Lutils/DatabaseHelper;->close()V

    .line 175
    return-void
.end method
