.class Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$1;
.super Ljava/lang/Object;
.source "BleWrapper.java"

# interfaces
.implements Landroid/bluetooth/BluetoothAdapter$LeScanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$1;->this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeScan(Landroid/bluetooth/BluetoothDevice;I[B)V
    .registers 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "rssi"    # I
    .param p3, "scanRecord"    # [B

    .prologue
    .line 302
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 303
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_4a

    :cond_16
    :goto_16
    packed-switch v0, :pswitch_data_58

    .line 312
    :cond_19
    :goto_19
    return-void

    .line 303
    :sswitch_1a
    const-string v2, "Comet Blue"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x0

    goto :goto_16

    :sswitch_24
    const-string v2, "Progtime Blue"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    goto :goto_16

    :sswitch_2e
    const-string v2, "Progmatic Blue"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x2

    goto :goto_16

    .line 307
    :pswitch_38
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$1;->this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->access$000(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 308
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper$1;->this$0:Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;->access$000(Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapper;)Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleWrapperUiCallbacks;->uiDeviceFound(Landroid/bluetooth/BluetoothDevice;I)V

    goto :goto_19

    .line 303
    :sswitch_data_4a
    .sparse-switch
        -0x55d142a6 -> :sswitch_2e
        -0x329b544d -> :sswitch_24
        0x1a6ef4ca -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method
