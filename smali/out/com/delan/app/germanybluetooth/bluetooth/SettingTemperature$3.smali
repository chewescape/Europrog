.class Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$3;
.super Lutils/DialogUtils$DialogCallBack;
.source "SettingTemperature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->selectTemperatureOffset()V
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
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 136
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$3;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 140
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->access$600(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->access$700(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v1

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->access$800(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v1

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    if-eqz v1, :cond_64

    .line 142
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->access$600(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "s1":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_64

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->access$900(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v1

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->SheShiDuTpTempNum(D)I

    move-result v2

    iput v2, v1, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->offsetsTemp:I

    .line 146
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->access$1000(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    const-string v2, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 149
    .end local v0    # "s1":Ljava/lang/String;
    :cond_64
    return-void
.end method
