.class Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$1;
.super Lutils/DialogUtils$DialogCallBack;
.source "RoomDevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->onRightMenuClicked(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutils/DialogUtils$DialogCallBack",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    iput p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$1;->val$position:I

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 137
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$1;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1c

    .line 141
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    const v3, 0x7f060025

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 149
    :goto_1b
    return-void

    .line 143
    :cond_1c
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 144
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    move-result-object v1

    iget v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$1;->val$position:I

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 145
    .local v0, "item":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iput-object p1, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->showName:Ljava/lang/String;

    .line 146
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->notifyDataSetChanged()V

    .line 147
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->updateRecord(Ljava/lang/String;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V

    goto :goto_1b
.end method
