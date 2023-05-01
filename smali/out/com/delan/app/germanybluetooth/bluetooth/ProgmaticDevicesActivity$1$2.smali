.class Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$2;
.super Lutils/DialogUtils$DialogCallBack;
.source "ProgmaticDevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->onRightMenuListener(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iput p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$2;->val$position:I

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveButton(Ljava/lang/Object;)V
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 123
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    iget-object v0, v1, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->simpleName:Ljava/lang/String;

    .line 124
    .local v0, "profileName":Ljava/lang/String;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$600(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->deleteFile(Ljava/lang/String;)Z

    .line 125
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$700(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v1

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$2;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->notifyDataSetChanged()V

    .line 127
    return-void
.end method
