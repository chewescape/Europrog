.class public Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;
.super Lcom/delan/app/germanybluetooth/base/BleActivity;
.source "SettingTemperature.java"


# instance fields
.field private arr:[Ljava/lang/String;

.field private arrLower:[Ljava/lang/String;

.field private heatRL:Landroid/widget/RelativeLayout;

.field private heatTemperatureTV:Landroid/widget/TextView;

.field private lowerRL:Landroid/widget/RelativeLayout;

.field private lowerTemperatureTV:Landroid/widget/TextView;

.field private offsetRL:Landroid/widget/RelativeLayout;

.field private offsetTemperatureTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;-><init>()V

    .line 29
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-5.0\u00b0C"

    aput-object v1, v0, v3

    const-string v1, "-4.5\u00b0C"

    aput-object v1, v0, v4

    const-string v1, "-4.0\u00b0C"

    aput-object v1, v0, v5

    const-string v1, "-3.5\u00b0C"

    aput-object v1, v0, v6

    const-string v1, "-3.0\u00b0C"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "-2.5\u00b0C"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "-2.0\u00b0C"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "-1.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "-1.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "-0.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "0.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "0.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "1.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "2.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "2.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "3.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "3.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "4.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "4.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "5.0\u00b0C"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->arr:[Ljava/lang/String;

    .line 31
    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "8.0\u00b0C"

    aput-object v1, v0, v4

    const-string v1, "8.5\u00b0C"

    aput-object v1, v0, v5

    const-string v1, "9.0\u00b0C"

    aput-object v1, v0, v6

    const-string v1, "9.5\u00b0C"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "10.0\u00b0C"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "10.5\u00b0C"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "11.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "11.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "12.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "12.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "13.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "13.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "14.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "14.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "15.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "15.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "16.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "16.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "17.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "17.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "18.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "18.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "19.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "19.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "20.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "20.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "21.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "21.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "22.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "22.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "23.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "23.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "24.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "24.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "25.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "25.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "26.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "26.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "27.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "27.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "28.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, ""

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->arrLower:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->heatTemperatureTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->lowerTemperatureTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->offsetTemperatureTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method private selectTemperatureHeat()V
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 108
    :goto_c
    return-void

    .line 99
    :cond_d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->arrLower:[Ljava/lang/String;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$1;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)V

    invoke-static {p0, v0, v1}, Lutils/DialogUtils;->showOneWheelDialog(Landroid/app/Activity;[Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->dialog:Landroid/app/Dialog;

    goto :goto_c
.end method

.method private selectTemperatureLower()V
    .registers 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 128
    :goto_c
    return-void

    .line 116
    :cond_d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->arrLower:[Ljava/lang/String;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$2;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$2;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)V

    invoke-static {p0, v0, v1}, Lutils/DialogUtils;->showOneWheelDialog(Landroid/app/Activity;[Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->dialog:Landroid/app/Dialog;

    goto :goto_c
.end method

.method private selectTemperatureOffset()V
    .registers 3

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->hasDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    :goto_6
    return-void

    .line 136
    :cond_7
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->arr:[Ljava/lang/String;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$3;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature$3;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;)V

    invoke-static {p0, v0, v1}, Lutils/DialogUtils;->showOneWheelDialog(Landroid/app/Activity;[Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->dialog:Landroid/app/Dialog;

    goto :goto_6
.end method


# virtual methods
.method protected afterBleAndLocationEnabled()V
    .registers 4

    .prologue
    .line 65
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->afterBleAndLocationEnabled()V

    .line 66
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 67
    .local v0, "availableDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_18

    .line 72
    :cond_17
    :goto_17
    return-void

    .line 70
    :cond_18
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v2, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Ljava/lang/String;)V

    goto :goto_17
.end method

.method protected fillView()V
    .registers 2

    .prologue
    .line 55
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->fillView()V

    .line 56
    const v0, 0x7f06008d

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->setActionBarTitle(Ljava/lang/String;)V

    .line 57
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->setActionBarLeft(I)V

    .line 58
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->lowerRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->heatRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->offsetRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 154
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_76

    .line 170
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->handleMessage(Landroid/os/Message;)V

    .line 173
    :goto_9
    return-void

    .line 156
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_7c

    :cond_16
    move v1, v3

    :goto_17
    packed-switch v1, :pswitch_data_82

    goto :goto_9

    .line 158
    :pswitch_1b
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    .line 159
    .local v0, "temperature":Lcom/delan/app/germanybluetooth/bean/chars/Temperature;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->lowerTemperatureTV:Landroid/widget/TextView;

    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->energySavingTemp:I

    invoke-static {p0, v3}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->TempNumToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->heatTemperatureTV:Landroid/widget/TextView;

    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->heatingTemp:I

    invoke-static {p0, v3}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->TempNumToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->offsetsTemp:I

    const/16 v3, -0xa

    if-lt v1, v3, :cond_68

    iget v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->offsetsTemp:I

    const/16 v3, 0xa

    if-gt v1, v3, :cond_68

    .line 162
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->offsetTemperatureTV:Landroid/widget/TextView;

    const-string v3, "%s\u00b0C"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->offsetsTemp:I

    invoke-static {v5}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->TempNumToSheShiDu(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 156
    .end local v0    # "temperature":Lcom/delan/app/germanybluetooth/bean/chars/Temperature;
    :pswitch_5e
    const-string v4, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_17

    .line 164
    .restart local v0    # "temperature":Lcom/delan/app/germanybluetooth/bean/chars/Temperature;
    :cond_68
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->offsetTemperatureTV:Landroid/widget/TextView;

    const v2, 0x7f0600a5

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 154
    nop

    :pswitch_data_76
    .packed-switch 0x6b
        :pswitch_a
    .end packed-switch

    .line 156
    :pswitch_data_7c
    .packed-switch 0xefffe08
        :pswitch_5e
    .end packed-switch

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method

.method protected initView()V
    .registers 4

    .prologue
    .line 40
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->initView()V

    .line 41
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->setView(I)V

    .line 42
    const v0, 0x7f0d0092

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->lowerRL:Landroid/widget/RelativeLayout;

    .line 43
    const v0, 0x7f0d0094

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->heatRL:Landroid/widget/RelativeLayout;

    .line 44
    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->offsetRL:Landroid/widget/RelativeLayout;

    .line 45
    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->lowerTemperatureTV:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0d0099

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->heatTemperatureTV:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0d009a

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->offsetTemperatureTV:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->arrLower:[Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f060065

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->arrLower:[Ljava/lang/String;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->arrLower:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const v2, 0x7f060067

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 51
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onClick(Landroid/view/View;)V

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 91
    :goto_a
    :pswitch_a
    return-void

    .line 80
    :pswitch_b
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->selectTemperatureLower()V

    goto :goto_a

    .line 84
    :pswitch_f
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->selectTemperatureHeat()V

    goto :goto_a

    .line 88
    :pswitch_13
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;->selectTemperatureOffset()V

    goto :goto_a

    .line 78
    nop

    :pswitch_data_18
    .packed-switch 0x7f0d0092
        :pswitch_b
        :pswitch_a
        :pswitch_f
        :pswitch_a
        :pswitch_13
    .end packed-switch
.end method

.method public requestCoarseLocationFailed()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionDenied;
        value = 0x53
    .end annotation

    .prologue
    .line 182
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationFailed()V

    .line 183
    return-void
.end method

.method public requestCoarseLocationSuccess()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionGrant;
        value = 0x53
    .end annotation

    .prologue
    .line 177
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationSuccess()V

    .line 178
    return-void
.end method
