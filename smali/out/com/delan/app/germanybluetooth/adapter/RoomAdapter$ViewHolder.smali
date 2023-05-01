.class public Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "RoomAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ViewHolder"
.end annotation


# instance fields
.field private deleteLayout:Landroid/widget/RelativeLayout;

.field private modification:Landroid/widget/RelativeLayout;

.field private roomTV:Landroid/widget/TextView;

.field private swipe:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

.field final synthetic this$0:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;Landroid/view/View;)V
    .registers 4
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->this$0:Lcom/delan/app/germanybluetooth/adapter/RoomAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    const v0, 0x7f0d00cc

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->deleteLayout:Landroid/widget/RelativeLayout;

    .line 133
    const v0, 0x7f0d00cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->modification:Landroid/widget/RelativeLayout;

    .line 134
    const v0, 0x7f0d00ac

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->swipe:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 135
    const v0, 0x7f0d007f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->roomTV:Landroid/widget/TextView;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->roomTV:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->swipe:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->modification:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;)Landroid/widget/RelativeLayout;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/adapter/RoomAdapter$ViewHolder;->deleteLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method
