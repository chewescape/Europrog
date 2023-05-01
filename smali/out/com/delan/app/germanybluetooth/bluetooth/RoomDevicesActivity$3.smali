.class Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$3;
.super Ljava/lang/Object;
.source "RoomDevicesActivity.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$WidgetClickListener;


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
    .line 211
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockClicked(I)V
    .registers 7
    .param p1, "position"    # I

    .prologue
    .line 214
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;)Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    move-result-object v0

    .line 217
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget v1, v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->successSetPin:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    .line 218
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    const-class v3, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->gotoActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/io/Serializable;I)V

    .line 222
    :goto_19
    return-void

    .line 220
    :cond_1a
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity$3;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    const v3, 0x7f060041

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_19
.end method
