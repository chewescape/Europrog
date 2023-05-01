.class Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity$1;
.super Ljava/lang/Object;
.source "HolidayActivity.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHolidaySettingChanged(I)V
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "uuid":Ljava/lang/String;
    packed-switch p1, :pswitch_data_2c

    .line 122
    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 123
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity$1;->this$0:Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;->access$000(Lcom/delan/app/germanybluetooth/bluetooth/HolidayActivity;)Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/delan/app/germanybluetooth/bluetooth/BleService;->writeCharacteristicWithDelay(Ljava/lang/String;)V

    .line 124
    :cond_13
    return-void

    .line 98
    :pswitch_14
    const-string v0, "47e9ee20-47e9-11e4-8939-164230d1df67"

    .line 99
    goto :goto_4

    .line 101
    :pswitch_17
    const-string v0, "47e9ee21-47e9-11e4-8939-164230d1df67"

    .line 102
    goto :goto_4

    .line 104
    :pswitch_1a
    const-string v0, "47e9ee22-47e9-11e4-8939-164230d1df67"

    .line 105
    goto :goto_4

    .line 107
    :pswitch_1d
    const-string v0, "47e9ee23-47e9-11e4-8939-164230d1df67"

    .line 108
    goto :goto_4

    .line 110
    :pswitch_20
    const-string v0, "47e9ee24-47e9-11e4-8939-164230d1df67"

    .line 111
    goto :goto_4

    .line 113
    :pswitch_23
    const-string v0, "47e9ee25-47e9-11e4-8939-164230d1df67"

    .line 114
    goto :goto_4

    .line 116
    :pswitch_26
    const-string v0, "47e9ee26-47e9-11e4-8939-164230d1df67"

    .line 117
    goto :goto_4

    .line 119
    :pswitch_29
    const-string v0, "47e9ee27-47e9-11e4-8939-164230d1df67"

    goto :goto_4

    .line 96
    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
        :pswitch_26
        :pswitch_29
    .end packed-switch
.end method
