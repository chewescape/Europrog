.class public Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;
.super Landroid/widget/BaseAdapter;
.source "WeekTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;,
        Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final callBack:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;

.field private cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

.field private context:Landroid/app/Activity;

.field private individualMode:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/delan/app/germanybluetooth/bean/CometChars;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;)V
    .registers 4
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "cometChars"    # Lcom/delan/app/germanybluetooth/bean/CometChars;
    .param p3, "switchPointChangeListener"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->context:Landroid/app/Activity;

    .line 28
    iput-object p2, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

    .line 29
    iput-object p3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->callBack:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;

    .line 30
    return-void
.end method

.method static synthetic access$1000(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;I)I
    .registers 3
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->progress2Num(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;ILandroid/widget/SeekBar;Landroid/widget/TextView;)V
    .registers 4
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/widget/SeekBar;
    .param p3, "x3"    # Landroid/widget/TextView;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->setProgressAndTv(ILandroid/widget/SeekBar;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->callBack:Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$OnSwitchPointChangeListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;)Landroid/app/Activity;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->context:Landroid/app/Activity;

    return-object v0
.end method

.method private initializeViews(ILcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)V
    .registers 5
    .param p1, "position"    # I
    .param p2, "holder"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .prologue
    .line 82
    iput p1, p2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->position:I

    .line 83
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 84
    const/4 v0, 0x5

    iput v0, p2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->position:I

    .line 86
    :cond_f
    iget v0, p2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->position:I

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->initializeViews(ILcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)V

    .line 87
    return-void
.end method

.method private initializeViews(ILcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)V
    .registers 9
    .param p1, "position"    # I
    .param p2, "switchPoint"    # Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;
    .param p3, "holder"    # Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-boolean v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->individualMode:Z

    if-eqz v1, :cond_12b

    .line 92
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0003

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "stringArray":[Ljava/lang/String;
    invoke-static {p3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$000(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    aget-object v3, v0, p1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :goto_1b
    invoke-static {p3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$100(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->context:Landroid/app/Activity;

    iget v4, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime1:I

    invoke-static {v3, v4}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->numToTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    invoke-static {p3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$200(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->context:Landroid/app/Activity;

    iget v4, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime1:I

    invoke-static {v3, v4}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->numToTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-static {p3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$300(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->context:Landroid/app/Activity;

    iget v4, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime2:I

    invoke-static {v3, v4}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->numToTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    invoke-static {p3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$400(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->context:Landroid/app/Activity;

    iget v4, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime2:I

    invoke-static {v3, v4}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->numToTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v3, p3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart1:Landroid/widget/SeekBar;

    iget v1, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime1:I

    invoke-virtual {p2, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->isDataValid(I)Z

    move-result v1

    if-eqz v1, :cond_151

    iget v1, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime1:I

    add-int/lit8 v1, v1, 0x1

    :goto_65
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 108
    iget-object v3, p3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart2:Landroid/widget/SeekBar;

    iget v1, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime2:I

    invoke-virtual {p2, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->isDataValid(I)Z

    move-result v1

    if-eqz v1, :cond_154

    iget v1, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime2:I

    add-int/lit8 v1, v1, 0x1

    :goto_76
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 109
    iget-object v3, p3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd1:Landroid/widget/SeekBar;

    iget v1, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime1:I

    invoke-virtual {p2, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->isDataValid(I)Z

    move-result v1

    if-eqz v1, :cond_157

    iget v1, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime1:I

    add-int/lit8 v1, v1, 0x1

    :goto_87
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 110
    iget-object v3, p3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd2:Landroid/widget/SeekBar;

    iget v1, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime2:I

    invoke-virtual {p2, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->isDataValid(I)Z

    move-result v1

    if-eqz v1, :cond_15a

    iget v1, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime2:I

    add-int/lit8 v1, v1, 0x1

    :goto_98
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 112
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/bean/CometChars;->weatherIs4PeriodsPerDay()Z

    move-result v1

    if-eqz v1, :cond_163

    .line 113
    invoke-static {p3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$500(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    invoke-static {p3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$600(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->context:Landroid/app/Activity;

    iget v4, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    invoke-static {v3, v4}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->numToTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {p3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$700(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->context:Landroid/app/Activity;

    iget v4, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime4:I

    invoke-static {v3, v4}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->numToTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    invoke-static {p3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$800(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->context:Landroid/app/Activity;

    iget v4, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    invoke-static {v3, v4}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->numToTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-static {p3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$900(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->context:Landroid/app/Activity;

    iget v4, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime4:I

    invoke-static {v3, v4}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->numToTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    iget-object v3, p3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart3:Landroid/widget/SeekBar;

    iget v1, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    invoke-virtual {p2, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->isDataValid(I)Z

    move-result v1

    if-eqz v1, :cond_15d

    iget v1, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime3:I

    add-int/lit8 v1, v1, 0x1

    :goto_f4
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 120
    iget-object v3, p3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekStart4:Landroid/widget/SeekBar;

    iget v1, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime4:I

    invoke-virtual {p2, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->isDataValid(I)Z

    move-result v1

    if-eqz v1, :cond_15f

    iget v1, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->startTime4:I

    add-int/lit8 v1, v1, 0x1

    :goto_105
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 121
    iget-object v3, p3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd3:Landroid/widget/SeekBar;

    iget v1, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    invoke-virtual {p2, v1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->isDataValid(I)Z

    move-result v1

    if-eqz v1, :cond_161

    iget v1, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime3:I

    add-int/lit8 v1, v1, 0x1

    :goto_116
    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 122
    iget-object v1, p3, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->seekEnd4:Landroid/widget/SeekBar;

    iget v3, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime4:I

    invoke-virtual {p2, v3}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->isDataValid(I)Z

    move-result v3

    if-eqz v3, :cond_127

    iget v2, p2, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->endTime4:I

    add-int/lit8 v2, v2, 0x1

    :cond_127
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 126
    :goto_12a
    return-void

    .line 95
    .end local v0    # "stringArray":[Ljava/lang/String;
    :cond_12b
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0004

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 96
    .restart local v0    # "stringArray":[Ljava/lang/String;
    if-nez p1, :cond_145

    .line 97
    invoke-static {p3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$000(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b

    .line 99
    :cond_145
    invoke-static {p3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$000(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1b

    :cond_151
    move v1, v2

    .line 107
    goto/16 :goto_65

    :cond_154
    move v1, v2

    .line 108
    goto/16 :goto_76

    :cond_157
    move v1, v2

    .line 109
    goto/16 :goto_87

    :cond_15a
    move v1, v2

    .line 110
    goto/16 :goto_98

    :cond_15d
    move v1, v2

    .line 119
    goto :goto_f4

    :cond_15f
    move v1, v2

    .line 120
    goto :goto_105

    :cond_161
    move v1, v2

    .line 121
    goto :goto_116

    .line 124
    :cond_163
    invoke-static {p3}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;->access$500(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_12a
.end method

.method private num2Progress(I)I
    .registers 3
    .param p1, "num"    # I

    .prologue
    .line 720
    const/16 v0, 0xff

    if-ne p1, v0, :cond_6

    .line 721
    const/4 v0, 0x0

    .line 723
    :goto_5
    return v0

    :cond_6
    add-int/lit8 v0, p1, 0x1

    goto :goto_5
.end method

.method private progress2Num(I)I
    .registers 3
    .param p1, "progress"    # I

    .prologue
    .line 713
    if-nez p1, :cond_5

    .line 714
    const/16 v0, 0xff

    .line 716
    :goto_4
    return v0

    :cond_5
    add-int/lit8 v0, p1, -0x1

    goto :goto_4
.end method

.method private setProgressAndTv(ILandroid/widget/SeekBar;Landroid/widget/TextView;)V
    .registers 5
    .param p1, "num"    # I
    .param p2, "seekBar"    # Landroid/widget/SeekBar;
    .param p3, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->num2Progress(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 135
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->context:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;->numToTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->individualMode:Z

    if-eqz v0, :cond_6

    .line 35
    const/4 v0, 0x7

    .line 37
    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x2

    goto :goto_5
.end method

.method public getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 42
    packed-switch p1, :pswitch_data_28

    .line 58
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 44
    :pswitch_5
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/CometChars;->mondayOrWorkingDay:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    goto :goto_4

    .line 46
    :pswitch_a
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/CometChars;->tuesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    goto :goto_4

    .line 48
    :pswitch_f
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/CometChars;->wednesday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    goto :goto_4

    .line 50
    :pswitch_14
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/CometChars;->thursday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    goto :goto_4

    .line 52
    :pswitch_19
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/CometChars;->friday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    goto :goto_4

    .line 54
    :pswitch_1e
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/CometChars;->saturdayOrWeekend:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    goto :goto_4

    .line 56
    :pswitch_23
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->cometChars:Lcom/delan/app/germanybluetooth/bean/CometChars;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/bean/CometChars;->sunday:Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    goto :goto_4

    .line 42
    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_5
        :pswitch_a
        :pswitch_f
        :pswitch_14
        :pswitch_19
        :pswitch_1e
        :pswitch_23
    .end packed-switch
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 20
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->getItem(I)Lcom/delan/app/germanybluetooth/bean/chars/CometSwitchPoint;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 69
    if-nez p2, :cond_1a

    .line 70
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 71
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f040033

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    new-instance v2, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    invoke-direct {v2, p0, p2}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;-><init>(Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;Landroid/view/View;)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :cond_1a
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;

    .line 77
    .local v0, "holder":Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;
    invoke-direct {p0, p1, v0}, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->initializeViews(ILcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter$ViewHolder;)V

    .line 78
    return-object p2
.end method

.method public setHandleOnInvalidatedHeat(Z)V
    .registers 2
    .param p1, "invalidatedHeat"    # Z

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/delan/app/germanybluetooth/adapter/WeekTimeAdapter;->individualMode:Z

    .line 131
    return-void
.end method
