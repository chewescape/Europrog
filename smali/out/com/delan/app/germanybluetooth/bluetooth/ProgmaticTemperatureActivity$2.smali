.class Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$2;
.super Lutils/DialogUtils$DialogCallBack;
.source "ProgmaticTemperatureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->selectTemperatureLowerDialog()V
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
    .line 126
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 126
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$2;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 7
    .param p1, "lower"    # Ljava/lang/String;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 130
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    .line 133
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-static {v3, p1}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->String2TempNum(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    int-to-byte v2, v3

    .line 134
    .local v2, "tempNum":B
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_23
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 135
    .local v0, "fileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    invoke-static {v4}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v4

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 136
    .local v1, "progmaticValue":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iput-byte v2, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->savingTemperature:B

    goto :goto_23

    .line 139
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v1    # "progmaticValue":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    .end local v2    # "tempNum":B
    :cond_40
    return-void
.end method
