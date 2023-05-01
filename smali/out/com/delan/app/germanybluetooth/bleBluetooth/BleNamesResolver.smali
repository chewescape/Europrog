.class public Lcom/delan/app/germanybluetooth/bleBluetooth/BleNamesResolver;
.super Ljava/lang/Object;
.source "BleNamesResolver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(Landroid/bluetooth/BluetoothGattCharacteristic;)Ljava/lang/String;
    .registers 3
    .param p0, "ch"    # Landroid/bluetooth/BluetoothGattCharacteristic;

    .prologue
    .line 12
    if-nez p0, :cond_4

    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_3
    return-object v0

    :cond_4
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/bleBluetooth/BleNamesResolver;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private static getName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "uuid"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_37c

    :cond_8
    :goto_8
    packed-switch v0, :pswitch_data_45e

    .line 135
    const-string v0, "unknown character"

    :goto_d
    return-object v0

    .line 18
    :sswitch_e
    const-string v1, "47e9ee01-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_8

    :sswitch_18
    const-string v1, "47e9ee10-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_22
    const-string v1, "47e9ee11-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x2

    goto :goto_8

    :sswitch_2c
    const-string v1, "47e9ee12-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x3

    goto :goto_8

    :sswitch_36
    const-string v1, "47e9ee13-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x4

    goto :goto_8

    :sswitch_40
    const-string v1, "47e9ee14-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x5

    goto :goto_8

    :sswitch_4a
    const-string v1, "47e9ee15-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x6

    goto :goto_8

    :sswitch_54
    const-string v1, "47e9ee16-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x7

    goto :goto_8

    :sswitch_5e
    const-string v1, "47e9ee20-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x8

    goto :goto_8

    :sswitch_69
    const-string v1, "47e9ee21-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x9

    goto :goto_8

    :sswitch_74
    const-string v1, "47e9ee22-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xa

    goto :goto_8

    :sswitch_7f
    const-string v1, "47e9ee23-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xb

    goto/16 :goto_8

    :sswitch_8b
    const-string v1, "47e9ee24-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xc

    goto/16 :goto_8

    :sswitch_97
    const-string v1, "47e9ee25-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xd

    goto/16 :goto_8

    :sswitch_a3
    const-string v1, "47e9ee26-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xe

    goto/16 :goto_8

    :sswitch_af
    const-string v1, "47e9ee27-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0xf

    goto/16 :goto_8

    :sswitch_bb
    const-string v1, "47e9ee2a-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x10

    goto/16 :goto_8

    :sswitch_c7
    const-string v1, "47e9ee2b-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x11

    goto/16 :goto_8

    :sswitch_d3
    const-string v1, "47e9ee2c-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x12

    goto/16 :goto_8

    :sswitch_df
    const-string v1, "00002a28-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x13

    goto/16 :goto_8

    :sswitch_eb
    const-string v1, "00002a26-0000-1000-8000-00805f9b34fb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x14

    goto/16 :goto_8

    :sswitch_f7
    const-string v1, "47e9ee2e-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x15

    goto/16 :goto_8

    :sswitch_103
    const-string v1, "47e9ee30-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x16

    goto/16 :goto_8

    :sswitch_10f
    const-string v1, "47e9ef51-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x17

    goto/16 :goto_8

    :sswitch_11b
    const-string v1, "47e9ef52-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x18

    goto/16 :goto_8

    :sswitch_127
    const-string v1, "47e9ef53-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x19

    goto/16 :goto_8

    :sswitch_133
    const-string v1, "47e9ef54-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x1a

    goto/16 :goto_8

    :sswitch_13f
    const-string v1, "47e9ef55-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x1b

    goto/16 :goto_8

    :sswitch_14b
    const-string v1, "47e9ef56-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x1c

    goto/16 :goto_8

    :sswitch_157
    const-string v1, "47e9ef57-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x1d

    goto/16 :goto_8

    :sswitch_163
    const-string v1, "47e9ef58-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x1e

    goto/16 :goto_8

    :sswitch_16f
    const-string v1, "47e9ef59-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x1f

    goto/16 :goto_8

    :sswitch_17b
    const-string v1, "47e9ef60-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x20

    goto/16 :goto_8

    :sswitch_187
    const-string v1, "47e9ef61-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x21

    goto/16 :goto_8

    :sswitch_193
    const-string v1, "47e9ef62-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x22

    goto/16 :goto_8

    :sswitch_19f
    const-string v1, "47e9ef01-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x23

    goto/16 :goto_8

    :sswitch_1ab
    const-string v1, "47e9ef02-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x24

    goto/16 :goto_8

    :sswitch_1b7
    const-string v1, "47e9ef03-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x25

    goto/16 :goto_8

    :sswitch_1c3
    const-string v1, "47e9ef04-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x26

    goto/16 :goto_8

    :sswitch_1cf
    const-string v1, "47e9ef05-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x27

    goto/16 :goto_8

    :sswitch_1db
    const-string v1, "47e9ef06-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x28

    goto/16 :goto_8

    :sswitch_1e7
    const-string v1, "47e9ef07-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x29

    goto/16 :goto_8

    :sswitch_1f3
    const-string v1, "47e9ef08-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x2a

    goto/16 :goto_8

    :sswitch_1ff
    const-string v1, "47e9ef10-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x2b

    goto/16 :goto_8

    :sswitch_20b
    const-string v1, "47e9ef11-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x2c

    goto/16 :goto_8

    :sswitch_217
    const-string v1, "47e9ef12-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x2d

    goto/16 :goto_8

    :sswitch_223
    const-string v1, "47e9ef13-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x2e

    goto/16 :goto_8

    :sswitch_22f
    const-string v1, "47e9ef14-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x2f

    goto/16 :goto_8

    :sswitch_23b
    const-string v1, "47e9ef15-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x30

    goto/16 :goto_8

    :sswitch_247
    const-string v1, "47e9ef20-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x31

    goto/16 :goto_8

    :sswitch_253
    const-string v1, "47e9ef30-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x32

    goto/16 :goto_8

    :sswitch_25f
    const-string v1, "47e9ef31-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x33

    goto/16 :goto_8

    :sswitch_26b
    const-string v1, "47e9ef32-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x34

    goto/16 :goto_8

    :sswitch_277
    const-string v1, "47e9ef3e-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x35

    goto/16 :goto_8

    :sswitch_283
    const-string v1, "47e9ef3f-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x36

    goto/16 :goto_8

    :sswitch_28f
    const-string v1, "47e9ef41-47e9-11e4-8939-164230d1df67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/16 v0, 0x37

    goto/16 :goto_8

    .line 20
    :pswitch_29b
    const-string v0, "COMET_TIME"

    goto/16 :goto_d

    .line 22
    :pswitch_29f
    const-string v0, "COMET_SWITCH_POINT_MONDAY"

    goto/16 :goto_d

    .line 24
    :pswitch_2a3
    const-string v0, "COMET_SWITCH_POINT_TUESDAY"

    goto/16 :goto_d

    .line 26
    :pswitch_2a7
    const-string v0, "COMET_SWITCH_POINT_WEDNESDAY"

    goto/16 :goto_d

    .line 28
    :pswitch_2ab
    const-string v0, "COMET_SWITCH_POINT_THURSDAY"

    goto/16 :goto_d

    .line 30
    :pswitch_2af
    const-string v0, "COMET_SWITCH_POINT_FRIDAY"

    goto/16 :goto_d

    .line 32
    :pswitch_2b3
    const-string v0, "COMET_SWITCH_POINT_SATURDAY"

    goto/16 :goto_d

    .line 34
    :pswitch_2b7
    const-string v0, "COMET_SWITCH_POINT_SUNDAY"

    goto/16 :goto_d

    .line 36
    :pswitch_2bb
    const-string v0, "COMET_HOLIDAY_1"

    goto/16 :goto_d

    .line 38
    :pswitch_2bf
    const-string v0, "COMET_HOLIDAY_2"

    goto/16 :goto_d

    .line 40
    :pswitch_2c3
    const-string v0, "COMET_HOLIDAY_3"

    goto/16 :goto_d

    .line 42
    :pswitch_2c7
    const-string v0, "COMET_HOLIDAY_4"

    goto/16 :goto_d

    .line 44
    :pswitch_2cb
    const-string v0, "COMET_HOLIDAY_5"

    goto/16 :goto_d

    .line 46
    :pswitch_2cf
    const-string v0, "COMET_HOLIDAY_6"

    goto/16 :goto_d

    .line 48
    :pswitch_2d3
    const-string v0, "COMET_HOLIDAY_7"

    goto/16 :goto_d

    .line 50
    :pswitch_2d7
    const-string v0, "COMET_HOLIDAY_8"

    goto/16 :goto_d

    .line 52
    :pswitch_2db
    const-string v0, "COMET_FLAGS"

    goto/16 :goto_d

    .line 54
    :pswitch_2df
    const-string v0, "COMET_TEMPERATURE"

    goto/16 :goto_d

    .line 56
    :pswitch_2e3
    const-string v0, "COMET_BATTERY"

    goto/16 :goto_d

    .line 58
    :pswitch_2e7
    const-string v0, "COMET_READ_RFBL_VER"

    goto/16 :goto_d

    .line 60
    :pswitch_2eb
    const-string v0, "COMET_READ_COBL_VER"

    goto/16 :goto_d

    .line 62
    :pswitch_2ef
    const-string v0, "COMET_LCD_TIMER"

    goto/16 :goto_d

    .line 64
    :pswitch_2f3
    const-string v0, "COMET_PIN"

    goto/16 :goto_d

    .line 67
    :pswitch_2f7
    const-string v0, "PROGTIME_TIME"

    goto/16 :goto_d

    .line 69
    :pswitch_2fb
    const-string v0, "PROGTIME_SWITCH_POINT_MONDAY"

    goto/16 :goto_d

    .line 71
    :pswitch_2ff
    const-string v0, "PROGTIME_SWITCH_POINT_TUESDAY"

    goto/16 :goto_d

    .line 73
    :pswitch_303
    const-string v0, "PROGTIME_SWITCH_POINT_WEDNESDAY"

    goto/16 :goto_d

    .line 75
    :pswitch_307
    const-string v0, "PROGTIME_SWITCH_POINT_THURSDAY"

    goto/16 :goto_d

    .line 77
    :pswitch_30b
    const-string v0, "PROGTIME_SWITCH_POINT_FRIDAY"

    goto/16 :goto_d

    .line 79
    :pswitch_30f
    const-string v0, "PROGTIME_SWITCH_POINT_SATURDAY"

    goto/16 :goto_d

    .line 81
    :pswitch_313
    const-string v0, "PROGTIME_SWITCH_POINT_SUNDAY"

    goto/16 :goto_d

    .line 83
    :pswitch_317
    const-string v0, "PROGTIME_FLAGS"

    goto/16 :goto_d

    .line 85
    :pswitch_31b
    const-string v0, "PROGTIME_RESULT"

    goto/16 :goto_d

    .line 87
    :pswitch_31f
    const-string v0, "PROGTIME_START_DATENTRANSFER"

    goto/16 :goto_d

    .line 89
    :pswitch_323
    const-string v0, "PROGTIME_PIN"

    goto/16 :goto_d

    .line 92
    :pswitch_327
    const-string v0, "PROGMATIC_TIME"

    goto/16 :goto_d

    .line 94
    :pswitch_32b
    const-string v0, "PROGMATIC_SWITCH_POINT_MONDAY"

    goto/16 :goto_d

    .line 96
    :pswitch_32f
    const-string v0, "PROGMATIC_SWITCH_POINT_TUESDAY"

    goto/16 :goto_d

    .line 98
    :pswitch_333
    const-string v0, "PROGMATIC_SWITCH_POINT_WEDNESDAY"

    goto/16 :goto_d

    .line 100
    :pswitch_337
    const-string v0, "PROGMATIC_SWITCH_POINT_THURSDAY"

    goto/16 :goto_d

    .line 102
    :pswitch_33b
    const-string v0, "PROGMATIC_SWITCH_POINT_FRIDAY"

    goto/16 :goto_d

    .line 104
    :pswitch_33f
    const-string v0, "PROGMATIC_SWITCH_POINT_SATURDAY"

    goto/16 :goto_d

    .line 106
    :pswitch_343
    const-string v0, "PROGMATIC_SWITCH_POINT_SUNDAY"

    goto/16 :goto_d

    .line 108
    :pswitch_347
    const-string v0, "PROGMATIC_HOLIDAY_1"

    goto/16 :goto_d

    .line 110
    :pswitch_34b
    const-string v0, "PROGMATIC_HOLIDAY_2"

    goto/16 :goto_d

    .line 112
    :pswitch_34f
    const-string v0, "PROGMATIC_HOLIDAY_3"

    goto/16 :goto_d

    .line 114
    :pswitch_353
    const-string v0, "PROGMATIC_HOLIDAY_4"

    goto/16 :goto_d

    .line 116
    :pswitch_357
    const-string v0, "PROGMATIC_HOLIDAY_5"

    goto/16 :goto_d

    .line 118
    :pswitch_35b
    const-string v0, "PROGMATIC_HOLIDAY_6"

    goto/16 :goto_d

    .line 120
    :pswitch_35f
    const-string v0, "PROGMATIC_FLAGS"

    goto/16 :goto_d

    .line 122
    :pswitch_363
    const-string v0, "PROGMATIC_SAVE_TEMPERATURE"

    goto/16 :goto_d

    .line 124
    :pswitch_367
    const-string v0, "PROGMATIC_HEAT_TEMPERATURE"

    goto/16 :goto_d

    .line 126
    :pswitch_36b
    const-string v0, "PROGMATIC_OFFSET"

    goto/16 :goto_d

    .line 128
    :pswitch_36f
    const-string v0, "PROGMATIC_NUMBER_OF_PROFILES"

    goto/16 :goto_d

    .line 130
    :pswitch_373
    const-string v0, "PROGMATIC_PROFILE_INDEX"

    goto/16 :goto_d

    .line 132
    :pswitch_377
    const-string v0, "PROGMATIC_START_DATENTRANSFER"

    goto/16 :goto_d

    .line 18
    nop

    :sswitch_data_37c
    .sparse-switch
        -0x77dccf83 -> :sswitch_16f
        -0x75105475 -> :sswitch_f7
        -0x731b84a4 -> :sswitch_1b7
        -0x726ed905 -> :sswitch_223
        -0x6fbc2a89 -> :sswitch_127
        -0x5f7ae095 -> :sswitch_277
        -0x5e07bcc5 -> :sswitch_40
        -0x5dd824f5 -> :sswitch_df
        -0x5d5b1126 -> :sswitch_8b
        -0x49cba023 -> :sswitch_1c3
        -0x491ef484 -> :sswitch_22f
        -0x466c4608 -> :sswitch_133
        -0x362afc14 -> :sswitch_283
        -0x34b7d844 -> :sswitch_4a
        -0x340b2ca5 -> :sswitch_97
        -0x207bbba2 -> :sswitch_1cf
        -0x1fcf1003 -> :sswitch_23b
        -0x1d1c6187 -> :sswitch_13f
        -0x1a4fe679 -> :sswitch_bb
        -0xb67f3c3 -> :sswitch_54
        -0xabb4824 -> :sswitch_a3
        -0x3474ec9 -> :sswitch_18
        -0x29aa32a -> :sswitch_5e
        -0x1edf78b -> :sswitch_103
        0x8d428df -> :sswitch_1db
        0xc3382fa -> :sswitch_14b
        0xefffe08 -> :sswitch_c7
        0x11a17978 -> :sswitch_1ff
        0x124e2517 -> :sswitch_247
        0x12fad0b6 -> :sswitch_253
        0x1500d393 -> :sswitch_17b
        0x1e949c5d -> :sswitch_af
        0x255bea19 -> :sswitch_e
        0x260895b8 -> :sswitch_22
        0x26b54157 -> :sswitch_69
        0x32240d60 -> :sswitch_1e7
        0x3583677b -> :sswitch_157
        0x384fe289 -> :sswitch_d3
        0x3a44b25a -> :sswitch_19f
        0x3af15df9 -> :sswitch_20b
        0x3c4ab537 -> :sswitch_25f
        0x3cf760d6 -> :sswitch_28f
        0x3da40c75 -> :sswitch_10f
        0x3e50b814 -> :sswitch_187
        0x4f587a39 -> :sswitch_2c
        0x4f881209 -> :sswitch_eb
        0x500525d8 -> :sswitch_74
        0x5b73f1e1 -> :sswitch_1f3
        0x5ed34bfc -> :sswitch_163
        0x639496db -> :sswitch_1ab
        0x6441427a -> :sswitch_217
        0x659a99b8 -> :sswitch_26b
        0x66f3f0f6 -> :sswitch_11b
        0x67a09c95 -> :sswitch_193
        0x78a85eba -> :sswitch_36
        0x79550a59 -> :sswitch_7f
    .end sparse-switch

    :pswitch_data_45e
    .packed-switch 0x0
        :pswitch_29b
        :pswitch_29f
        :pswitch_2a3
        :pswitch_2a7
        :pswitch_2ab
        :pswitch_2af
        :pswitch_2b3
        :pswitch_2b7
        :pswitch_2bb
        :pswitch_2bf
        :pswitch_2c3
        :pswitch_2c7
        :pswitch_2cb
        :pswitch_2cf
        :pswitch_2d3
        :pswitch_2d7
        :pswitch_2db
        :pswitch_2df
        :pswitch_2e3
        :pswitch_2e7
        :pswitch_2eb
        :pswitch_2ef
        :pswitch_2f3
        :pswitch_2f7
        :pswitch_2fb
        :pswitch_2ff
        :pswitch_303
        :pswitch_307
        :pswitch_30b
        :pswitch_30f
        :pswitch_313
        :pswitch_317
        :pswitch_31b
        :pswitch_31f
        :pswitch_323
        :pswitch_327
        :pswitch_32b
        :pswitch_32f
        :pswitch_333
        :pswitch_337
        :pswitch_33b
        :pswitch_33f
        :pswitch_343
        :pswitch_347
        :pswitch_34b
        :pswitch_34f
        :pswitch_353
        :pswitch_357
        :pswitch_35b
        :pswitch_35f
        :pswitch_363
        :pswitch_367
        :pswitch_36b
        :pswitch_36f
        :pswitch_373
        :pswitch_377
    .end packed-switch
.end method
