.class Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$1;
.super Lutils/DialogUtils$DialogCallBack;
.source "ProtectWindowActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->selectWindowsDetectionThreshold()V
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
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    invoke-direct {p0}, Lutils/DialogUtils$DialogCallBack;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onPositiveButton(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 85
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$1;->onPositiveButton(Ljava/lang/String;)V

    return-void
.end method

.method public onPositiveButton(Ljava/lang/String;)V
    .registers 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lutils/DialogUtils$DialogCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 89
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v1

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v1

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    if-eqz v1, :cond_69

    .line 91
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "s1":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_69

    .line 93
    invoke-static {v0}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 94
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v1

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    invoke-static {v2, v0}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->DetectionThresholdStr2Num(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->windowsDetectionThreshold:I

    .line 95
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v1

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    iget v1, v1, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->windowsDetectionThreshold:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcom/apkfuns/logutils/LogUtils;->d(Ljava/lang/Object;)V

    .line 96
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->access$500(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    const-string v2, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 99
    .end local v0    # "s1":Ljava/lang/String;
    :cond_69
    return-void
.end method
