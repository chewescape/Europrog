.class public Lcom/delan/app/germanybluetooth/widget/WheelView;
.super Landroid/view/View;
.source "WheelView.java"


# static fields
.field public static final DEF_VISIBLE_ITEMS:I = 0x5

.field private static final ITEM_OFFSET_PERCENT:I = 0xa

.field private static final PADDING:I = 0xa

.field private static final SHADOWS_COLORS:[I


# instance fields
.field private bottomShadow:Landroid/graphics/drawable/GradientDrawable;

.field private changingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private clickingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/delan/app/germanybluetooth/widget/OnWheelClickedListener;",
            ">;"
        }
    .end annotation
.end field

.field private currentItem:I

.field private dataObserver:Landroid/database/DataSetObserver;

.field private firstItem:I

.field isCyclic:Z

.field private isScrollingPerformed:Z

.field private itemHeight:I

.field private itemsLayout:Landroid/widget/LinearLayout;

.field private recycle:Lcom/delan/app/germanybluetooth/widget/WheelRecycle;

.field private scroller:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

.field scrollingListener:Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;

.field private scrollingListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/delan/app/germanybluetooth/widget/OnWheelScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private scrollingOffset:I

.field private topShadow:Landroid/graphics/drawable/GradientDrawable;

.field private viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

.field private visibleItems:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/delan/app/germanybluetooth/widget/WheelView;->SHADOWS_COLORS:[I

    return-void

    nop

    :array_a
    .array-data 4
        -0x1
        -0x77000001
        0x66ffffff
        0xffffff
        0xffffff
        0xffffff
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 122
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 62
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->visibleItems:I

    .line 68
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemHeight:I

    .line 83
    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->isCyclic:Z

    .line 95
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;-><init>(Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->recycle:Lcom/delan/app/germanybluetooth/widget/WheelRecycle;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->clickingListeners:Ljava/util/List;

    .line 137
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/WheelView$1;-><init>(Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingListener:Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;

    .line 214
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/WheelView$2;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/WheelView$2;-><init>(Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 123
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->initData(Landroid/content/Context;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->visibleItems:I

    .line 68
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemHeight:I

    .line 83
    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->isCyclic:Z

    .line 95
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;-><init>(Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->recycle:Lcom/delan/app/germanybluetooth/widget/WheelRecycle;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->clickingListeners:Ljava/util/List;

    .line 137
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/WheelView$1;-><init>(Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingListener:Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;

    .line 214
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/WheelView$2;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/WheelView$2;-><init>(Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 115
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->initData(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    .line 65
    const/4 v0, 0x5

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->visibleItems:I

    .line 68
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemHeight:I

    .line 83
    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->isCyclic:Z

    .line 95
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;-><init>(Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->recycle:Lcom/delan/app/germanybluetooth/widget/WheelRecycle;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->changingListeners:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingListeners:Ljava/util/List;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->clickingListeners:Ljava/util/List;

    .line 137
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/WheelView$1;-><init>(Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingListener:Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;

    .line 214
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/WheelView$2;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/WheelView$2;-><init>(Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    .line 107
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->initData(Landroid/content/Context;)V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/widget/WheelView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/WheelView;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->isScrollingPerformed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/delan/app/germanybluetooth/widget/WheelView;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/WheelView;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->isScrollingPerformed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/widget/WheelView;I)V
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->doScroll(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/widget/WheelView;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/WheelView;

    .prologue
    .line 44
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    return v0
.end method

.method static synthetic access$202(Lcom/delan/app/germanybluetooth/widget/WheelView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/WheelView;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    return p1
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/widget/WheelView;)Lcom/delan/app/germanybluetooth/widget/WheelScroller;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/WheelView;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scroller:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    return-object v0
.end method

.method private addViewItem(IZ)Z
    .registers 6
    .param p1, "index"    # I
    .param p2, "first"    # Z

    .prologue
    const/4 v1, 0x0

    .line 909
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getItemView(I)Landroid/view/View;

    move-result-object v0

    .line 910
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_f

    .line 911
    if-eqz p2, :cond_10

    .line 912
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 917
    :goto_e
    const/4 v1, 0x1

    .line 920
    :cond_f
    return v1

    .line 914
    :cond_10
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_e
.end method

.method private buildViewForMeasuring()V
    .registers 7

    .prologue
    .line 884
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2b

    .line 885
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->recycle:Lcom/delan/app/germanybluetooth/widget/WheelRecycle;

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    new-instance v5, Lcom/delan/app/germanybluetooth/widget/ItemsRange;

    invoke-direct {v5}, Lcom/delan/app/germanybluetooth/widget/ItemsRange;-><init>()V

    invoke-virtual {v2, v3, v4, v5}, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/delan/app/germanybluetooth/widget/ItemsRange;)I

    .line 891
    :goto_12
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->visibleItems:I

    div-int/lit8 v0, v2, 0x2

    .line 892
    .local v0, "addItems":I
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    add-int v1, v2, v0

    .local v1, "i":I
    :goto_1a
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    sub-int/2addr v2, v0

    if-lt v1, v2, :cond_2f

    .line 893
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/delan/app/germanybluetooth/widget/WheelView;->addViewItem(IZ)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 894
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    .line 892
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_1a

    .line 887
    .end local v0    # "addItems":I
    .end local v1    # "i":I
    :cond_2b
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->createItemsLayout()V

    goto :goto_12

    .line 897
    .restart local v0    # "addItems":I
    .restart local v1    # "i":I
    :cond_2f
    return-void
.end method

.method private calculateLayoutWidth(II)I
    .registers 9
    .param p1, "widthSize"    # I
    .param p2, "mode"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 523
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->initResourcesIfNecessary()V

    .line 526
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 528
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    .line 529
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 530
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 529
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 532
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    .line 534
    .local v0, "width":I
    if-ne p2, v5, :cond_37

    .line 535
    move v0, p1

    .line 547
    :cond_27
    :goto_27
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    add-int/lit8 v2, v0, -0x14

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 548
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 547
    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 551
    return v0

    .line 537
    :cond_37
    add-int/lit8 v0, v0, 0x14

    .line 540
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 542
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_27

    if-ge p1, v0, :cond_27

    .line 543
    move v0, p1

    goto :goto_27
.end method

.method private createItemsLayout()V
    .registers 3

    .prologue
    .line 873
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-nez v0, :cond_15

    .line 874
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    .line 875
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 877
    :cond_15
    return-void
.end method

.method private doScroll(I)V
    .registers 10
    .param p1, "delta"    # I

    .prologue
    .line 702
    iget v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    add-int/2addr v6, p1

    iput v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    .line 703
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getItemHeight()I

    move-result v3

    .line 705
    .local v3, "itemHeight":I
    iget v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    div-int v0, v6, v3

    .line 707
    .local v0, "count":I
    iget v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    sub-int v5, v6, v0

    .line 708
    .local v5, "pos":I
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    invoke-interface {v6}, Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;->getItemsCount()I

    move-result v2

    .line 711
    .local v2, "itemCount":I
    iget v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    rem-int v1, v6, v3

    .line 712
    .local v1, "fixPos":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v7, v3, 0x2

    if-gt v6, v7, :cond_24

    .line 713
    const/4 v1, 0x0

    .line 715
    :cond_24
    iget-boolean v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->isCyclic:Z

    if-eqz v6, :cond_63

    if-lez v2, :cond_63

    .line 716
    if-lez v1, :cond_34

    .line 717
    add-int/lit8 v5, v5, -0x1

    .line 718
    add-int/lit8 v0, v0, 0x1

    .line 724
    :cond_30
    :goto_30
    if-gez v5, :cond_3b

    .line 725
    add-int/2addr v5, v2

    goto :goto_30

    .line 719
    :cond_34
    if-gez v1, :cond_30

    .line 720
    add-int/lit8 v5, v5, 0x1

    .line 721
    add-int/lit8 v0, v0, -0x1

    goto :goto_30

    .line 727
    :cond_3b
    rem-int/2addr v5, v2

    .line 754
    :cond_3c
    :goto_3c
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    .line 755
    .local v4, "offset":I
    iget v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    if-eq v5, v6, :cond_87

    .line 756
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCurrentItem(IZ)V

    .line 762
    :goto_46
    mul-int v6, v0, v3

    sub-int v6, v4, v6

    iput v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    .line 763
    iget v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_62

    .line 764
    iget v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getHeight()I

    move-result v7

    rem-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getHeight()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    .line 766
    :cond_62
    return-void

    .line 730
    .end local v4    # "offset":I
    :cond_63
    if-gez v5, :cond_69

    .line 731
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    .line 732
    const/4 v5, 0x0

    goto :goto_3c

    .line 733
    :cond_69
    if-lt v5, v2, :cond_73

    .line 734
    iget v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    sub-int/2addr v6, v2

    add-int/lit8 v0, v6, 0x1

    .line 735
    add-int/lit8 v5, v2, -0x1

    goto :goto_3c

    .line 736
    :cond_73
    if-lez v5, :cond_7c

    if-lez v1, :cond_7c

    .line 737
    add-int/lit8 v5, v5, -0x1

    .line 738
    add-int/lit8 v0, v0, 0x1

    goto :goto_3c

    .line 739
    :cond_7c
    add-int/lit8 v6, v2, -0x1

    if-ge v5, v6, :cond_3c

    if-gez v1, :cond_3c

    .line 740
    add-int/lit8 v5, v5, 0x1

    .line 741
    add-int/lit8 v0, v0, -0x1

    goto :goto_3c

    .line 758
    .restart local v4    # "offset":I
    :cond_87
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->invalidate()V

    goto :goto_46
.end method

.method private drawCenterRect(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x64

    .line 652
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getHeight()I

    move-result v0

    div-int/lit8 v6, v0, 0x2

    .line 653
    .local v6, "center":I
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getItemHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v2, v0

    const-wide v8, 0x3ff3333333333333L    # 1.2

    mul-double/2addr v2, v8

    double-to-int v7, v2

    .line 654
    .local v7, "offset":I
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 655
    .local v5, "paint":Landroid/graphics/Paint;
    const/16 v0, 0xc8

    invoke-virtual {v5, v0, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 656
    sub-int v0, v6, v7

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    sub-int v0, v6, v7

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 657
    add-int v0, v6, v7

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getWidth()I

    move-result v0

    int-to-float v3, v0

    add-int v0, v6, v7

    int-to-float v4, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 661
    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 635
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 636
    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    sub-int/2addr v1, v2

    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getItemHeight()I

    move-result v2

    mul-int/2addr v1, v2

    .line 637
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getItemHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int v0, v1, v2

    .line 638
    .local v0, "top":I
    const/high16 v1, 0x41200000    # 10.0f

    neg-int v2, v0

    iget v3, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 640
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 642
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 643
    return-void
.end method

.method private drawShadows(Landroid/graphics/Canvas;)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v6, 0x0

    .line 619
    const-wide/high16 v2, 0x400c000000000000L    # 3.5

    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getItemHeight()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 620
    .local v0, "height":I
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v6, v6, v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 621
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 623
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 624
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getHeight()I

    move-result v4

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 625
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 626
    return-void
.end method

.method private getDesiredHeight(Landroid/widget/LinearLayout;)I
    .registers 5
    .param p1, "layout"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v2, 0x0

    .line 485
    if-eqz p1, :cond_13

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 486
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemHeight:I

    .line 489
    :cond_13
    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemHeight:I

    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->visibleItems:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemHeight:I

    mul-int/lit8 v2, v2, 0xa

    div-int/lit8 v2, v2, 0x32

    sub-int v0, v1, v2

    .line 492
    .local v0, "desired":I
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    return v1
.end method

.method private getItemHeight()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 501
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemHeight:I

    if-eqz v0, :cond_8

    .line 502
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemHeight:I

    .line 510
    :goto_7
    return v0

    .line 505
    :cond_8
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_23

    .line 506
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemHeight:I

    .line 507
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemHeight:I

    goto :goto_7

    .line 510
    :cond_23
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->visibleItems:I

    div-int/2addr v0, v1

    goto :goto_7
.end method

.method private getItemView(I)Landroid/view/View;
    .registers 6
    .param p1, "index"    # I

    .prologue
    .line 945
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    invoke-interface {v1}, Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_e

    .line 946
    :cond_c
    const/4 v1, 0x0

    .line 959
    :goto_d
    return-object v1

    .line 948
    :cond_e
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    invoke-interface {v1}, Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 949
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->isValidItemIndex(I)Z

    move-result v1

    if-nez v1, :cond_29

    .line 950
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->recycle:Lcom/delan/app/germanybluetooth/widget/WheelRecycle;

    .line 951
    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->getEmptyItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, v2, v3}, Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;->getEmptyItem(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_d

    .line 953
    :cond_29
    :goto_29
    if-gez p1, :cond_2d

    .line 954
    add-int/2addr p1, v0

    goto :goto_29

    .line 958
    :cond_2d
    rem-int/2addr p1, v0

    .line 959
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->recycle:Lcom/delan/app/germanybluetooth/widget/WheelRecycle;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->getItem()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-interface {v1, p1, v2, v3}, Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;->getItem(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_d
.end method

.method private getItemsRange()Lcom/delan/app/germanybluetooth/widget/ItemsRange;
    .registers 9

    .prologue
    .line 787
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getItemHeight()I

    move-result v3

    if-nez v3, :cond_8

    .line 788
    const/4 v3, 0x0

    .line 810
    :goto_7
    return-object v3

    .line 791
    :cond_8
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    .line 792
    .local v2, "first":I
    const/4 v0, 0x1

    .line 794
    .local v0, "count":I
    :goto_b
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getItemHeight()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_1b

    .line 795
    add-int/lit8 v2, v2, -0x1

    .line 796
    add-int/lit8 v0, v0, 0x2

    goto :goto_b

    .line 799
    :cond_1b
    iget v3, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    if-eqz v3, :cond_38

    .line 800
    iget v3, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    if-lez v3, :cond_25

    .line 801
    add-int/lit8 v2, v2, -0x1

    .line 803
    :cond_25
    add-int/lit8 v0, v0, 0x1

    .line 806
    iget v3, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getItemHeight()I

    move-result v4

    div-int v1, v3, v4

    .line 807
    .local v1, "emptyItems":I
    sub-int/2addr v2, v1

    .line 808
    int-to-double v4, v0

    int-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->asin(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v0, v4

    .line 810
    .end local v1    # "emptyItems":I
    :cond_38
    new-instance v3, Lcom/delan/app/germanybluetooth/widget/ItemsRange;

    invoke-direct {v3, v2, v0}, Lcom/delan/app/germanybluetooth/widget/ItemsRange;-><init>(II)V

    goto :goto_7
.end method

.method private initData(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingListener:Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;

    invoke-direct {v0, v1, v2}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;-><init>(Landroid/content/Context;Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scroller:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    .line 134
    return-void
.end method

.method private initResourcesIfNecessary()V
    .registers 4

    .prologue
    .line 464
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_f

    .line 465
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/delan/app/germanybluetooth/widget/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->topShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 469
    :cond_f
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_1e

    .line 470
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget-object v2, Lcom/delan/app/germanybluetooth/widget/WheelView;->SHADOWS_COLORS:[I

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->bottomShadow:Landroid/graphics/drawable/GradientDrawable;

    .line 475
    :cond_1e
    return-void
.end method

.method private isValidItemIndex(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 931
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    .line 932
    invoke-interface {v0}, Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_1c

    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->isCyclic:Z

    if-nez v0, :cond_1a

    if-ltz p1, :cond_1c

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    .line 934
    invoke-interface {v0}, Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_1c

    :cond_1a
    const/4 v0, 0x1

    .line 931
    :goto_1b
    return v0

    .line 934
    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method private layout(II)V
    .registers 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 593
    add-int/lit8 v0, p1, -0x14

    .line 595
    .local v0, "itemsWidth":I
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v2, v0, p2}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 596
    return-void
.end method

.method private rebuildItems()Z
    .registers 10

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 820
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getItemsRange()Lcom/delan/app/germanybluetooth/widget/ItemsRange;

    move-result-object v2

    .line 821
    .local v2, "range":Lcom/delan/app/germanybluetooth/widget/ItemsRange;
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_84

    .line 822
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->recycle:Lcom/delan/app/germanybluetooth/widget/WheelRecycle;

    iget-object v7, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v8, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    invoke-virtual {v6, v7, v8, v2}, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/delan/app/germanybluetooth/widget/ItemsRange;)I

    move-result v0

    .line 823
    .local v0, "first":I
    iget v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    if-eq v6, v0, :cond_82

    move v3, v4

    .line 824
    .local v3, "updated":Z
    :goto_19
    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    .line 830
    .end local v0    # "first":I
    :goto_1b
    if-nez v3, :cond_36

    .line 831
    iget v7, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    if-eqz v2, :cond_89

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/ItemsRange;->getFirst()I

    move-result v6

    :goto_25
    if-ne v7, v6, :cond_35

    iget-object v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    .line 832
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-eqz v2, :cond_8b

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/ItemsRange;->getCount()I

    move-result v6

    :goto_33
    if-eq v7, v6, :cond_8d

    :cond_35
    move v3, v4

    .line 835
    :cond_36
    :goto_36
    iget v7, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    if-eqz v2, :cond_8f

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/ItemsRange;->getFirst()I

    move-result v6

    :goto_3e
    if-le v7, v6, :cond_9a

    iget v7, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    if-eqz v2, :cond_91

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/ItemsRange;->getLast()I

    move-result v6

    :goto_48
    if-gt v7, v6, :cond_9a

    .line 836
    iget v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_4e
    if-eqz v2, :cond_93

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/ItemsRange;->getFirst()I

    move-result v6

    :goto_54
    if-lt v1, v6, :cond_5c

    .line 837
    invoke-direct {p0, v1, v4}, Lcom/delan/app/germanybluetooth/widget/WheelView;->addViewItem(IZ)Z

    move-result v6

    if-nez v6, :cond_95

    .line 846
    .end local v1    # "i":I
    :cond_5c
    :goto_5c
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    .line 847
    .restart local v0    # "first":I
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .restart local v1    # "i":I
    :goto_64
    if-eqz v2, :cond_a5

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/ItemsRange;->getCount()I

    move-result v4

    :goto_6a
    if-ge v1, v4, :cond_a7

    .line 848
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    add-int/2addr v4, v1

    invoke-direct {p0, v4, v5}, Lcom/delan/app/germanybluetooth/widget/WheelView;->addViewItem(IZ)Z

    move-result v4

    if-nez v4, :cond_7f

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    .line 849
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-nez v4, :cond_7f

    .line 850
    add-int/lit8 v0, v0, 0x1

    .line 847
    :cond_7f
    add-int/lit8 v1, v1, 0x1

    goto :goto_64

    .end local v1    # "i":I
    .end local v3    # "updated":Z
    :cond_82
    move v3, v5

    .line 823
    goto :goto_19

    .line 826
    .end local v0    # "first":I
    :cond_84
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->createItemsLayout()V

    .line 827
    const/4 v3, 0x1

    .restart local v3    # "updated":Z
    goto :goto_1b

    :cond_89
    move v6, v5

    .line 831
    goto :goto_25

    :cond_8b
    move v6, v5

    .line 832
    goto :goto_33

    :cond_8d
    move v3, v5

    goto :goto_36

    :cond_8f
    move v6, v5

    .line 835
    goto :goto_3e

    :cond_91
    move v6, v5

    goto :goto_48

    .restart local v1    # "i":I
    :cond_93
    move v6, v5

    .line 836
    goto :goto_54

    .line 840
    :cond_95
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    .line 836
    add-int/lit8 v1, v1, -0x1

    goto :goto_4e

    .line 843
    .end local v1    # "i":I
    :cond_9a
    if-eqz v2, :cond_a3

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/ItemsRange;->getFirst()I

    move-result v4

    :goto_a0
    iput v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    goto :goto_5c

    :cond_a3
    move v4, v5

    goto :goto_a0

    .restart local v0    # "first":I
    .restart local v1    # "i":I
    :cond_a5
    move v4, v5

    .line 847
    goto :goto_6a

    .line 853
    :cond_a7
    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    .line 855
    return v3
.end method

.method private updateView()V
    .registers 3

    .prologue
    .line 863
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->rebuildItems()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 864
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-direct {p0, v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->calculateLayoutWidth(II)I

    .line 865
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->layout(II)V

    .line 867
    :cond_1a
    return-void
.end method


# virtual methods
.method public addChangingListener(Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;

    .prologue
    .line 252
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    return-void
.end method

.method public addClickingListener(Lcom/delan/app/germanybluetooth/widget/OnWheelClickedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/delan/app/germanybluetooth/widget/OnWheelClickedListener;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    return-void
.end method

.method public addScrollingListener(Lcom/delan/app/germanybluetooth/widget/OnWheelScrollListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/delan/app/germanybluetooth/widget/OnWheelScrollListener;

    .prologue
    .line 286
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method public getCurrentItem()I
    .registers 2

    .prologue
    .line 352
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    return v0
.end method

.method public getViewAdapter()Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    return-object v0
.end method

.method public getVisibleItems()I
    .registers 2

    .prologue
    .line 189
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->visibleItems:I

    return v0
.end method

.method public invalidateWheel(Z)V
    .registers 6
    .param p1, "clearCaches"    # Z

    .prologue
    .line 441
    if-eqz p1, :cond_17

    .line 442
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->recycle:Lcom/delan/app/germanybluetooth/widget/WheelRecycle;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->clearAll()V

    .line 443
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_10

    .line 444
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 446
    :cond_10
    const/4 v0, 0x0

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    .line 452
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->invalidate()V

    .line 453
    return-void

    .line 447
    :cond_17
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_13

    .line 449
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->recycle:Lcom/delan/app/germanybluetooth/widget/WheelRecycle;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->firstItem:I

    new-instance v3, Lcom/delan/app/germanybluetooth/widget/ItemsRange;

    invoke-direct {v3}, Lcom/delan/app/germanybluetooth/widget/ItemsRange;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->recycleItems(Landroid/widget/LinearLayout;ILcom/delan/app/germanybluetooth/widget/ItemsRange;)I

    goto :goto_13
.end method

.method public isCyclic()Z
    .registers 2

    .prologue
    .line 420
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->isCyclic:Z

    return v0
.end method

.method protected notifyChangingListeners(II)V
    .registers 6
    .param p1, "oldValue"    # I
    .param p2, "newValue"    # I

    .prologue
    .line 274
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;

    .line 275
    .local v0, "listener":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    invoke-interface {v0, p0, p1, p2}, Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;->onChanged(Lcom/delan/app/germanybluetooth/widget/WheelView;II)V

    goto :goto_6

    .line 277
    .end local v0    # "listener":Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;
    :cond_16
    return-void
.end method

.method protected notifyClickListenersAboutClick(I)V
    .registers 5
    .param p1, "item"    # I

    .prologue
    .line 341
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/OnWheelClickedListener;

    .line 342
    .local v0, "listener":Lcom/delan/app/germanybluetooth/widget/OnWheelClickedListener;
    invoke-interface {v0, p0, p1}, Lcom/delan/app/germanybluetooth/widget/OnWheelClickedListener;->onItemClicked(Lcom/delan/app/germanybluetooth/widget/WheelView;I)V

    goto :goto_6

    .line 344
    .end local v0    # "listener":Lcom/delan/app/germanybluetooth/widget/OnWheelClickedListener;
    :cond_16
    return-void
.end method

.method protected notifyScrollingListenersAboutEnd()V
    .registers 4

    .prologue
    .line 312
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/OnWheelScrollListener;

    .line 313
    .local v0, "listener":Lcom/delan/app/germanybluetooth/widget/OnWheelScrollListener;
    invoke-interface {v0, p0}, Lcom/delan/app/germanybluetooth/widget/OnWheelScrollListener;->onScrollingFinished(Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    goto :goto_6

    .line 315
    .end local v0    # "listener":Lcom/delan/app/germanybluetooth/widget/OnWheelScrollListener;
    :cond_16
    return-void
.end method

.method protected notifyScrollingListenersAboutStart()V
    .registers 4

    .prologue
    .line 303
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/OnWheelScrollListener;

    .line 304
    .local v0, "listener":Lcom/delan/app/germanybluetooth/widget/OnWheelScrollListener;
    invoke-interface {v0, p0}, Lcom/delan/app/germanybluetooth/widget/OnWheelScrollListener;->onScrollingStarted(Lcom/delan/app/germanybluetooth/widget/WheelView;)V

    goto :goto_6

    .line 306
    .end local v0    # "listener":Lcom/delan/app/germanybluetooth/widget/OnWheelScrollListener;
    :cond_16
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 600
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 602
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    invoke-interface {v0}, Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;->getItemsCount()I

    move-result v0

    if-lez v0, :cond_18

    .line 603
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->updateView()V

    .line 605
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->drawItems(Landroid/graphics/Canvas;)V

    .line 606
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->drawCenterRect(Landroid/graphics/Canvas;)V

    .line 609
    :cond_18
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->drawShadows(Landroid/graphics/Canvas;)V

    .line 610
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 581
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-direct {p0, v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->layout(II)V

    .line 582
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 556
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 557
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 558
    .local v1, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 559
    .local v5, "widthSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 561
    .local v2, "heightSize":I
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->buildViewForMeasuring()V

    .line 563
    invoke-direct {p0, v5, v4}, Lcom/delan/app/germanybluetooth/widget/WheelView;->calculateLayoutWidth(II)I

    move-result v3

    .line 566
    .local v3, "width":I
    const/high16 v6, 0x40000000    # 2.0f

    if-ne v1, v6, :cond_20

    .line 567
    move v0, v2

    .line 576
    .local v0, "height":I
    :cond_1c
    :goto_1c
    invoke-virtual {p0, v3, v0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setMeasuredDimension(II)V

    .line 577
    return-void

    .line 569
    .end local v0    # "height":I
    :cond_20
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->itemsLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getDesiredHeight(Landroid/widget/LinearLayout;)I

    move-result v0

    .line 571
    .restart local v0    # "height":I
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_1c

    .line 572
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1c
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 665
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getViewAdapter()Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    move-result-object v3

    if-nez v3, :cond_e

    .line 692
    :cond_d
    :goto_d
    return v2

    .line 669
    :cond_e
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_64

    .line 692
    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scroller:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-virtual {v2, p1}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_d

    .line 671
    :pswitch_1c
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 672
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_15

    .line 677
    :pswitch_2a
    iget-boolean v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->isScrollingPerformed:Z

    if-nez v2, :cond_15

    .line 678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 679
    .local v0, "distance":I
    if-lez v0, :cond_5c

    .line 680
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 684
    :goto_44
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getItemHeight()I

    move-result v2

    div-int v1, v0, v2

    .line 685
    .local v1, "items":I
    if-eqz v1, :cond_15

    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/delan/app/germanybluetooth/widget/WheelView;->isValidItemIndex(I)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 686
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/widget/WheelView;->notifyClickListenersAboutClick(I)V

    goto :goto_15

    .line 682
    .end local v1    # "items":I
    :cond_5c
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getItemHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v0, v2

    goto :goto_44

    .line 669
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_1c
    .end packed-switch
.end method

.method public removeChangingListener(Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/delan/app/germanybluetooth/widget/OnWheelChangedListener;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->changingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public removeClickingListener(Lcom/delan/app/germanybluetooth/widget/OnWheelClickedListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/delan/app/germanybluetooth/widget/OnWheelClickedListener;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->clickingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 335
    return-void
.end method

.method public removeScrollingListener(Lcom/delan/app/germanybluetooth/widget/OnWheelScrollListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/delan/app/germanybluetooth/widget/OnWheelScrollListener;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 297
    return-void
.end method

.method public scroll(II)V
    .registers 6
    .param p1, "itemsToScroll"    # I
    .param p2, "time"    # I

    .prologue
    .line 777
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getItemHeight()I

    move-result v1

    mul-int/2addr v1, p1

    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    sub-int v0, v1, v2

    .line 778
    .local v0, "distance":I
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scroller:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-virtual {v1, v0, p2}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->scroll(II)V

    .line 779
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 410
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->setCurrentItem(IZ)V

    .line 411
    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v6, 0x0

    .line 364
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    invoke-interface {v4}, Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;->getItemsCount()I

    move-result v4

    if-nez v4, :cond_e

    .line 401
    :cond_d
    :goto_d
    return-void

    .line 368
    :cond_e
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    invoke-interface {v4}, Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 369
    .local v0, "itemCount":I
    if-ltz p1, :cond_18

    if-lt p1, v0, :cond_21

    .line 370
    :cond_18
    iget-boolean v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->isCyclic:Z

    if-eqz v4, :cond_d

    .line 371
    :goto_1c
    if-gez p1, :cond_20

    .line 372
    add-int/2addr p1, v0

    goto :goto_1c

    .line 374
    :cond_20
    rem-int/2addr p1, v0

    .line 379
    :cond_21
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    if-eq p1, v4, :cond_d

    .line 380
    if-eqz p2, :cond_4d

    .line 381
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    sub-int v1, p1, v4

    .line 382
    .local v1, "itemsToScroll":I
    iget-boolean v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->isCyclic:Z

    if-eqz v4, :cond_47

    .line 383
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v0

    iget v5, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    .line 384
    invoke-static {p1, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v3, v4, v5

    .line 385
    .local v3, "scroll":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_47

    .line 386
    if-gez v1, :cond_4b

    move v1, v3

    .line 389
    .end local v3    # "scroll":I
    :cond_47
    :goto_47
    invoke-virtual {p0, v1, v6}, Lcom/delan/app/germanybluetooth/widget/WheelView;->scroll(II)V

    goto :goto_d

    .line 386
    .restart local v3    # "scroll":I
    :cond_4b
    neg-int v1, v3

    goto :goto_47

    .line 391
    .end local v1    # "itemsToScroll":I
    .end local v3    # "scroll":I
    :cond_4d
    iput v6, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scrollingOffset:I

    .line 393
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    .line 394
    .local v2, "old":I
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    .line 396
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->currentItem:I

    invoke-virtual {p0, v2, v4}, Lcom/delan/app/germanybluetooth/widget/WheelView;->notifyChangingListeners(II)V

    .line 398
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->invalidate()V

    goto :goto_d
.end method

.method public setCyclic(Z)V
    .registers 3
    .param p1, "isCyclic"    # Z

    .prologue
    .line 430
    iput-boolean p1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->isCyclic:Z

    .line 431
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->invalidateWheel(Z)V

    .line 432
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 3
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scroller:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 181
    return-void
.end method

.method public setViewAdapter(Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;)V
    .registers 4
    .param p1, "viewAdapter"    # Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    if-eqz v0, :cond_b

    .line 235
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 237
    :cond_b
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    .line 238
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    if-eqz v0, :cond_18

    .line 239
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->viewAdapter:Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->dataObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 242
    :cond_18
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->invalidateWheel(Z)V

    .line 243
    return-void
.end method

.method public setVisibleItems(I)V
    .registers 2
    .param p1, "count"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->visibleItems:I

    .line 202
    return-void
.end method

.method public stopScrolling()V
    .registers 2

    .prologue
    .line 966
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView;->scroller:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->stopScrolling()V

    .line 967
    return-void
.end method
