.class Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$9;
.super Ljava/lang/Object;
.source "DataBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->deleteRecord(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

.field final synthetic val$deviceAddress:Ljava/lang/String;

.field final synthetic val$tableName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$9;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$9;->val$tableName:Ljava/lang/String;

    iput-object p3, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$9;->val$deviceAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 199
    new-instance v0, Lutils/DatabaseHelper;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$9;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-direct {v0, v1}, Lutils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, "databaseHelper":Lutils/DatabaseHelper;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$9;->val$tableName:Ljava/lang/String;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$9;->val$deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lutils/DatabaseHelper;->deleteRecord(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Lutils/DatabaseHelper;->close()V

    .line 202
    return-void
.end method
