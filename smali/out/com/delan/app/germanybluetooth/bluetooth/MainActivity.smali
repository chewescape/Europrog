.class public Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;
.super Lcom/delan/app/germanybluetooth/base/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final CHANGE_TABLE_NAME_SUCCESS:I = 0x66

.field private static final SHOW_ROOM:I = 0x65

.field public static list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adapter:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

.field private addDevice:Landroid/widget/Button;

.field private dbService:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

.field private lastClickBack:J

.field private roomLV:Landroid/widget/ListView;

.field private roomRL:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;)Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;)Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;)Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->dbService:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    return-object v0
.end method


# virtual methods
.method public doClickLeftAction()V
    .registers 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->doClickLeftAction()V

    .line 128
    const-class v0, Lcom/delan/app/germanybluetooth/bluetooth/MoreActivity;

    invoke-virtual {p0, p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->gotoActivity(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    return-void
.end method

.method public doClickRightAction()V
    .registers 3

    .prologue
    .line 152
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->doClickRightAction()V

    .line 153
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->hasDialogShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 172
    :goto_9
    return-void

    .line 155
    :cond_a
    const v0, 0x7f060063

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$2;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$2;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;)V

    invoke-static {p0, v0, v1}, Lutils/DialogUtils;->showInputDialog(Landroid/app/Activity;Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->dialog:Landroid/app/Dialog;

    goto :goto_9
.end method

.method protected fillView()V
    .registers 3

    .prologue
    .line 72
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->fillView()V

    .line 73
    const v0, 0x7f030008

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->setActionBarLeft(I)V

    .line 74
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->setActionBarTitle(Ljava/lang/String;)V

    .line 75
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->setActionBarRight(I)V

    .line 76
    const v0, 0x7f0d007e

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->addDevice:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    sget-object v1, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->list:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    .line 79
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->roomLV:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->baseView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->roomLV:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;)V

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->setOnRightMenuListener(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$OnRightMenuListener;)V

    .line 123
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 205
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 215
    :cond_5
    :goto_5
    return-void

    .line 207
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 208
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->notifyData(Ljava/util/ArrayList;)V

    goto :goto_5

    .line 212
    :pswitch_18
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->dbService:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->showRoomInDataBase(Landroid/os/Handler;I)V

    goto :goto_5

    .line 205
    :pswitch_data_22
    .packed-switch 0x65
        :pswitch_6
        :pswitch_18
    .end packed-switch
.end method

.method protected initView()V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->initView()V

    .line 42
    const v0, 0x7f04001c

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->setView(I)V

    .line 43
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->roomLV:Landroid/widget/ListView;

    .line 44
    const v0, 0x7f0d0081

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->addDevice:Landroid/widget/Button;

    .line 45
    const v0, 0x7f0d007e

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->roomRL:Landroid/widget/RelativeLayout;

    .line 46
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->onClick(Landroid/view/View;)V

    .line 181
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 189
    :goto_a
    :pswitch_a
    return-void

    .line 183
    :pswitch_b
    const-class v0, Lcom/delan/app/germanybluetooth/bluetooth/DeviceListActivity;

    invoke-virtual {p0, p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->gotoActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_a

    .line 186
    :pswitch_11
    const-class v0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticDevicesActivity;

    invoke-virtual {p0, p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->gotoActivity(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_a

    .line 181
    nop

    :pswitch_data_18
    .packed-switch 0x7f0d007e
        :pswitch_11
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-class v1, Lcom/delan/app/germanybluetooth/bluetooth/RoomDevicesActivity;

    sget-object v0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {p0, p0, v1, v0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->gotoActivity(Landroid/content/Context;Ljava/lang/Class;Ljava/io/Serializable;)V

    .line 202
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 134
    const/4 v0, 0x4

    if-ne p1, v0, :cond_22

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->lastClickBack:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1e

    .line 137
    const v0, 0x7f06003b

    invoke-static {p0, v0}, Lutils/MyToastUtil;->showToastShort(Landroid/content/Context;I)V

    .line 141
    :goto_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->lastClickBack:J

    .line 142
    const/4 v0, 0x1

    .line 144
    :goto_1d
    return v0

    .line 139
    :cond_1e
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->finish()V

    goto :goto_16

    .line 144
    :cond_22
    invoke-super {p0, p1, p2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_1d
.end method

.method protected onResume()V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->onResume()V

    .line 51
    const-string v3, "config"

    invoke-virtual {p0, v3, v2}, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 52
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string v3, "isOpen"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 53
    .local v0, "isOpen":Z
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->roomRL:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_18

    :goto_14
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    return-void

    .line 53
    :cond_18
    const/16 v2, 0x8

    goto :goto_14
.end method

.method protected onStart()V
    .registers 4

    .prologue
    .line 58
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->onStart()V

    .line 59
    sget-object v0, Lcom/delan/app/germanybluetooth/MyApplication;->instance:Lcom/delan/app/germanybluetooth/MyApplication;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/MyApplication;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->dbService:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    .line 60
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->dbService:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    if-eqz v0, :cond_16

    .line 61
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->dbService:Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->uiHandler:Lcom/delan/app/germanybluetooth/base/BaseActivity$UiHandler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/DataBaseService;->showRoomInDataBase(Landroid/os/Handler;I)V

    .line 62
    :cond_16
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MainActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;->closeMenu()V

    .line 67
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->onStop()V

    .line 68
    return-void
.end method
