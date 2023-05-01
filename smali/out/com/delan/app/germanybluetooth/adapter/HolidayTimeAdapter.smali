.class public Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;
.super Landroid/widget/BaseAdapter;
.source "HolidayTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;,
        Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private activity:Lcom/delan/app/germanybluetooth/base/BaseActivity;

.field public arr:[Ljava/lang/String;

.field private final cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

.field private final listener:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;

.field public popupWindowUtil:Lutils/WheelPopupWindowUtil;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/base/BaseActivity;Lcom/delan/app/germanybluetooth/bean/CometChars;Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;)V
    .registers 8
    .param p1, "activity"    # Lcom/delan/app/germanybluetooth/base/BaseActivity;
    .param p2, "cometChars"    # Lcom/delan/app/germanybluetooth/bean/CometChars;
    .param p3, "listener"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;

    .prologue
    const/4 v3, 0x0

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "8.0\u00b0C"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "8.5\u00b0C"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "9.0\u00b0C"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "9.5\u00b0C"

    aput-object v2, v0, v1

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

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->arr:[Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->activity:Lcom/delan/app/germanybluetooth/base/BaseActivity;

    .line 42
    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

    .line 43
    iput-object p3, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->listener:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;

    .line 44
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->arr:[Ljava/lang/String;

    const v1, 0x7f060065

    invoke-virtual {p1, v1}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 45
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->arr:[Ljava/lang/String;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->arr:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const v2, 0x7f060067

    invoke-virtual {p1, v2}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 46
    return-void
.end method

.method static synthetic access$1100(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct/range {p0 .. p5}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->isStartTimeNotBiggerThanEndTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->activity:Lcom/delan/app/germanybluetooth/base/BaseActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;I)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;
    .registers 3
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->getHoliday(I)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;)Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->listener:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$OnHolidaySettingChanged;

    return-object v0
.end method

.method static synthetic access$900(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;)V
    .registers 3
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;
    .param p1, "x1"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;
    .param p2, "x2"    # Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->setEndTime(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;)V

    return-void
.end method

.method private getHoliday(I)Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 206
    packed-switch p1, :pswitch_data_a

    .line 210
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 208
    :pswitch_5
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday1:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    goto :goto_4

    .line 206
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method private initializeViews(ILcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)V
    .registers 8
    .param p1, "i"    # I
    .param p2, "holder"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-static {p2}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$000(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->activity:Lcom/delan/app/germanybluetooth/base/BaseActivity;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/base/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f0b0000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "holiday":Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;
    packed-switch p1, :pswitch_data_74

    .line 87
    :goto_1a
    invoke-static {p2}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$100(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v0, :cond_6c

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getStartDateStr()Ljava/lang/String;

    move-result-object v1

    :goto_24
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    invoke-static {p2}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$200(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v0, :cond_6e

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->activity:Lcom/delan/app/germanybluetooth/base/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getStartTimeStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_33
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {p2}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$300(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getEndDateStr()Ljava/lang/String;

    move-result-object v1

    :goto_40
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-static {p2}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$400(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    if-eqz v0, :cond_72

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->activity:Lcom/delan/app/germanybluetooth/base/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getEndTimeStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_4f
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    invoke-static {p2}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$500(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v0, :cond_5e

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->activity:Lcom/delan/app/germanybluetooth/base/BaseActivity;

    invoke-virtual {v0, v2}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->tempNumToSheShiDu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    :cond_5e
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iput p1, p2, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->position:I

    .line 94
    invoke-direct {p0, p2}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->showDialog(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)V

    .line 95
    return-void

    .line 83
    :pswitch_67
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v1, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday1:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    goto :goto_1a

    :cond_6c
    move-object v1, v2

    .line 87
    goto :goto_24

    :cond_6e
    move-object v1, v2

    .line 88
    goto :goto_33

    :cond_70
    move-object v1, v2

    .line 89
    goto :goto_40

    :cond_72
    move-object v1, v2

    .line 90
    goto :goto_4f

    .line 81
    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_67
    .end packed-switch
.end method

.method private isStartTimeNotBiggerThanEndTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "startDateStr"    # Ljava/lang/String;
    .param p3, "startTimeStr"    # Ljava/lang/String;
    .param p4, "endDateStr"    # Ljava/lang/String;
    .param p5, "endTimeStr"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f0600a6

    .line 190
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 191
    :cond_13
    const-string p3, "00:00"

    .line 192
    :cond_15
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 193
    :cond_25
    const-string p5, "00:00"

    .line 194
    :cond_27
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    .local v1, "start":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "end":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_5d

    const/4 v2, 0x1

    :goto_5c
    return v2

    :cond_5d
    const/4 v2, 0x0

    goto :goto_5c
.end method

.method private setEndTime(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;)V
    .registers 5
    .param p1, "holder"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;
    .param p2, "holiday"    # Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->activity:Lcom/delan/app/germanybluetooth/base/BaseActivity;

    invoke-virtual {p2, v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->ifStartTimeLaterSetEndTime10mLater(Landroid/content/Context;)V

    .line 201
    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$300(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p2}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getEndDateStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$400(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->activity:Lcom/delan/app/germanybluetooth/base/BaseActivity;

    invoke-virtual {p2, v1}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getEndTimeStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    return-void
.end method

.method private showDialog(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)V
    .registers 4
    .param p1, "holder"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    .prologue
    .line 104
    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$1000(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$1200(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$2;-><init>(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->access$1300(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/RelativeLayout;

    move-result-object v0

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$3;-><init>(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 50
    const/4 v0, 0x1

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 55
    packed-switch p1, :pswitch_data_a

    .line 59
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 57
    :pswitch_5
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/CometChars;->holiday1:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    goto :goto_4

    .line 55
    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 70
    if-nez p2, :cond_18

    .line 71
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->activity:Lcom/delan/app/germanybluetooth/base/BaseActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040030

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    new-instance v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    invoke-direct {v0, p0, p2}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;-><init>(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 74
    :cond_18
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    invoke-direct {p0, p1, v0}, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;->initializeViews(ILcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)V

    .line 75
    return-object p2
.end method
