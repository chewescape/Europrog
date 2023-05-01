.class public Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;
.super Lcom/delan/app/germanybluetooth/base/BleActivity;
.source "ProgmaticHolidayActivity.java"


# instance fields
.field private adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

.field private listener:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$OnHolidaySettingChanged;

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

.field private progmaticHolidayLV:Landroid/widget/ListView;

.field private progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;-><init>()V

    .line 57
    new-instance v0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->listener:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$OnHolidaySettingChanged;

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->profileNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method


# virtual methods
.method protected fillView()V
    .registers 4

    .prologue
    .line 41
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->fillView()V

    .line 42
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->setActionBarLeft(I)V

    .line 43
    const v0, 0x7f06006d

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->setActionBarTitle(I)V

    .line 44
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->listener:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$OnHolidaySettingChanged;

    invoke-direct {v0, p0, v1, v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;-><init>(Lcom/delan/app/germanybluetooth/base/BaseActivity;Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$OnHolidaySettingChanged;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    .line 45
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->progmaticHolidayLV:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 46
    return-void
.end method

.method protected initView()V
    .registers 2

    .prologue
    .line 27
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->initView()V

    .line 28
    const v0, 0x7f04001f

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->setView(I)V

    .line 29
    const v0, 0x7f0d008a

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->progmaticHolidayLV:Landroid/widget/ListView;

    .line 30
    return-void
.end method

.method protected loadData()V
    .registers 4

    .prologue
    .line 34
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->loadData()V

    .line 35
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXAR_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->profileNames:Ljava/util/ArrayList;

    .line 36
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->profileNames:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 37
    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->profileNames:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeProfiles(Ljava/util/ArrayList;)V

    .line 52
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->popupWindowUtil:Lutils/WheelPopupWindowUtil;

    if-eqz v0, :cond_18

    .line 53
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticHolidayActivity;->adapter:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->popupWindowUtil:Lutils/WheelPopupWindowUtil;

    invoke-virtual {v0}, Lutils/WheelPopupWindowUtil;->dismiss()V

    .line 54
    :cond_18
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onDestroy()V

    .line 55
    return-void
.end method

.method public requestCoarseLocationFailed()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionDenied;
        value = 0x53
    .end annotation

    .prologue
    .line 115
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationFailed()V

    .line 116
    return-void
.end method

.method public requestCoarseLocationSuccess()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionGrant;
        value = 0x53
    .end annotation

    .prologue
    .line 110
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationSuccess()V

    .line 111
    return-void
.end method
