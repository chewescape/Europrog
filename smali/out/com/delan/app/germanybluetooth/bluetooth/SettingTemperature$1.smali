.class Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$1;
.super Lutils/DialogUtils$DialogCallBack;
.source "SettingTemperature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->selectTemperatureHeat()V
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
    .line 99
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 99
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$1;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v0

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v1, p1}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->String2TempNum(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->heatingTemp:I

    .line 105
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v0

    const-string v1, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 106
    return-void
.end method
