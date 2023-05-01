.class Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;
.super Ljava/lang/Object;
.source "DataBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->changeTableName(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

.field final synthetic val$msgId:I

.field final synthetic val$newName:Ljava/lang/String;

.field final synthetic val$oldName:Ljava/lang/String;

.field final synthetic val$uiHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V
    .registers 6
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;->val$oldName:Ljava/lang/String;

    iput-object p3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;->val$newName:Ljava/lang/String;

    iput-object p4, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;->val$uiHandler:Landroid/os/Handler;

    iput p5, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;->val$msgId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 229
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;->val$oldName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;->val$newName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 236
    :cond_10
    :goto_10
    return-void

    .line 232
    :cond_11
    new-instance v0, Lutils/DatabaseHelper;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-direct {v0, v1}, Lutils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, "databaseHelper":Lutils/DatabaseHelper;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;->val$oldName:Ljava/lang/String;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;->val$newName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lutils/DatabaseHelper;->changeTableName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 234
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;->val$uiHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;->val$msgId:I

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$11;->val$newName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_10
.end method
