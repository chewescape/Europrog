.class public Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;
.super Lcom/delan/app/germanybluetooth/base/BleActivity;
.source "ProgmaticTemperatureActivity.java"


# instance fields
.field private arr:[Ljava/lang/String;

.field private arrLower:[Ljava/lang/String;

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

.field private progmaticHeatTV:Landroid/widget/TextView;

.field private progmaticLowerTV:Landroid/widget/TextView;

.field private progmaticOffsetTV:Landroid/widget/TextView;

.field private progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

.field private temperatureHeatRL:Landroid/widget/RelativeLayout;

.field private temperatureLowerRL:Landroid/widget/RelativeLayout;

.field private temperatureOffsetRL:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;-><init>()V

    .line 28
    const/16 v0, 0x15

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "-5.0\u00b0C"

    aput-object v1, v0, v3

    const-string v1, "-4.5\u00b0C"

    aput-object v1, v0, v4

    const-string v1, "-4.0\u00b0C"

    aput-object v1, v0, v5

    const-string v1, "-3.5\u00b0C"

    aput-object v1, v0, v6

    const-string v1, "-3.0\u00b0C"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "-2.5\u00b0C"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "-2.0\u00b0C"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "-1.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "-1.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "-0.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "0.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "0.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "1.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "1.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "2.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "2.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "3.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "3.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "4.0\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "4.5\u00b0C"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "5.0\u00b0C"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->arr:[Ljava/lang/String;

    .line 30
    const/16 v0, 0x2b

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v3

    const-string v1, "8.0\u00b0C"

    aput-object v1, v0, v4

    const-string v1, "8.5\u00b0C"

    aput-object v1, v0, v5

    const-string v1, "9.0\u00b0C"

    aput-object v1, v0, v6

    const-string v1, "9.5\u00b0C"

    aput-object v1, v0, v7

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

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->arrLower:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->progmaticHeatTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->profileNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->progmaticLowerTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->progmaticOffsetTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)Lcom/delan/app/germanybluetooth/bean/RoomBean;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    return-object v0
.end method

.method private selectTemperatureHeatDialog()V
    .registers 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 118
    :goto_c
    return-void

    .line 103
    :cond_d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->arrLower:[Ljava/lang/String;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$1;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)V

    invoke-static {p0, v0, v1}, Lutils/DialogUtils;->showOneWheelDialog(Landroid/app/Activity;[Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->dialog:Landroid/app/Dialog;

    goto :goto_c
.end method

.method private selectTemperatureLowerDialog()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 141
    :goto_c
    return-void

    .line 126
    :cond_d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->arrLower:[Ljava/lang/String;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$2;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$2;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)V

    invoke-static {p0, v0, v1}, Lutils/DialogUtils;->showOneWheelDialog(Landroid/app/Activity;[Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->dialog:Landroid/app/Dialog;

    goto :goto_c
.end method

.method private selectTemperatureOffsetDialog()V
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 164
    :goto_c
    return-void

    .line 149
    :cond_d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->arr:[Ljava/lang/String;

    new-instance v1, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$3;

    invoke-direct {v1, p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity$3;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;)V

    invoke-static {p0, v0, v1}, Lutils/DialogUtils;->showOneWheelDialog(Landroid/app/Activity;[Ljava/lang/String;Lutils/DialogUtils$DialogCallBack;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->dialog:Landroid/app/Dialog;

    goto :goto_c
.end method


# virtual methods
.method protected fillView()V
    .registers 5

    .prologue
    .line 62
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->fillView()V

    .line 63
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->setActionBarLeft(I)V

    .line 64
    const v0, 0x7f06006f

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->setActionBarTitle(I)V

    .line 66
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->progmaticHeatTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iget-byte v1, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->heatingTmperature:B

    invoke-static {p0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->TempNumToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->progmaticLowerTV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iget-byte v1, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->savingTemperature:B

    invoke-static {p0, v1}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->TempNumToString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->progmaticOffsetTV:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iget-byte v2, v2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->offset:B

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/bean/chars/Temperature;->TempNumToSheShiDu(I)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0600a8

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->temperatureHeatRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->temperatureLowerRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->temperatureOffsetRL:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method protected initView()V
    .registers 4

    .prologue
    .line 41
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->initView()V

    .line 42
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->setView(I)V

    .line 43
    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->progmaticLowerTV:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0d0095

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->progmaticHeatTV:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0d0097

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->progmaticOffsetTV:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0d0094

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->temperatureHeatRL:Landroid/widget/RelativeLayout;

    .line 47
    const v0, 0x7f0d0092

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->temperatureLowerRL:Landroid/widget/RelativeLayout;

    .line 48
    const v0, 0x7f0d0096

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->temperatureOffsetRL:Landroid/widget/RelativeLayout;

    .line 49
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->arrLower:[Ljava/lang/String;

    const/4 v1, 0x0

    const v2, 0x7f060065

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 50
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->arrLower:[Ljava/lang/String;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->arrLower:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const v2, 0x7f060067

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 51
    return-void
.end method

.method protected loadData()V
    .registers 4

    .prologue
    .line 55
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->loadData()V

    .line 56
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXAR_DATA"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->profileNames:Ljava/util/ArrayList;

    .line 57
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->mRoom:Lcom/delan/app/germanybluetooth/bean/RoomBean;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/RoomBean;->progmaticValueMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->profileNames:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->progmaticValue:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .line 58
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/delan/app/germanybluetooth/base/BleActivity;->onClick(Landroid/view/View;)V

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 95
    :goto_a
    :pswitch_a
    return-void

    .line 86
    :pswitch_b
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->selectTemperatureHeatDialog()V

    goto :goto_a

    .line 89
    :pswitch_f
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->selectTemperatureLowerDialog()V

    goto :goto_a

    .line 92
    :pswitch_13
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->selectTemperatureOffsetDialog()V

    goto :goto_a

    .line 84
    nop

    :pswitch_data_18
    .packed-switch 0x7f0d0092
        :pswitch_f
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_13
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 78
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->bleService:Lcom/delan/app/germanybluetooth/bluetooth/BleService;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/ProgmaticTemperatureActivity;->profileNames:Ljava/util/ArrayList;

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
    .line 173
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationFailed()V

    .line 174
    return-void
.end method

.method public requestCoarseLocationSuccess()V
    .registers 1
    .annotation build Lcom/zhy/m/permission/PermissionGrant;
        value = 0x53
    .end annotation

    .prologue
    .line 168
    invoke-super {p0}, Lcom/delan/app/germanybluetooth/base/BleActivity;->requestCoarseLocationSuccess()V

    .line 169
    return-void
.end method
