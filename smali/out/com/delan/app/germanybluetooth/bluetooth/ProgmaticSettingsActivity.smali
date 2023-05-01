.class public Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;
.super Lcom/delan/app/germanybluetooth/base/BleActivity;
.source "ProgmaticSettingsActivity.java"


# instance fields
.field private adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

.field private changeListener:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;

.field private pointLV:Landroid/widget/ListView;

.field private profileNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private progmaticChildLock:Landroid/widget/ToggleButton;

.field private progmaticHeatingTV:Landroid/widget/TextView;

.field private progmaticHeatingToggle:Landroid/widget/ToggleButton;

.field private progmaticHolidayTV:Landroid/widget/TextView;

.field private progmaticIndividualToggle:Landroid/widget/ToggleButton;

.field private progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;-><init>()V

    .line 124
    new-instance v0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->changeListener:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->profileNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$800(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$900(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method


# virtual methods
.method protected fillView()V
    .registers 5

    .prologue
    .line 54
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->fillView()V

    .line 55
    const v1, 0x7f030009

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->setActionBarLeft(I)V

    .line 56
    const v1, 0x7f06006c

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->setActionBarTitle(I)V

    .line 57
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticChildLock:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mFlag:Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;

    iget-boolean v2, v2, Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;->childProof:Z

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 58
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->weatherIs4PeriodsPerDay()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 59
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticHeatingToggle:Landroid/widget/ToggleButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 62
    :goto_28
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->isIndividualMode()Z

    move-result v0

    .line 63
    .local v0, "individualMode":Z
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticIndividualToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 64
    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->changeListener:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;

    invoke-direct {v1, p0, v2, v3}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;-><init>(Landroid/app/Activity;Ljava/lang/Object;Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;)V

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    .line 65
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-virtual {v1, v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->setHandleOnInvalidatedHeat(Z)V

    .line 66
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->pointLV:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticHeatingTV:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticHolidayTV:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticChildLock:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticHeatingToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticIndividualToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v1, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void

    .line 61
    .end local v0    # "individualMode":Z
    :cond_64
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticHeatingToggle:Landroid/widget/ToggleButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_28
.end method

.method protected initView()V
    .registers 2

    .prologue
    .line 35
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->initView()V

    .line 36
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->setView(I)V

    .line 37
    const v0, 0x7f0d008b

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticHeatingTV:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0d008c

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticHolidayTV:Landroid/widget/TextView;

    .line 39
    const v0, 0x7f0d008d

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticChildLock:Landroid/widget/ToggleButton;

    .line 40
    const v0, 0x7f0d008e

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticHeatingToggle:Landroid/widget/ToggleButton;

    .line 41
    const v0, 0x7f0d008f

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticIndividualToggle:Landroid/widget/ToggleButton;

    .line 42
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->pointLV:Landroid/widget/ListView;

    .line 43
    return-void
.end method

.method protected loadData()V
    .registers 4

    .prologue
    .line 47
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->loadData()V

    .line 48
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXAR_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->profileNames:Ljava/util/ArrayList;

    .line 49
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->profileNames:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 50
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onClick(Landroid/view/View;)V

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_aa

    .line 119
    :cond_a
    :goto_a
    return-void

    .line 91
    :pswitch_b
    const-class v3, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->profileNames:Ljava/util/ArrayList;

    invoke-virtual {p0, p0, v3, v4}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->gotoActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/io/Serializable;)V

    goto :goto_a

    .line 94
    :pswitch_13
    const-class v3, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->profileNames:Ljava/util/ArrayList;

    invoke-virtual {p0, p0, v3, v4}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->gotoActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/io/Serializable;)V

    goto :goto_a

    .line 97
    :pswitch_1b
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->profileNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 98
    .local v0, "fileName":Ljava/lang/String;
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 99
    .local v2, "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v4, v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mFlag:Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticChildLock:Landroid/widget/ToggleButton;

    invoke-virtual {v5}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v5

    iput-boolean v5, v4, Lcom/delan/app/germanybluetooth/bean/chars/ProgmaticFlag;->childProof:Z

    goto :goto_21

    .line 103
    .end local v0    # "fileName":Ljava/lang/String;
    .end local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :pswitch_42
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->profileNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_48
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_68

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 104
    .local v1, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 105
    .restart local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticHeatingToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->on4HeatingPeriodsPerDayChanged(Z)V

    goto :goto_48

    .line 107
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :cond_68
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->notifyDataSetChanged()V

    goto :goto_a

    .line 110
    :pswitch_6e
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticIndividualToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v3}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_97

    .line 111
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->profileNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_97

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    .restart local v1    # "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 113
    .restart local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->onIndividualHeatChanged(Z)V

    goto :goto_7c

    .line 115
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "progmaticChars":Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    :cond_97
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->progmaticIndividualToggle:Landroid/widget/ToggleButton;

    invoke-virtual {v4}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->setHandleOnInvalidatedHeat(Z)V

    .line 116
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->notifyDataSetChanged()V

    goto/16 :goto_a

    .line 89
    nop

    :pswitch_data_aa
    .packed-switch 0x7f0d008b
        :pswitch_b
        :pswitch_13
        :pswitch_1b
        :pswitch_42
        :pswitch_6e
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticSettingsActivity;->profileNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeProfiles(Ljava/util/ArrayList;)V

    .line 79
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onDestroy()V

    .line 80
    return-void
.end method

.method public requestCoarseLocationFailed()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionDenied;
        value = 0x53
    .end annotation

    .prologue
    .line 195
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationFailed()V

    .line 196
    return-void
.end method

.method public requestCoarseLocationSuccess()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionGrant;
        value = 0x53
    .end annotation

    .prologue
    .line 190
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationSuccess()V

    .line 191
    return-void
.end method
