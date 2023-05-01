.class Lcom/delan/app/germanybluetooth/base/BleActivity$2;
.super Lutils/DialogUtils$DialogCallBack;
.source "BleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/base/BleActivity;->setPinDialog(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V
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
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

.field final synthetic val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/base/BleActivity;Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;)V
    .registers 3
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/base/BleActivity;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    iput-object p2, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 538
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 8
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 541
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 543
    const-string v3, "."

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_21

    .line 544
    :cond_12
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    const v5, 0x7f060081

    invoke-virtual {v4, v5}, Lcom/delan/app/germanybluetooth/base/BleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/idelan/app/Util/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 572
    :cond_20
    :goto_20
    return-void

    .line 547
    :cond_21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 548
    .local v2, "pin":Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ltz v3, :cond_20

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0xf423f

    if-gt v3, v4, :cond_20

    .line 549
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    if-eqz v3, :cond_86

    .line 550
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->desiredPin:I

    .line 551
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget v4, v3, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->trySetPinCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->trySetPinCount:I

    .line 552
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->originalName:Ljava/lang/String;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    const v5, 0x7f060026

    invoke-virtual {v4, v5}, Lcom/delan/app/germanybluetooth/base/BleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 553
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v5, "47e9ee30-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v4, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto :goto_20

    .line 554
    :cond_67
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->originalName:Ljava/lang/String;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    const v5, 0x7f060029

    invoke-virtual {v4, v5}, Lcom/delan/app/germanybluetooth/base/BleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 555
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->val$deviceBean:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v5, "47e9ef62-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v4, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto :goto_20

    .line 558
    :cond_86
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getHasConnected()Ljava/util/ArrayList;

    move-result-object v1

    .line 559
    .local v1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_92
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 560
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->desiredPin:I

    goto :goto_92

    .line 563
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :cond_a5
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/base/BleActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getNeedToTryConnect()Ljava/util/ArrayList;

    move-result-object v1

    .line 564
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 565
    .restart local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->desiredPin:I

    goto :goto_b1

    .line 567
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    :cond_c4
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v4, "47e9ee30-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Ljava/lang/String;)V

    .line 568
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/base/BleActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v4, "47e9ef62-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Ljava/lang/String;)V

    .line 569
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/base/BleActivity$2;->this$0:Lcom/delan/app/germanybluetooth/base/BleActivity;

    const v5, 0x7f06007e

    invoke-virtual {v4, v5}, Lcom/delan/app/germanybluetooth/base/BleActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/idelan/app/Util/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_20
.end method
