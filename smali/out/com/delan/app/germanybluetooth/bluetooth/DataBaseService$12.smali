.class Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$12;
.super Ljava/lang/Object;
.source "DataBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->showProfileInLocal(Landroid/os/Handler;I)V
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
    .line 247
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$12;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$12;->val$uiHandler:Landroid/os/Handler;

    iput p3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$12;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 250
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$12;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 259
    :cond_8
    :goto_8
    return-void

    .line 252
    :cond_9
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$12;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    const-string v3, "/progmaticProfiles/"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->ifParentDirNotExistCreate(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "files":[Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 254
    .local v0, "fileList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_1f

    .line 255
    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 257
    :cond_1f
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$12;->val$uiHandler:Landroid/os/Handler;

    if-eqz v2, :cond_8

    .line 258
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$12;->val$uiHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$12;->val$msgId:I

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_8
.end method
