.class Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ProgmaticDevicesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field private cb:Landroid/widget/CheckBox;

.field private deleteRL:Landroid/widget/RelativeLayout;

.field private itemDevicesTV:Landroid/widget/TextView;

.field private modificationRL:Landroid/widget/RelativeLayout;

.field private swipe:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;Landroid/view/View;)V
    .registers 4
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    const v0, 0x7f0d00ad

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->modificationRL:Landroid/widget/RelativeLayout;

    .line 146
    const v0, 0x7f0d00b6

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->deleteRL:Landroid/widget/RelativeLayout;

    .line 147
    const v0, 0x7f0d00ac

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->swipe:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 148
    const v0, 0x7f0d00b7

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->itemDevicesTV:Landroid/widget/TextView;

    .line 149
    const v0, 0x7f0d00b8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->itemDevicesTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;)Landroid/widget/CheckBox;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->cb:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->swipe:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->modificationRL:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/ProgmaticDevicesAdapter$ViewHolder;->deleteRL:Landroid/widget/RelativeLayout;

    return-object v0
.end method
