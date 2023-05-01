.class public Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;
.super Lcom/delan/app/germanybluetooth/base/BleActivity;
.source "SettingActivity.java"


# instance fields
.field private adapter:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

.field private hasReceivedSwitchPoint:I

.field private heatingRL:Landroid/widget/RelativeLayout;

.field private holidayRL:Landroid/widget/RelativeLayout;

.field private openProtectRL:Landroid/widget/RelativeLayout;

.field private switchPointChangeListener:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;

.field private toggleChildLock:Landroid/widget/ToggleButton;

.field private toggleHeating:Landroid/widget/ToggleButton;

.field private toggleIndividual:Landroid/widget/ToggleButton;

.field private weekLV:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->hasReceivedSwitchPoint:I

    .line 214
    new-instance v0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->switchPointChangeListener:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;

    return-void
.end method

.method static synthetic access$002(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->waitWriteComplete:I

    return p1
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->waitWriteComplete:I

    return p1
.end method

.method static synthetic access$1400(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$502(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->waitWriteComplete:I

    return p1
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method private disconnecBleConnect()V
    .registers 3

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->finish()V

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "finish"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 96
    return-void
.end method


# virtual methods
.method protected afterBleAndLocationEnabled()V
    .registers 4

    .prologue
    .line 103
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->afterBleAndLocationEnabled()V

    .line 105
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 106
    .local v0, "availableDevices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_18

    .line 119
    :cond_17
    :goto_17
    return-void

    .line 109
    :cond_18
    const/4 v1, 0x0

    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->hasReceivedSwitchPoint:I

    .line 110
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v2, "47e9ee2a-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v2, "47e9ee10-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v2, "47e9ee11-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v2, "47e9ee12-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v2, "47e9ee13-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v2, "47e9ee14-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v2, "47e9ee15-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Ljava/lang/String;)V

    .line 117
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v2, "47e9ee16-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Ljava/lang/String;)V

    goto :goto_17
.end method

.method public doClickRightTextAction()V
    .registers 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->doClickRightTextAction()V

    .line 85
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->disconnecBleConnect()V

    .line 86
    return-void
.end method

.method protected fillView()V
    .registers 4

    .prologue
    .line 61
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->fillView()V

    .line 62
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-nez v0, :cond_8

    .line 80
    :goto_7
    return-void

    .line 64
    :cond_8
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 65
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->setActionBarRightText(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->rightTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 67
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->doHiddenRightAction()V

    .line 68
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->setActionBarLeft(I)V

    .line 70
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->switchPointChangeListener:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;-><init>(Landroid/app/Activity;Lcom/delan/app/germanybluetooth/bean/CometChars;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    .line 71
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->weekLV:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 73
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->heatingRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->holidayRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->openProtectRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->toggleHeating:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->toggleIndividual:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->toggleChildLock:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 177
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_c6

    .line 209
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->handleMessage(Landroid/os/Message;)V

    .line 212
    :cond_b
    :goto_b
    return-void

    .line 179
    :sswitch_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_d0

    :cond_18
    move v1, v3

    :goto_19
    packed-switch v1, :pswitch_data_f2

    goto :goto_b

    .line 187
    :pswitch_1d
    iget v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->hasReceivedSwitchPoint:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->hasReceivedSwitchPoint:I

    if-lt v1, v5, :cond_b

    .line 188
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/CometChars;->weatherIs4PeriodsPerDay()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 189
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->toggleHeating:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 192
    :goto_34
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/CometChars;->isIndividualMode()Z

    move-result v0

    .line 193
    .local v0, "individualMode":Z
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->toggleIndividual:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 194
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    invoke-virtual {v1, v0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->setHandleOnInvalidatedHeat(Z)V

    .line 195
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->notifyDataSetChanged()V

    goto :goto_b

    .line 179
    .end local v0    # "individualMode":Z
    :sswitch_4c
    const-string v6, "47e9ee10-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v2

    goto :goto_19

    :sswitch_56
    const-string v6, "47e9ee11-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v4

    goto :goto_19

    :sswitch_60
    const-string v6, "47e9ee12-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x2

    goto :goto_19

    :sswitch_6a
    const-string v6, "47e9ee13-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x3

    goto :goto_19

    :sswitch_74
    const-string v6, "47e9ee14-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x4

    goto :goto_19

    :sswitch_7e
    const-string v6, "47e9ee15-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x5

    goto :goto_19

    :sswitch_88
    const-string v6, "47e9ee16-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v1, 0x6

    goto :goto_19

    :sswitch_92
    const-string v6, "47e9ee2a-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    move v1, v5

    goto/16 :goto_19

    .line 191
    :cond_9d
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->toggleHeating:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_34

    .line 199
    :pswitch_a3
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;

    if-eqz v1, :cond_b

    .line 200
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->toggleChildLock:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bean/CometChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;

    iget-boolean v2, v2, Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;->childProtected:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_b

    .line 206
    :sswitch_c0
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->dismissLoadingDialog()V

    goto/16 :goto_b

    .line 177
    nop

    :sswitch_data_c6
    .sparse-switch
        0x48 -> :sswitch_c0
        0x6b -> :sswitch_c
    .end sparse-switch

    .line 179
    :sswitch_data_d0
    .sparse-switch
        -0x5e07bcc5 -> :sswitch_74
        -0x34b7d844 -> :sswitch_7e
        -0x1a4fe679 -> :sswitch_92
        -0xb67f3c3 -> :sswitch_88
        -0x3474ec9 -> :sswitch_4c
        0x260895b8 -> :sswitch_56
        0x4f587a39 -> :sswitch_60
        0x78a85eba -> :sswitch_6a
    .end sparse-switch

    :pswitch_data_f2
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_a3
    .end packed-switch
.end method

.method protected initView()V
    .registers 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->initView()V

    .line 44
    const v0, 0x7f040048

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->setView(I)V

    .line 45
    const v0, 0x7f0d011f

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->heatingRL:Landroid/widget/RelativeLayout;

    .line 46
    const v0, 0x7f0d0121

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->holidayRL:Landroid/widget/RelativeLayout;

    .line 47
    const v0, 0x7f0d0120

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->openProtectRL:Landroid/widget/RelativeLayout;

    .line 48
    const v0, 0x7f0d0123

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->toggleHeating:Landroid/widget/ToggleButton;

    .line 49
    const v0, 0x7f0d0124

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->toggleIndividual:Landroid/widget/ToggleButton;

    .line 50
    const v0, 0x7f0d0122

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->toggleChildLock:Landroid/widget/ToggleButton;

    .line 51
    const v0, 0x7f0d0125

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->weekLV:Landroid/widget/ListView;

    .line 52
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "V"    # Landroid/view/View;

    .prologue
    .line 122
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onClick(Landroid/view/View;)V

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_e6

    .line 164
    :goto_a
    return-void

    .line 125
    :pswitch_b
    const-class v0, Lcom/delan/app/germanybluetooth/bluetooth/SettingTemperature;

    invoke-virtual {p0, p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->gotoActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_a

    .line 128
    :pswitch_11
    const-class v0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;

    invoke-virtual {p0, p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->gotoActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_a

    .line 132
    :pswitch_17
    const-class v0, Lcom/delan/app/germanybluetooth/bluetooth/ProtectWindowActivity;

    invoke-virtual {p0, p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->gotoActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_a

    .line 135
    :pswitch_1d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->toggleHeating:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/CometChars;->on4HeatingPeriodsPerDayChanged(Z)V

    .line 136
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->notifyDataSetChanged()V

    .line 137
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->waitWriteComplete:I

    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee10-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee11-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee12-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee13-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee14-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee15-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee16-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    goto :goto_a

    .line 147
    :pswitch_75
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->toggleIndividual:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-nez v0, :cond_bc

    .line 148
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/CometChars;->onIndividualHeatChanged(Z)V

    .line 149
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->waitWriteComplete:I

    .line 150
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee11-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee12-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee13-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee14-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee16-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 156
    :cond_bc
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->toggleIndividual:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->setHandleOnInvalidatedHeat(Z)V

    .line 157
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->notifyDataSetChanged()V

    goto/16 :goto_a

    .line 160
    :pswitch_ce
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/CometChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->toggleChildLock:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/delan/app/germanybluetooth/bean/chars/CometFlag;->childProtected:Z

    .line 161
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ee2a-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 123
    nop

    :pswitch_data_e6
    .packed-switch 0x7f0d011f
        :pswitch_b
        :pswitch_17
        :pswitch_11
        :pswitch_ce
        :pswitch_1d
        :pswitch_75
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 56
    const/4 v0, 0x1

    return v0
.end method

.method public requestCoarseLocationFailed()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionDenied;
        value = 0x53
    .end annotation

    .prologue
    .line 269
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationFailed()V

    .line 270
    return-void
.end method

.method public requestCoarseLocationSuccess()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionGrant;
        value = 0x53
    .end annotation

    .prologue
    .line 264
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationSuccess()V

    .line 265
    return-void
.end method

.method public uiDeviceConnectionStatusChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "connected"    # Z

    .prologue
    const/4 v2, 0x0

    .line 169
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 170
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_13

    if-nez p3, :cond_13

    .line 171
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->waitWriteComplete:I

    .line 173
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiDeviceConnectionStatusChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 174
    return-void
.end method
