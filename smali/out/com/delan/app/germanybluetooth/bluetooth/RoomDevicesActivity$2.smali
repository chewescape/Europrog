.class Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$2;
.super Ljava/lang/Object;
.source "RoomDevicesActivity.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/widget/SeekArc$OnSeekArcChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->fillView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/delan/app/germanybluetooth/widget/SeekArc;IZ)V
    .registers 8
    .param p1, "seekArc"    # Lcom/delan/app/germanybluetooth/widget/SeekArc;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 181
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$700(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v2

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v1, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    .line 183
    .local v1, "temperature":Lcom/delan/app/germanybluetooth/bean/chars/Temperature;
    if-nez p2, :cond_13

    .line 184
    const/16 v0, 0x9

    .line 189
    .local v0, "temp":I
    :goto_e
    iget v2, v1, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->desiredTemp:I

    if-ne v2, v0, :cond_21

    .line 195
    :goto_12
    return-void

    .line 185
    .end local v0    # "temp":I
    :cond_13
    invoke-virtual {p1}, Lcom/delan/app/germanybluetooth/widget/SeekArc;->getMax()I

    move-result v2

    if-ne p2, v2, :cond_1c

    .line 186
    const/16 v0, 0x3d

    .restart local v0    # "temp":I
    goto :goto_e

    .line 188
    .end local v0    # "temp":I
    :cond_1c
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v0, v2, 0x10

    .restart local v0    # "temp":I
    goto :goto_e

    .line 192
    :cond_21
    iput v0, v1, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->desiredTemp:I

    .line 193
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$800(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v2

    const-string v3, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$2;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$900(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;Z)V

    goto :goto_12
.end method

.method public onStartTrackingTouch(Lcom/delan/app/germanybluetooth/widget/SeekArc;)V
    .registers 2
    .param p1, "seekArc"    # Lcom/delan/app/germanybluetooth/widget/SeekArc;

    .prologue
    .line 200
    return-void
.end method

.method public onStopTrackingTouch(Lcom/delan/app/germanybluetooth/widget/SeekArc;)V
    .registers 2
    .param p1, "seekArc"    # Lcom/delan/app/germanybluetooth/widget/SeekArc;

    .prologue
    .line 205
    return-void
.end method
