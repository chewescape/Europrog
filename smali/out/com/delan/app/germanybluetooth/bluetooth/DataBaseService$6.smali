.class Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$6;
.super Ljava/lang/Object;
.source "DataBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->getAllRoomAndDevices(Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

.field final synthetic val$msgId:I

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Landroid/os/Handler;I)V
    .registers 4
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$6;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$6;->val$uiHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$6;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .prologue
    .line 145
    new-instance v2, Lutils/DatabaseHelper;

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$6;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-direct {v2, v5}, Lutils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 146
    .local v2, "dbHelper":Lutils/DatabaseHelper;
    invoke-virtual {v2}, Lutils/DatabaseHelper;->getAllRoom()Ljava/util/ArrayList;

    move-result-object v4

    .line 147
    .local v4, "rooms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 148
    .local v1, "allDevice":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;>;"
    if-eqz v4, :cond_2a

    .line 149
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_16
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 150
    .local v3, "roomName":Ljava/lang/String;
    invoke-virtual {v2, v3}, Lutils/DatabaseHelper;->getRecordInRoom(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 151
    .local v0, "addressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;"
    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 153
    .end local v0    # "addressList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DataBaseBean;>;"
    .end local v3    # "roomName":Ljava/lang/String;
    :cond_2a
    invoke-virtual {v2}, Lutils/DatabaseHelper;->close()V

    .line 154
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$6;->val$uiHandler:Landroid/os/Handler;

    iget v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$6;->val$msgId:I

    invoke-virtual {v5, v6, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 155
    return-void
.end method
