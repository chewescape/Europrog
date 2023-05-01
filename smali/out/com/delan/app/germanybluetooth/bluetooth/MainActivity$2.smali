.class Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$2;
.super Lutils/DialogUtils$DialogCallBack;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->doClickRightAction()V
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
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 155
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$2;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 170
    :goto_6
    return-void

    .line 160
    :cond_7
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_19

    .line 161
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    const v1, 0x7f06002c

    invoke-static {v0, v1}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;I)V

    goto :goto_6

    .line 162
    :cond_19
    sget-object v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    const v1, 0x7f06006e

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 163
    :cond_30
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    const v2, 0x7f060077

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_6

    .line 165
    :cond_3f
    sget-object v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;)Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    move-result-object v0

    sget-object v1, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->notifyData(Ljava/util/ArrayList;)V

    .line 167
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;)Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->createRoomInDataBase(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    goto :goto_6
.end method
