.class Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;
.super Ljava/lang/Object;
.source "DataBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->updateRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

.field final synthetic val$coblVersion:Ljava/lang/String;

.field final synthetic val$devcieAddress:Ljava/lang/String;

.field final synthetic val$originalName:Ljava/lang/String;

.field final synthetic val$pin:I

.field final synthetic val$rfblVersion:Ljava/lang/String;

.field final synthetic val$showName:Ljava/lang/String;

.field final synthetic val$tableName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$tableName:Ljava/lang/String;

    iput-object p3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$devcieAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$originalName:Ljava/lang/String;

    iput-object p5, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$showName:Ljava/lang/String;

    iput p6, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$pin:I

    iput-object p7, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$coblVersion:Ljava/lang/String;

    iput-object p8, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$rfblVersion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 214
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$tableName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$devcieAddress:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 221
    :cond_10
    :goto_10
    return-void

    .line 217
    :cond_11
    new-instance v0, Lutils/DatabaseHelper;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-direct {v0, v1}, Lutils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 218
    .local v0, "databaseHelper":Lutils/DatabaseHelper;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$devcieAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lutils/DatabaseHelper;->deleteRecord(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$devcieAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$originalName:Ljava/lang/String;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$showName:Ljava/lang/String;

    iget v5, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$pin:I

    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$coblVersion:Ljava/lang/String;

    iget-object v7, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$10;->val$rfblVersion:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lutils/DatabaseHelper;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0}, Lutils/DatabaseHelper;->close()V

    goto :goto_10
.end method
