.class Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$2;
.super Lutils/DialogUtils$DialogCallBack;
.source "SettingTemperature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->selectTemperatureLower()V
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
    .line 116
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 116
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$2;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 120
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "s1":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d

    .line 123
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v1

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v2, v0}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->String2TempNum(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->energySavingTemp:I

    .line 124
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->access$500(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    const-string v2, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 126
    :cond_3d
    return-void
.end method
