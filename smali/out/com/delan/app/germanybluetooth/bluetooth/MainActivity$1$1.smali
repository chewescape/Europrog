.class Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$1;
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

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lutils/DialogUtils$DialogCallBack",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;I)V
    .registers 3
    .param p1, "this$1"    # Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

    iput p2, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$1;->val$position:I

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 93
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$1;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 96
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_14

    .line 97
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    const v1, 0x7f06002c

    invoke-static {v0, v1}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;I)V

    .line 104
    :goto_13
    return-void

    .line 98
    :cond_14
    sget-object v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    const v1, 0x7f06006e

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 99
    :cond_2d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    const v2, 0x7f06008c

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_13

    .line 101
    :cond_40
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;)Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    move-result-object v1

    sget-object v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->list:Ljava/util/ArrayList;

    iget v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1$1;->this$1:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;)Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    move-result-object v2

    const/16 v3, 0x66

    invoke-virtual {v1, v0, p1, v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->changeTableName(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;I)V

    goto :goto_13
.end method
