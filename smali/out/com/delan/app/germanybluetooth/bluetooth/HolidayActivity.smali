.class public Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;
.super Lcom/delan/app/germanybluetooth/base/BleActivity;
.source "HolidayActivity.java"


# instance fields
.field private adapter:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

.field private listener:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;

.field private progLV:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;-><init>()V

    .line 91
    new-instance v0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->listener:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method


# virtual methods
.method protected afterBleAndLocationEnabled()V
    .registers 4

    .prologue
    .line 44
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->afterBleAndLocationEnabled()V

    .line 45
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 46
    .local v0, "availableDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_18

    .line 51
    :cond_17
    :goto_17
    return-void

    .line 49
    :cond_18
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v2, "47e9ee20-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Ljava/lang/String;)V

    goto :goto_17
.end method

.method protected fillView()V
    .registers 4

    .prologue
    .line 35
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->fillView()V

    .line 36
    const v0, 0x7f060053

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 37
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->setActionBarLeft(I)V

    .line 38
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->listener:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;

    invoke-direct {v0, p0, v1, v2}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;-><init>(Lcom/delan/app/germanybluetooth/base/BaseActivity;Lcom/delan/app/germanybluetooth/bean/CometChars;Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    .line 39
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->progLV:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 40
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_70

    .line 86
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->handleMessage(Landroid/os/Message;)V

    .line 89
    :goto_8
    return-void

    .line 72
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_76

    :cond_15
    move v0, v1

    :goto_16
    packed-switch v0, :pswitch_data_98

    goto :goto_8

    .line 81
    :pswitch_1a
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->notifyDataSetChanged()V

    goto :goto_8

    .line 72
    :sswitch_20
    const-string v2, "47e9ee20-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto :goto_16

    :sswitch_2a
    const-string v2, "47e9ee21-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :sswitch_34
    const-string v2, "47e9ee22-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x2

    goto :goto_16

    :sswitch_3e
    const-string v2, "47e9ee23-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x3

    goto :goto_16

    :sswitch_48
    const-string v2, "47e9ee24-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x4

    goto :goto_16

    :sswitch_52
    const-string v2, "47e9ee25-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x5

    goto :goto_16

    :sswitch_5c
    const-string v2, "47e9ee26-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x6

    goto :goto_16

    :sswitch_66
    const-string v2, "47e9ee27-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x7

    goto :goto_16

    .line 70
    :pswitch_data_70
    .packed-switch 0x6b
        :pswitch_9
    .end packed-switch

    .line 72
    :sswitch_data_76
    .sparse-switch
        -0x5d5b1126 -> :sswitch_48
        -0x340b2ca5 -> :sswitch_52
        -0xabb4824 -> :sswitch_5c
        -0x29aa32a -> :sswitch_20
        0x1e949c5d -> :sswitch_66
        0x26b54157 -> :sswitch_2a
        0x500525d8 -> :sswitch_34
        0x79550a59 -> :sswitch_3e
    .end sparse-switch

    :pswitch_data_98
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method protected initView()V
    .registers 2

    .prologue
    .line 28
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->initView()V

    .line 29
    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->setView(I)V

    .line 30
    const v0, 0x7f0d0108

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->progLV:Landroid/widget/ListView;

    .line 31
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onClick(Landroid/view/View;)V

    .line 62
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 67
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->popupWindowUtil:Lutils/WheelPopupWindowUtil;

    if-eqz v0, :cond_11

    .line 56
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->popupWindowUtil:Lutils/WheelPopupWindowUtil;

    invoke-virtual {v0}, Lutils/WheelPopupWindowUtil;->dismiss()V

    .line 57
    :cond_11
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onDestroy()V

    .line 58
    return-void
.end method

.method public requestCoarseLocationFailed()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionDenied;
        value = 0x53
    .end annotation

    .prologue
    .line 134
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationFailed()V

    .line 135
    return-void
.end method

.method public requestCoarseLocationSuccess()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionGrant;
        value = 0x53
    .end annotation

    .prologue
    .line 129
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationSuccess()V

    .line 130
    return-void
.end method
