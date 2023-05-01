.class Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$2;
.super Ljava/lang/Object;
.source "DataBaseService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->createRoomInDataBase(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

.field final synthetic val$roomName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$2;->val$roomName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 75
    new-instance v0, Lutils/DatabaseHelper;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    invoke-direct {v0, v1}, Lutils/DatabaseHelper;-><init>(Landroid/content/Context;)V

    .line 76
    .local v0, "dbHelper":Lutils/DatabaseHelper;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService$2;->val$roomName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lutils/DatabaseHelper;->createRoom(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v0}, Lutils/DatabaseHelper;->close()V

    .line 78
    return-void
.end method
