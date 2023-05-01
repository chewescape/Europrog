.class public Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;
.super Ljava/lang/Object;
.source "SwipeItemMangerImpl.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;,
        Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;,
        Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$ValueBox;,
        Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;
    }
.end annotation


# instance fields
.field public final INVALID_POSITION:I

.field protected mAdapter:Landroid/widget/BaseAdapter;

.field protected mOpenPosition:I

.field protected mOpenPositions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mShownLayouts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;


# direct methods
.method public constructor <init>(Landroid/widget/BaseAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/BaseAdapter;

    .prologue
    const/4 v1, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->Single:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    .line 20
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->INVALID_POSITION:I

    .line 22
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPosition:I

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    .line 30
    if-nez p1, :cond_24

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 33
    :cond_24
    instance-of v0, p1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerInterface;

    if-nez v0, :cond_30

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter should implement the SwipeAdapterInterface"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_30
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mAdapter:Landroid/widget/BaseAdapter;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    return-object v0
.end method

.method private getSwipeLayoutId(I)I
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mAdapter:Landroid/widget/BaseAdapter;

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeAdapterInterface;

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeAdapterInterface;

    .line 89
    invoke-interface {v0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeAdapterInterface;->getSwipeLayoutResourceId(I)I

    move-result v0

    .line 88
    return v0
.end method


# virtual methods
.method public closeAllExcept(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 5
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 117
    .local v0, "s":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    if-eq v0, p1, :cond_6

    .line 118
    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    goto :goto_6

    .line 120
    .end local v0    # "s":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    :cond_18
    return-void
.end method

.method public closeItem(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->Multiple:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    if-ne v0, v1, :cond_15

    .line 106
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 111
    :cond_f
    :goto_f
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 112
    return-void

    .line 108
    :cond_15
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPosition:I

    if-ne v0, p1, :cond_f

    .line 109
    const/4 v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPosition:I

    goto :goto_f
.end method

.method public getMode()Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    return-object v0
.end method

.method public getOpenItems()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->Multiple:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    if-ne v0, v1, :cond_e

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 132
    :goto_d
    return-object v0

    :cond_e
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPosition:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_d
.end method

.method public getOpenLayouts()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;",
            ">;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public initialize(Landroid/view/View;I)V
    .registers 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 56
    invoke-direct {p0, p2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->getSwipeLayoutId(I)I

    move-result v1

    .line 58
    .local v1, "resId":I
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;

    invoke-direct {v0, p0, p2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;-><init>(Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;I)V

    .line 59
    .local v0, "onLayoutListener":Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 60
    .local v2, "swipeLayout":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    if-nez v2, :cond_19

    .line 61
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "can not find SwipeLayout in target view"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 64
    :cond_19
    new-instance v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;

    invoke-direct {v3, p0, p2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;-><init>(Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;I)V

    .line 65
    .local v3, "swipeMemory":Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;
    invoke-virtual {v2, v3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->addSwipeListener(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;)V

    .line 66
    invoke-virtual {v2, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->addOnLayoutListener(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnLayout;)V

    .line 67
    new-instance v4, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$ValueBox;

    invoke-direct {v4, p0, p2, v3, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$ValueBox;-><init>(Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;ILcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;)V

    invoke-virtual {v2, v1, v4}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->setTag(ILjava/lang/Object;)V

    .line 70
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public isOpen(I)Z
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->Multiple:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    if-ne v0, v1, :cond_11

    .line 144
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 146
    :goto_10
    return v0

    :cond_11
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPosition:I

    if-ne v0, p1, :cond_17

    const/4 v0, 0x1

    goto :goto_10

    :cond_17
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public openItem(I)V
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 94
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;->Multiple:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    if-ne v0, v1, :cond_21

    .line 95
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 96
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_1b
    :goto_1b
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 101
    return-void

    .line 98
    :cond_21
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPosition:I

    goto :goto_1b
.end method

.method public removeShownLayouts(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 3
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 124
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 125
    return-void
.end method

.method public setMode(Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;)V
    .registers 3
    .param p1, "mode"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    .line 50
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPositions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 51
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mShownLayouts:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->mOpenPosition:I

    .line 53
    return-void
.end method

.method public updateConvertView(Landroid/view/View;I)V
    .registers 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 74
    invoke-direct {p0, p2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->getSwipeLayoutId(I)I

    move-result v0

    .line 76
    .local v0, "resId":I
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 77
    .local v1, "swipeLayout":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    if-nez v1, :cond_14

    .line 78
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "can not find SwipeLayout in target view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_14
    invoke-virtual {v1, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$ValueBox;

    .line 82
    .local v2, "valueBox":Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$ValueBox;
    iget-object v3, v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$ValueBox;->swipeMemory:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;

    invoke-virtual {v3, p2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$SwipeMemory;->setPosition(I)V

    .line 83
    iget-object v3, v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$ValueBox;->onLayoutListener:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;

    invoke-virtual {v3, p2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$OnLayoutListener;->setPosition(I)V

    .line 84
    iput p2, v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$ValueBox;->position:I

    .line 85
    return-void
.end method
