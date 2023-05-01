.class Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutils/DialogUtils$DialogCallBack",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iput p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->val$position:I

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 95
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    iget-object v0, v1, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->simpleName:Ljava/lang/String;

    .line 99
    .local v0, "oldName":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_26

    .line 100
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    const v2, 0x7f06006a

    invoke-static {v1, v2}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;I)V

    .line 110
    :goto_25
    return-void

    .line 101
    :cond_26
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v1

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_49

    .line 102
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    const v3, 0x7f060077

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_25

    .line 104
    :cond_49
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 105
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->fileRename(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/ProfileBean;

    iput-object p1, v1, Lcom/delan/app/germanybluetooth/bean/ProfileBean;->simpleName:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$500(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v1

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v2

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;->notifyDataSetChanged()V

    goto :goto_25
.end method
