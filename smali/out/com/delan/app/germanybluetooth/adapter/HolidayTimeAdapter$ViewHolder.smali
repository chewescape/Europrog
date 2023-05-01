.class public Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "HolidayTimeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field private endDateTV:Landroid/widget/TextView;

.field private endHourTV:Landroid/widget/TextView;

.field private endTime1RL:Landroid/widget/RelativeLayout;

.field public position:I

.field private startDateTV:Landroid/widget/TextView;

.field private startHourTV:Landroid/widget/TextView;

.field private startingTimeRL:Landroid/widget/RelativeLayout;

.field private temperature:Landroid/widget/TextView;

.field private temperature1RL:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

.field private vacationTV:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    const v0, 0x7f0d00c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->startingTimeRL:Landroid/widget/RelativeLayout;

    .line 220
    const v0, 0x7f0d00c6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->endTime1RL:Landroid/widget/RelativeLayout;

    .line 221
    const v0, 0x7f0d00c9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->temperature1RL:Landroid/widget/RelativeLayout;

    .line 222
    const v0, 0x7f0d00c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->startDateTV:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f0d00c5

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->startHourTV:Landroid/widget/TextView;

    .line 224
    const v0, 0x7f0d00c7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->endDateTV:Landroid/widget/TextView;

    .line 225
    const v0, 0x7f0d00c8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->endHourTV:Landroid/widget/TextView;

    .line 226
    const v0, 0x7f0d00ca

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->temperature:Landroid/widget/TextView;

    .line 227
    const v0, 0x7f0d0091

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->vacationTV:Landroid/widget/TextView;

    .line 228
    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->vacationTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->startDateTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->startingTimeRL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->endTime1RL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->temperature1RL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->startHourTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->endDateTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->endHourTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/HolidayTimeAdapter$ViewHolder;->temperature:Landroid/widget/TextView;

    return-object v0
.end method
