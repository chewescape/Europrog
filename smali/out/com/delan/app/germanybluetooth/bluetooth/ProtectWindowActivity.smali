.class public Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;
.super Lcom/delan/app/germanybluetooth/base/BleActivity;
.source "ProtectWindowActivity.java"


# instance fields
.field private thresholdTemperRL:Landroid/widget/RelativeLayout;

.field private thresholdTemperTV:Landroid/widget/TextView;

.field private timeTemperRL:Landroid/widget/RelativeLayout;

.field private timeTemperTV:Landroid/widget/TextView;

.field private windowsDetectTimer:[Ljava/lang/String;

.field private windowsDetectionThreshold:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x3

    .line 26
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;-><init>()V

    .line 30
    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->windowsDetectionThreshold:[Ljava/lang/String;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "10"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "20"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "30"

    aput-object v2, v0, v1

    const-string v1, "40"

    aput-object v1, v0, v3

    const/4 v1, 0x4

    const-string v2, "50"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "60"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->windowsDetectTimer:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->thresholdTemperTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->timeTemperTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method private selectWindowOpenMinutes()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 123
    :goto_c
    return-void

    .line 109
    :cond_d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->windowsDetectTimer:[Ljava/lang/String;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$2;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$2;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)V

    invoke-static {p0, v0, v1}, Lutils/DialogUtils;->showOneWheelDialog(Landroid/app/Activity;[Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->dialog:Landroid/app/Dialog;

    goto :goto_c
.end method

.method private selectWindowsDetectionThreshold()V
    .registers 3

    .prologue
    .line 83
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 101
    :goto_c
    return-void

    .line 85
    :cond_d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->windowsDetectionThreshold:[Ljava/lang/String;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$1;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;)V

    invoke-static {p0, v0, v1}, Lutils/DialogUtils;->showOneWheelDialog(Landroid/app/Activity;[Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->dialog:Landroid/app/Dialog;

    goto :goto_c
.end method


# virtual methods
.method protected afterBleAndLocationEnabled()V
    .registers 4

    .prologue
    .line 57
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->afterBleAndLocationEnabled()V

    .line 58
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 59
    .local v0, "availableDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_18

    .line 65
    :cond_17
    :goto_17
    return-void

    .line 63
    :cond_18
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v2, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Ljava/lang/String;)V

    goto :goto_17
.end method

.method protected fillView()V
    .registers 2

    .prologue
    .line 48
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->fillView()V

    .line 49
    const v0, 0x7f060068

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 50
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->setActionBarLeft(I)V

    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->thresholdTemperRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->timeTemperRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 126
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_5c

    .line 140
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->handleMessage(Landroid/os/Message;)V

    .line 143
    :cond_9
    :goto_9
    return-void

    .line 128
    :pswitch_a
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_62

    :cond_16
    move v1, v3

    :goto_17
    packed-switch v1, :pswitch_data_68

    goto :goto_9

    .line 130
    :pswitch_1b
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    if-eqz v1, :cond_9

    .line 131
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->temperature:Lcom/delan/app/germanybluetooth/bean/chars/Temperature;

    .line 132
    .local v0, "temperature":Lcom/delan/app/germanybluetooth/bean/chars/Temperature;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->thresholdTemperTV:Landroid/widget/TextView;

    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->windowsDetectionThreshold:I

    invoke-static {p0, v3}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->DetectionThresholdNum2Str(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->timeTemperTV:Landroid/widget/TextView;

    const-string v3, "%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v0, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->windowsDetectionTimer:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 128
    .end local v0    # "temperature":Lcom/delan/app/germanybluetooth/bean/chars/Temperature;
    :pswitch_51
    const-string v4, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_17

    .line 126
    nop

    :pswitch_data_5c
    .packed-switch 0x6b
        :pswitch_a
    .end packed-switch

    .line 128
    :pswitch_data_62
    .packed-switch 0xefffe08
        :pswitch_51
    .end packed-switch

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_1b
    .end packed-switch
.end method

.method protected initView()V
    .registers 5

    .prologue
    .line 35
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->initView()V

    .line 36
    const v0, 0x7f040042

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->setView(I)V

    .line 37
    const v0, 0x7f0d0110

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->thresholdTemperRL:Landroid/widget/RelativeLayout;

    .line 38
    const v0, 0x7f0d0112

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->timeTemperRL:Landroid/widget/RelativeLayout;

    .line 39
    const v0, 0x7f0d0111

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->thresholdTemperTV:Landroid/widget/TextView;

    .line 40
    const v0, 0x7f0d0113

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->timeTemperTV:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->windowsDetectionThreshold:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060058

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 42
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->windowsDetectionThreshold:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06005c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 43
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->windowsDetectionThreshold:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060051

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 44
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onClick(Landroid/view/View;)V

    .line 69
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 77
    :goto_a
    :pswitch_a
    return-void

    .line 71
    :pswitch_b
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->selectWindowsDetectionThreshold()V

    goto :goto_a

    .line 74
    :pswitch_f
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;->selectWindowOpenMinutes()V

    goto :goto_a

    .line 69
    nop

    :pswitch_data_14
    .packed-switch 0x7f0d0110
        :pswitch_b
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method public requestCoarseLocationFailed()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionDenied;
        value = 0x53
    .end annotation

    .prologue
    .line 152
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationFailed()V

    .line 153
    return-void
.end method

.method public requestCoarseLocationSuccess()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionGrant;
        value = 0x53
    .end annotation

    .prologue
    .line 147
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationSuccess()V

    .line 148
    return-void
.end method
