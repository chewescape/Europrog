.class Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$3;
.super Lutils/DialogUtils$DialogCallBack;
.source "ProgmaticTemperatureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->selectTemperatureOffsetDialog()V
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
    .line 149
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 149
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$3;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 8
    .param p1, "offset"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 153
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->access$500(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_51

    .line 155
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 156
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->SheShiDuTpTempNum(D)I

    move-result v3

    int-to-byte v1, v3

    .line 157
    .local v1, "num":B
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 158
    .local v0, "fileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->access$600(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v4

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 159
    .local v2, "progmaticValue":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iput-byte v1, v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->offset:B

    goto :goto_34

    .line 162
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "num":B
    .end local v2    # "progmaticValue":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :cond_51
    return-void
.end method
