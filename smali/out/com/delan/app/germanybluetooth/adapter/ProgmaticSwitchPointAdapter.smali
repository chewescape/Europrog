.class public Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;
.super Landroid/widget/BaseAdapter;
.source "ProgmaticSwitchPointAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;,
        Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final context:Landroid/app/Activity;

.field private individualMode:Z

.field private isProgtime:Z

.field private final listener:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;

.field private progmaticChars:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

.field private progtimeChars:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/Object;Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;)V
    .registers 5
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "switchPointChars"    # Ljava/lang/Object;
    .param p3, "changeListener"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->isProgtime:Z

    .line 31
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->context:Landroid/app/Activity;

    .line 32
    iput-object p3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->listener:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;

    .line 33
    instance-of v0, p1, Lcom/delan/app/germanybluetooth/bluetooth/ProgTimeActivity;

    if-eqz v0, :cond_16

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->isProgtime:Z

    .line 35
    check-cast p2, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    .end local p2    # "switchPointChars":Ljava/lang/Object;
    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progtimeChars:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    .line 38
    :goto_15
    return-void

    .line 37
    .restart local p2    # "switchPointChars":Ljava/lang/Object;
    :cond_16
    check-cast p2, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    .end local p2    # "switchPointChars":Ljava/lang/Object;
    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progmaticChars:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    goto :goto_15
.end method

.method static synthetic access$1800(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;I)I
    .registers 3
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->getHourFromProgress(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;I)I
    .registers 3
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->getMinuteFromProgress(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;IILandroid/widget/SeekBar;Landroid/widget/TextView;)V
    .registers 5
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/widget/SeekBar;
    .param p4, "x4"    # Landroid/widget/TextView;

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->setProgressAndTv(IILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;)Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->listener:Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$OnSwitchPointChangeListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->context:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;II)I
    .registers 4
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->hourMinute2Progress(II)I

    move-result v0

    return v0
.end method

.method private getHourFromProgress(I)I
    .registers 3
    .param p1, "progress"    # I

    .prologue
    .line 143
    if-nez p1, :cond_4

    .line 144
    const/4 v0, 0x0

    .line 145
    :goto_3
    return v0

    :cond_4
    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x6

    goto :goto_3
.end method

.method private getMinuteFromProgress(I)I
    .registers 3
    .param p1, "progress"    # I

    .prologue
    .line 149
    if-nez p1, :cond_5

    .line 150
    const/16 v0, 0x80

    .line 151
    :goto_4
    return v0

    :cond_5
    add-int/lit8 v0, p1, -0x1

    rem-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0xa

    goto :goto_4
.end method

.method private hourMinute2Progress(II)I
    .registers 5
    .param p1, "hour"    # I
    .param p2, "minute"    # I

    .prologue
    .line 136
    const/16 v0, 0x80

    if-eq p2, v0, :cond_a

    if-ltz p1, :cond_a

    const/16 v0, 0x18

    if-le p1, v0, :cond_c

    .line 137
    :cond_a
    const/4 v0, 0x0

    .line 139
    :goto_b
    return v0

    :cond_c
    mul-int/lit8 v0, p1, 0x6

    div-int/lit8 v1, p2, 0xa

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method private initializeViews(ILcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)V
    .registers 4
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    .prologue
    .line 88
    iput p1, p2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->position:I

    .line 89
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->individualMode:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    if-ne p1, v0, :cond_c

    .line 90
    const/4 v0, 0x5

    iput v0, p2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->position:I

    .line 92
    :cond_c
    invoke-direct {p0, p2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->initializeViews(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)V

    .line 93
    return-void
.end method

.method private initializeViews(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)V
    .registers 10
    .param p1, "holder"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    .prologue
    const/4 v7, 0x0

    .line 96
    iget v1, p1, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->position:I

    .line 97
    .local v1, "position":I
    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    .line 98
    .local v0, "point":Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->getCount()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_b0

    .line 99
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 100
    .local v2, "stringArray":[Ljava/lang/String;
    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    aget-object v4, v2, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    :goto_24
    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h1:I

    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m1:I

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$100(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->setProgressAndTv(IILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 110
    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h2:I

    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m2:I

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$300(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$400(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->setProgressAndTv(IILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 111
    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h3:I

    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m3:I

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$500(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$600(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->setProgressAndTv(IILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 112
    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h4:I

    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m4:I

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$700(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$800(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->setProgressAndTv(IILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 113
    iget-boolean v3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->isProgtime:Z

    if-eqz v3, :cond_d6

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progtimeChars:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->weatherIs4PeriodsPerDay()Z

    move-result v3

    if-eqz v3, :cond_de

    .line 114
    :cond_6c
    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$900(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 115
    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h5:I

    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m5:I

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1100(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->setProgressAndTv(IILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 116
    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h6:I

    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m6:I

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1300(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->setProgressAndTv(IILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 117
    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h7:I

    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m7:I

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1400(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1500(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->setProgressAndTv(IILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 118
    iget v3, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->h8:I

    iget v4, v0, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->m8:I

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1600(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/SeekBar;

    move-result-object v5

    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$1700(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v6

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->setProgressAndTv(IILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    .line 122
    :goto_af
    return-void

    .line 102
    .end local v2    # "stringArray":[Ljava/lang/String;
    :cond_b0
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 103
    .restart local v2    # "stringArray":[Ljava/lang/String;
    if-nez v1, :cond_ca

    .line 104
    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    aget-object v4, v2, v7

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 106
    :cond_ca
    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_24

    .line 113
    :cond_d6
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progmaticChars:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->weatherIs4PeriodsPerDay()Z

    move-result v3

    if-nez v3, :cond_6c

    .line 120
    :cond_de
    invoke-static {p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;->access$900(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_af
.end method

.method private setProgressAndTv(IILandroid/widget/SeekBar;Landroid/widget/TextView;)V
    .registers 8
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 125
    const/16 v1, 0x80

    if-eq p2, v1, :cond_1b

    .line 126
    mul-int/lit8 v1, p1, 0x6

    div-int/lit8 v2, p2, 0xa

    add-int v0, v1, v2

    .line 127
    .local v0, "i":I
    invoke-direct {p0, p1, p2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->hourMinute2Progress(II)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 128
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->context:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->numToTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    .end local v0    # "i":I
    :goto_1a
    return-void

    .line 130
    :cond_1b
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 131
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->context:Landroid/app/Activity;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;->numToTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->individualMode:Z

    if-eqz v0, :cond_6

    .line 43
    const/4 v0, 0x7

    .line 45
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x2

    goto :goto_5
.end method

.method public getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 50
    packed-switch p1, :pswitch_data_68

    .line 66
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 52
    :pswitch_5
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->isProgtime:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progtimeChars:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progmaticChars:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_4

    .line 54
    :pswitch_13
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->isProgtime:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progtimeChars:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_4

    :cond_1c
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progmaticChars:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_4

    .line 56
    :pswitch_21
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->isProgtime:Z

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progtimeChars:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_4

    :cond_2a
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progmaticChars:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_4

    .line 58
    :pswitch_2f
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->isProgtime:Z

    if-eqz v0, :cond_38

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progtimeChars:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_4

    :cond_38
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progmaticChars:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_4

    .line 60
    :pswitch_3d
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->isProgtime:Z

    if-eqz v0, :cond_46

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progtimeChars:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_4

    :cond_46
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progmaticChars:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_4

    .line 62
    :pswitch_4b
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->isProgtime:Z

    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progtimeChars:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_4

    :cond_54
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progmaticChars:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_4

    .line 64
    :pswitch_59
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->isProgtime:Z

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progtimeChars:Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/ProgtimeChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_4

    :cond_62
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->progmaticChars:Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    goto :goto_4

    .line 50
    nop

    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_5
        :pswitch_13
        :pswitch_21
        :pswitch_2f
        :pswitch_3d
        :pswitch_4b
        :pswitch_59
    .end packed-switch
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/ProgtimeProgmaticSwitchPoint;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 71
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    if-nez p2, :cond_1a

    .line 77
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 78
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040033

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    new-instance v2, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    invoke-direct {v2, p0, p2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;-><init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_1a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;

    .line 82
    .local v0, "holder":Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;
    invoke-direct {p0, p1, v0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->initializeViews(ILcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter$ViewHolder;)V

    .line 84
    return-object p2
.end method

.method public setHandleOnInvalidatedHeat(Z)V
    .registers 2
    .param p1, "invalidatedHeat"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticSwitchPointAdapter;->individualMode:Z

    .line 156
    return-void
.end method
