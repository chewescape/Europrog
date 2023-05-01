.class Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$1;
.super Lutils/DialogUtils$DialogCallBack;
.source "ProgmaticTemperatureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->selectTemperatureHeatDialog()V
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
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 103
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$1;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 8
    .param p1, "heat"    # Ljava/lang/String;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 107
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .local v2, "s1":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4e

    .line 110
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-static {v4, v2}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->String2TempNum(Landroid/content/Context;Ljava/lang/String;)I

    move-result v4

    int-to-byte v3, v4

    .line 111
    .local v3, "tempNum":B
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_31
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    .local v0, "fileName":Ljava/lang/String;
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-static {v5}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v5

    iget-object v5, v5, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 113
    .local v1, "progmaticValue":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iput-byte v3, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->heatingTmperature:B

    goto :goto_31

    .line 116
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "progmaticValue":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    .end local v3    # "tempNum":B
    :cond_4e
    return-void
.end method
