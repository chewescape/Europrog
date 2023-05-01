.class Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$3;
.super Lutils/DialogUtils$DialogCallBack;
.source "ProgmaticDevicesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public onPositiveButton(Ljava/lang/Object;)V
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 235
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    const-class v2, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->access$900(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getText()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x67

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;->gotoActivityForResult(Landroid/content/Context;Ljava/lang/Class;Ljava/io/Serializable;I)V

    .line 237
    return-void
.end method
