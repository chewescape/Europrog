.class public Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "DeviceDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewHolder"
.end annotation


# instance fields
.field protected battery:Landroid/widget/ProgressBar;

.field public batteryTV:Landroid/widget/TextView;

.field protected deleteLayout:Landroid/widget/RelativeLayout;

.field public deviceName:Landroid/widget/TextView;

.field protected modificationLayout:Landroid/widget/RelativeLayout;

.field public percentTV:Landroid/widget/TextView;

.field protected position:I

.field public settingsColor:Landroid/widget/TextView;

.field protected swipe:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

.field protected time1:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;Landroid/view/View;)V
    .registers 5
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    const v0, 0x7f0d00af

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->deviceName:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f0d00b4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->time1:Landroid/widget/ImageView;

    .line 191
    const v0, 0x7f0d00ac

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->swipe:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 192
    const v0, 0x7f0d00ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->modificationLayout:Landroid/widget/RelativeLayout;

    .line 193
    const v0, 0x7f0d00ae

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->deleteLayout:Landroid/widget/RelativeLayout;

    .line 194
    const v0, 0x7f0d00b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->battery:Landroid/widget/ProgressBar;

    .line 195
    const v0, 0x7f0d00b2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->batteryTV:Landroid/widget/TextView;

    .line 196
    const v0, 0x7f0d00b3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->percentTV:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f0d00b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->settingsColor:Landroid/widget/TextView;

    .line 199
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;->time1:Landroid/widget/ImageView;

    new-instance v1, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder$1;

    invoke-direct {v1, p0, p1}, Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder$1;-><init>(Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter$ViewHolder;Lcom/delan/app/germanybluetooth/adapter/DeviceDetailAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    return-void
.end method
