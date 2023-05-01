.class public Lcom/delan/app/germanybluetooth/widget/WheelRecycle;
.super Ljava/lang/Object;
.source "WheelRecycle.java"


# instance fields
.field private emptyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private wheel:Lcom/delan/app/germanybluetooth/widget/WheelView;


# direct methods
.method public constructor <init>(Lcom/delan/app/germanybluetooth/widget/WheelView;)V
    .registers 2
    .param p1, "wheel"    # Lcom/delan/app/germanybluetooth/widget/WheelView;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->wheel:Lcom/delan/app/germanybluetooth/widget/WheelView;

    .line 47
    return-void
.end method

.method private addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    .local p2, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-nez p2, :cond_7

    .line 112
    new-instance p2, Ljava/util/ArrayList;

    .end local p2    # "cache":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .restart local p2    # "cache":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    :cond_7
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    return-object p2
.end method

.method private getCachedView(Ljava/util/List;)Landroid/view/View;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .local p1, "cache":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v2, 0x0

    .line 144
    if-eqz p1, :cond_13

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_13

    .line 145
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 146
    .local v0, "view":Landroid/view/View;
    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 149
    .end local v0    # "view":Landroid/view/View;
    :goto_12
    return-object v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private recycleView(Landroid/view/View;I)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 125
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->wheel:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getViewAdapter()Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;

    move-result-object v1

    invoke-interface {v1}, Lcom/delan/app/germanybluetooth/widget/WheelViewAdapter;->getItemsCount()I

    move-result v0

    .line 127
    .local v0, "count":I
    if-ltz p2, :cond_e

    if-lt p2, v0, :cond_1f

    :cond_e
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->wheel:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->isCyclic()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 129
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->emptyItems:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->emptyItems:Ljava/util/List;

    .line 136
    :goto_1e
    return-void

    .line 131
    :cond_1f
    :goto_1f
    if-gez p2, :cond_23

    .line 132
    add-int/2addr p2, v0

    goto :goto_1f

    .line 134
    :cond_23
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->items:Ljava/util/List;

    invoke-direct {p0, p1, v1}, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->addView(Landroid/view/View;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->items:Ljava/util/List;

    goto :goto_1e
.end method


# virtual methods
.method public clearAll()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->items:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 99
    :cond_9
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->emptyItems:Ljava/util/List;

    if-eqz v0, :cond_12

    .line 100
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->emptyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    :cond_12
    return-void
.end method

.method public getEmptyItem()Landroid/view/View;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->emptyItems:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->getCachedView(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem()Landroid/view/View;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->items:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->getCachedView(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public recycleItems(Landroid/widget/LinearLayout;ILcom/delan/app/germanybluetooth/widget/ItemsRange;)I
    .registers 7
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .param p2, "firstItem"    # I
    .param p3, "range"    # Lcom/delan/app/germanybluetooth/widget/ItemsRange;

    .prologue
    .line 60
    move v1, p2

    .line 61
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_22

    .line 62
    invoke-virtual {p3, v1}, Lcom/delan/app/germanybluetooth/widget/ItemsRange;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 63
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/delan/app/germanybluetooth/widget/WheelRecycle;->recycleView(Landroid/view/View;I)V

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 65
    if-nez v0, :cond_1c

    .line 66
    add-int/lit8 p2, p2, 0x1

    .line 71
    :cond_1c
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 69
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 73
    :cond_22
    return p2
.end method
