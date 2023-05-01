.class public Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;
.super Lcom/delan/app/germanybluetooth/base/BleActivity;
.source "ProgTimeActivity.java"


# instance fields
.field private adapter:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

.field private changeListener:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$OnSwitchPointChangeListener;

.field private childLockToggle:Landroid/widget/ToggleButton;

.field private currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

.field private deviceOnToggle:Landroid/widget/ToggleButton;

.field private hasReceivedSwitchPoint:I

.field private heatingToggle:Landroid/widget/ToggleButton;

.field private individualToggle:Landroid/widget/ToggleButton;

.field private isInSynchronism:Z

.field private manualToggle:Landroid/widget/ToggleButton;

.field private progtimeLV:Landroid/widget/ListView;

.field public progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

.field private synchronismBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;-><init>()V

    .line 36
    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    .line 39
    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 220
    new-instance v0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->changeListener:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$OnSwitchPointChangeListener;

    return-void
.end method

.method static synthetic access$002(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->waitWriteComplete:I

    return p1
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->waitWriteComplete:I

    return p1
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$702(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->waitWriteComplete:I

    return p1
.end method

.method static synthetic access$800(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method static synthetic access$900(Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    return-object v0
.end method

.method private disconnectConnect()V
    .registers 3

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->finish()V

    .line 96
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "finish"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    return-void
.end method


# virtual methods
.method protected afterBleAndLocationEnabled()V
    .registers 4

    .prologue
    .line 106
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->afterBleAndLocationEnabled()V

    .line 107
    const/4 v0, 0x0

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->hasReceivedSwitchPoint:I

    .line 108
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v2, "47e9ef59-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v2, "47e9ef52-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v2, "47e9ef53-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v2, "47e9ef54-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v2, "47e9ef55-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v2, "47e9ef56-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v2, "47e9ef57-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    const-string v2, "47e9ef58-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->readCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public doClickRightTextAction()V
    .registers 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->doClickRightTextAction()V

    .line 88
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->disconnectConnect()V

    .line 89
    return-void
.end method

.method protected fillView()V
    .registers 4

    .prologue
    .line 66
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->fillView()V

    .line 67
    const v0, 0x7f06002b

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 68
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->setActionBarLeft(I)V

    .line 70
    const v0, 0x7f06004d

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->setActionBarRightText(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->rightTV:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->doHiddenRightAction()V

    .line 74
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->changeListener:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$OnSwitchPointChangeListener;

    invoke-direct {v0, p0, v1, v2}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;-><init>(Landroid/app/Activity;Ljava/lang/Object;Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter$OnSwitchPointChangeListener;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    .line 75
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeLV:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 77
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->childLockToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->heatingToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->individualToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->manualToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->deviceOnToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->synchronismBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 14
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v10, 0x7

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 145
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_134

    .line 212
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->handleMessage(Landroid/os/Message;)V

    .line 215
    :cond_b
    :goto_b
    return-void

    .line 147
    :sswitch_c
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->dismissLoadingDialog()V

    .line 148
    iget v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->waitWriteComplete:I

    if-gtz v6, :cond_b

    .line 149
    iget-boolean v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->isInSynchronism:Z

    if-eqz v6, :cond_b

    .line 150
    iput-boolean v7, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->isInSynchronism:Z

    .line 151
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v7, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v7}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getProgtimeBlueList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    .line 152
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->waitWriteComplete:I

    .line 154
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_34
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 155
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v7, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v8, "47e9ef61-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v7, v0, v8}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto :goto_34

    .line 160
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .end local v4    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    :sswitch_48
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    const/4 v8, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_142

    :cond_54
    move v6, v8

    :goto_55
    packed-switch v6, :pswitch_data_164

    goto :goto_b

    .line 168
    :pswitch_59
    iget v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->hasReceivedSwitchPoint:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->hasReceivedSwitchPoint:I

    if-lt v6, v10, :cond_b

    .line 169
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->weatherIs4PeriodsPerDay()Z

    move-result v6

    if-eqz v6, :cond_d4

    .line 170
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->heatingToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 174
    :goto_6e
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->isIndividualMode()Z

    move-result v3

    .line 175
    .local v3, "individualMode":Z
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->individualToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 176
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-virtual {v6, v3}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->setHandleOnInvalidatedHeat(Z)V

    .line 177
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-virtual {v6}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->notifyDataSetChanged()V

    goto :goto_b

    .line 160
    .end local v3    # "individualMode":Z
    :sswitch_84
    const-string v11, "47e9ef52-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    move v6, v7

    goto :goto_55

    :sswitch_8e
    const-string v11, "47e9ef53-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    move v6, v9

    goto :goto_55

    :sswitch_98
    const-string v11, "47e9ef54-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    const/4 v6, 0x2

    goto :goto_55

    :sswitch_a2
    const-string v11, "47e9ef55-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    const/4 v6, 0x3

    goto :goto_55

    :sswitch_ac
    const-string v11, "47e9ef56-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    const/4 v6, 0x4

    goto :goto_55

    :sswitch_b6
    const-string v11, "47e9ef57-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    const/4 v6, 0x5

    goto :goto_55

    :sswitch_c0
    const-string v11, "47e9ef58-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    const/4 v6, 0x6

    goto :goto_55

    :sswitch_ca
    const-string v11, "47e9ef59-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_54

    move v6, v10

    goto :goto_55

    .line 172
    :cond_d4
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->heatingToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_6e

    .line 181
    :pswitch_da
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v2, v6, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;

    .line 182
    .local v2, "flags":Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;
    iget v6, v2, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->mode:I

    and-int/lit8 v6, v6, 0x3

    if-ne v6, v9, :cond_102

    .line 184
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->manualToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 185
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->deviceOnToggle:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v7, v7, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;

    iget-boolean v7, v7, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->setOnInManual:Z

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 186
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->deviceOnToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v9}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 193
    :goto_f9
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->childLockToggle:Landroid/widget/ToggleButton;

    iget-boolean v7, v2, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->childProof:Z

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto/16 :goto_b

    .line 189
    :cond_102
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->manualToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 190
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->deviceOnToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 191
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->deviceOnToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setClickable(Z)V

    goto :goto_f9

    .line 198
    .end local v2    # "flags":Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;
    :sswitch_112
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/String;

    if-eqz v6, :cond_b

    .line 200
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 201
    .local v5, "uuid":Ljava/lang/String;
    invoke-static {v5}, Lcom/delan/app/germanybluetooth/bleBluetooth/GermanyUuids;->getDeviceTypeFromChar(Ljava/lang/String;)I

    move-result v1

    .line 202
    .local v1, "deviceType":I
    packed-switch v1, :pswitch_data_178

    goto/16 :goto_b

    .line 207
    :pswitch_125
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_b

    .line 204
    :pswitch_12a
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v7, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v6, v7, v5}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 145
    nop

    :sswitch_data_134
    .sparse-switch
        0x48 -> :sswitch_c
        0x4c -> :sswitch_112
        0x6b -> :sswitch_48
    .end sparse-switch

    .line 160
    :sswitch_data_142
    .sparse-switch
        -0x77dccf83 -> :sswitch_ca
        -0x6fbc2a89 -> :sswitch_8e
        -0x466c4608 -> :sswitch_98
        -0x1d1c6187 -> :sswitch_a2
        0xc3382fa -> :sswitch_ac
        0x3583677b -> :sswitch_b6
        0x5ed34bfc -> :sswitch_c0
        0x66f3f0f6 -> :sswitch_84
    .end sparse-switch

    :pswitch_data_164
    .packed-switch 0x0
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_59
        :pswitch_da
    .end packed-switch

    .line 202
    :pswitch_data_178
    .packed-switch 0x1
        :pswitch_125
        :pswitch_12a
    .end packed-switch
.end method

.method protected initView()V
    .registers 2

    .prologue
    .line 46
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->initView()V

    .line 47
    const v0, 0x7f040041

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->setView(I)V

    .line 48
    const v0, 0x7f0d010e

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeLV:Landroid/widget/ListView;

    .line 49
    const v0, 0x7f0d010b

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->childLockToggle:Landroid/widget/ToggleButton;

    .line 50
    const v0, 0x7f0d010c

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->heatingToggle:Landroid/widget/ToggleButton;

    .line 51
    const v0, 0x7f0d010d

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->individualToggle:Landroid/widget/ToggleButton;

    .line 52
    const v0, 0x7f0d010f

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->synchronismBtn:Landroid/widget/Button;

    .line 53
    const v0, 0x7f0d0109

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->manualToggle:Landroid/widget/ToggleButton;

    .line 54
    const v0, 0x7f0d010a

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->deviceOnToggle:Landroid/widget/ToggleButton;

    .line 55
    return-void
.end method

.method protected loadData()V
    .registers 5

    .prologue
    .line 59
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->loadData()V

    .line 60
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    .line 61
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getProgtimeBlueList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "INTEGER_DATA"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 62
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 269
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onClick(Landroid/view/View;)V

    .line 270
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_15c

    .line 332
    :cond_c
    :goto_c
    :pswitch_c
    return-void

    .line 272
    :pswitch_d
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getProgtimeBlueList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 273
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 274
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->waitWriteComplete:I

    .line 275
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 276
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v4, "47e9ef59-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v0, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v4, "47e9ef52-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v0, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v4, "47e9ef53-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v0, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 279
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v4, "47e9ef54-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v0, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 280
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v4, "47e9ef55-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v0, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v4, "47e9ef56-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v0, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v4, "47e9ef57-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v0, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    .line 283
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v4, "47e9ef58-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v3, v0, v4}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristic(Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;Ljava/lang/String;)V

    goto :goto_2a

    .line 287
    .end local v0    # "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;>;"
    :pswitch_6f
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->childLockToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    iput-boolean v3, v2, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->childProof:Z

    .line 288
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef59-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    goto :goto_c

    .line 291
    :pswitch_83
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->heatingToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->on4HeatingPeriodsPerDayChanged(Z)V

    .line 292
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->notifyDataSetChanged()V

    .line 293
    const/4 v2, 0x7

    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->waitWriteComplete:I

    .line 294
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef52-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 295
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef53-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 296
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef54-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 297
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef55-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef56-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef57-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 300
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef58-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 303
    :pswitch_c9
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->individualToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-nez v2, :cond_fc

    .line 304
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    invoke-virtual {v2, v4}, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->onIndividualHeatChanged(Z)V

    .line 305
    const/4 v2, 0x5

    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->waitWriteComplete:I

    .line 306
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef53-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 307
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef54-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef55-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 309
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef56-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef58-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 312
    :cond_fc
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->individualToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->setHandleOnInvalidatedHeat(Z)V

    .line 313
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgtimeSwitchPointAdapter;->notifyDataSetChanged()V

    goto/16 :goto_c

    .line 316
    :pswitch_10e
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->manualToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_135

    .line 317
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;

    iput v5, v2, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->mode:I

    .line 318
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->deviceOnToggle:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v3, v3, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;

    iget-boolean v3, v3, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->setOnInManual:Z

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 319
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->deviceOnToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v5}, Landroid/widget/ToggleButton;->setClickable(Z)V

    .line 325
    :goto_12c
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef59-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 321
    :cond_135
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;

    const/4 v3, 0x2

    iput v3, v2, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->mode:I

    .line 322
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->deviceOnToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 323
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->deviceOnToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setClickable(Z)V

    goto :goto_12c

    .line 328
    :pswitch_147
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->progtimeValues:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->flags:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->deviceOnToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    iput-boolean v3, v2, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeFlag;->setOnInManual:Z

    .line 329
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v3, "47e9ef59-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 270
    :pswitch_data_15c
    .packed-switch 0x7f0d0109
        :pswitch_10e
        :pswitch_147
        :pswitch_6f
        :pswitch_83
        :pswitch_c9
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public requestCoarseLocationFailed()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionDenied;
        value = 0x53
    .end annotation

    .prologue
    .line 341
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationFailed()V

    .line 342
    return-void
.end method

.method public requestCoarseLocationSuccess()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionGrant;
        value = 0x53
    .end annotation

    .prologue
    .line 336
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationSuccess()V

    .line 337
    return-void
.end method

.method public uiDeviceConnectionStatusChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Z)V
    .registers 7
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "connected"    # Z

    .prologue
    const/4 v2, 0x0

    .line 137
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getProgtimeBlueList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    .line 138
    .local v0, "bean":Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;
    if-eqz v0, :cond_13

    if-nez p3, :cond_13

    .line 139
    iput v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->waitWriteComplete:I

    .line 141
    :cond_13
    invoke-super {p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiDeviceConnectionStatusChanged(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothDevice;Z)V

    .line 142
    return-void
.end method

.method public uiWriteComplete(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .registers 6
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .prologue
    .line 120
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    .line 132
    :cond_8
    :goto_8
    return-void

    .line 122
    :cond_9
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->weatherDeviceBelongTheRoom(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 125
    if-nez p3, :cond_4a

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "47e9ef61-47e9-11e4-8939-164230d1df67"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4a

    .line 126
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGatt;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->currentDevice:Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/DeviceDetailsBean;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 127
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    const-string v1, "47e9ef61-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 131
    :cond_4a
    :goto_4a
    invoke-super {p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/base/BleActivity;->uiWriteComplete(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V

    goto :goto_8

    .line 129
    :cond_4e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;->isInSynchronism:Z

    goto :goto_4a
.end method
