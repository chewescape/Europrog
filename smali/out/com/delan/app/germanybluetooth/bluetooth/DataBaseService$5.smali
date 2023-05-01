.class Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$5;
.super Ljava/lang/Object;
.source "DataBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->showRoomInDataBase(Landroid/os/Handler;I)V
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
    .line 130
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$5;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$5;->val$uiHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$5;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 133
    new-instance v0, Lutils/DatabaseHelper;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$5;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-direct {v0, v2}, Lutils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, "dbHelper":Lutils/DatabaseHelper;
    invoke-virtual {v0}, Lutils/DatabaseHelper;->getAllRoom()Ljava/util/ArrayList;

    move-result-object v1

    .line 135
    .local v1, "rooms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$5;->val$uiHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$5;->val$msgId:I

    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 136
    invoke-virtual {v0}, Lutils/DatabaseHelper;->close()V

    .line 137
    return-void
.end method
