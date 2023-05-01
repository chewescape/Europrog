.class Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;
.super Ljava/lang/Object;
.source "SettingActivity.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwitchPointChanged(I)V
    .registers 8
    .param p1, "index"    # I

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "uuid":Ljava/lang/String;
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$200(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$100(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$002(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;I)I

    .line 220
    packed-switch p1, :pswitch_data_ee

    .line 257
    :cond_23
    :goto_23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_32

    .line 258
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$1700(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 259
    :cond_32
    return-void

    .line 222
    :pswitch_33
    const-string v0, "47e9ee10-47e9-11e4-8939-164230d1df67"

    .line 224
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->getCount()I

    move-result v1

    if-ne v1, v5, :cond_23

    .line 225
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$400(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v1

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    invoke-virtual {v1, v4}, Lcom/delan/app/germanybluetooth/bean/CometChars;->onIndividualHeatChanged(Z)V

    .line 226
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$700(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$600(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    invoke-static {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$502(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;I)I

    .line 227
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$800(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    const-string v2, "47e9ee11-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 228
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$900(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    const-string v2, "47e9ee12-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$1000(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    const-string v2, "47e9ee13-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 230
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$1100(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    const-string v2, "47e9ee14-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    goto :goto_23

    .line 234
    :pswitch_98
    const-string v0, "47e9ee11-47e9-11e4-8939-164230d1df67"

    .line 235
    goto :goto_23

    .line 237
    :pswitch_9b
    const-string v0, "47e9ee12-47e9-11e4-8939-164230d1df67"

    .line 238
    goto :goto_23

    .line 240
    :pswitch_9e
    const-string v0, "47e9ee13-47e9-11e4-8939-164230d1df67"

    .line 241
    goto :goto_23

    .line 243
    :pswitch_a1
    const-string v0, "47e9ee14-47e9-11e4-8939-164230d1df67"

    .line 244
    goto :goto_23

    .line 246
    :pswitch_a4
    const-string v0, "47e9ee15-47e9-11e4-8939-164230d1df67"

    .line 247
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$300(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->getCount()I

    move-result v1

    if-ne v1, v5, :cond_23

    .line 248
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$1200(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v1

    iget-object v1, v1, Lcom/delan/app/germanybluetooth/bean/RoomBean;->cometValues:Lcom/delan/app/germanybluetooth/bean/CometChars;

    invoke-virtual {v1, v4}, Lcom/delan/app/germanybluetooth/bean/CometChars;->onIndividualHeatChanged(Z)V

    .line 249
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$1500(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$1400(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getCometBlueList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/bean/RoomBean;->getAvailableDevices(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$1302(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;I)I

    .line 250
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;->access$1600(Lcom/delan/app/germanybluetooth/bluetooth/SettingActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    const-string v2, "47e9ee16-47e9-11e4-8939-164230d1df67"

    invoke-virtual {v1, v2}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    goto/16 :goto_23

    .line 254
    :pswitch_e9
    const-string v0, "47e9ee16-47e9-11e4-8939-164230d1df67"

    goto/16 :goto_23

    .line 220
    nop

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_33
        :pswitch_98
        :pswitch_9b
        :pswitch_9e
        :pswitch_a1
        :pswitch_a4
        :pswitch_e9
    .end packed-switch
.end method
