.class Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$2;
.super Lutils/DialogUtils$DialogCallBack;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->onRightMenuListener(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

    iput p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$2;->val$position:I

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveButton(Ljava/lang/Object;)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 114
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;)Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    move-result-object v1

    sget-object v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->list:Ljava/util/ArrayList;

    iget v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$2;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->deleteRoomFromDB(Ljava/lang/String;)V

    .line 116
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;)Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    move-result-object v0

    sget-object v1, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->notifyData(Ljava/util/ArrayList;)V

    .line 117
    return-void
.end method
