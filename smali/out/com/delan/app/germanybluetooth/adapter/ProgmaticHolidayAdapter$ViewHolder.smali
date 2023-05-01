.class public Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ProgmaticHolidayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private endDateTV:Landroid/widget/TextView;

.field private endHourTV:Landroid/widget/TextView;

.field private endRL:Landroid/widget/RelativeLayout;

.field public position:I

.field private startDateTV:Landroid/widget/TextView;

.field private startHourTV:Landroid/widget/TextView;

.field private startRL:Landroid/widget/RelativeLayout;

.field private temperatureRL:Landroid/widget/RelativeLayout;

.field private temperatureTV:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

.field private titleTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    const v0, 0x7f0d00a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->titleTV:Landroid/widget/TextView;

    .line 234
    const v0, 0x7f0d00b9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->startRL:Landroid/widget/RelativeLayout;

    .line 235
    const v0, 0x7f0d00bc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->endRL:Landroid/widget/RelativeLayout;

    .line 236
    const v0, 0x7f0d00c0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->temperatureRL:Landroid/widget/RelativeLayout;

    .line 237
    const v0, 0x7f0d00bb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->startDateTV:Landroid/widget/TextView;

    .line 238
    const v0, 0x7f0d00bd

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->endDateTV:Landroid/widget/TextView;

    .line 239
    const v0, 0x7f0d00ba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->startHourTV:Landroid/widget/TextView;

    .line 240
    const v0, 0x7f0d00be

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->endHourTV:Landroid/widget/TextView;

    .line 241
    const v0, 0x7f0d00c1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->temperatureTV:Landroid/widget/TextView;

    .line 242
    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->titleTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;)V
    .registers 1
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->showData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->endHourTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->endRL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->temperatureTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->temperatureRL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->startDateTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->startHourTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->startRL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->endDateTV:Landroid/widget/TextView;

    return-object v0
.end method

.method private showData()V
    .registers 4

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "holiday":Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;
    iget v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->position:I

    packed-switch v1, :pswitch_data_7c

    .line 266
    :goto_6
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->startDateTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getStartDateStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->startHourTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getStartTimeStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->endDateTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getEndDateStr()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->endHourTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->getEndTimeStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->temperatureTV:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/base/BaseActivity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;->tempNumToSheShiDu(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    return-void

    .line 248
    :pswitch_46
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$1400(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v1

    iget-object v0, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday1:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 249
    goto :goto_6

    .line 251
    :pswitch_4f
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$1400(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v1

    iget-object v0, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday2:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 252
    goto :goto_6

    .line 254
    :pswitch_58
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$1400(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v1

    iget-object v0, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday3:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 255
    goto :goto_6

    .line 257
    :pswitch_61
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$1400(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v1

    iget-object v0, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday4:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 258
    goto :goto_6

    .line 260
    :pswitch_6a
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$1400(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v1

    iget-object v0, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday5:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    .line 261
    goto :goto_6

    .line 263
    :pswitch_73
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;->access$1400(Lcom/delan/app/germanybluetooth/adapter/ProgmaticHolidayAdapter;)Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;

    move-result-object v1

    iget-object v0, v1, Lcom/delan/app/germanybluetooth/bean/ProgmaticChars;->holiday6:Lcom/delan/app/germanybluetooth/bean/chars/HolidayTemperature;

    goto :goto_6

    .line 246
    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_46
        :pswitch_4f
        :pswitch_58
        :pswitch_61
        :pswitch_6a
        :pswitch_73
    .end packed-switch
.end method
