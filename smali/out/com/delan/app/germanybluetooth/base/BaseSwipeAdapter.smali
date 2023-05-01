.class public abstract Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;
.super Landroid/widget/BaseAdapter;
.source "BaseSwipeAdapter.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerInterface;
.implements Lcom/delan/app/germanybluetooth/widget/swip/SwipeAdapterInterface;


# instance fields
.field protected mItemManger:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;-><init>(Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->mItemManger:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    return-void
.end method


# virtual methods
.method public closeAllExcept(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 3
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->mItemManger:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->closeAllExcept(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V

    .line 74
    return-void
.end method

.method public closeItem(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->mItemManger:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->closeItem(I)V

    .line 69
    return-void
.end method

.method public abstract fillValues(ILandroid/view/View;)V
.end method

.method public abstract generateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public getMode()Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->mItemManger:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->getMode()Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    move-result-object v0

    return-object v0
.end method

.method public getOpenItems()Ljava/util/List;
    .registers 2
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
    .line 78
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->mItemManger:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->getOpenItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOpenLayouts()Ljava/util/List;
    .registers 2
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
    .line 83
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->mItemManger:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->getOpenLayouts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract getSwipeLayoutResourceId(I)I
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 51
    if-nez p2, :cond_10

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p3}, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->generateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->mItemManger:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-virtual {v0, p2, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->initialize(Landroid/view/View;I)V

    .line 57
    :goto_c
    invoke-virtual {p0, p1, p2}, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->fillValues(ILandroid/view/View;)V

    .line 58
    return-object p2

    .line 55
    :cond_10
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->mItemManger:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-virtual {v0, p2, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->updateConvertView(Landroid/view/View;I)V

    goto :goto_c
.end method

.method public isOpen(I)Z
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 93
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->mItemManger:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->isOpen(I)Z

    move-result v0

    return v0
.end method

.method public openItem(I)V
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 63
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->mItemManger:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->openItem(I)V

    .line 64
    return-void
.end method

.method public removeShownLayouts(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 3
    .param p1, "layout"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->mItemManger:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->removeShownLayouts(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V

    .line 89
    return-void
.end method

.method public setMode(Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;)V
    .registers 3
    .param p1, "mode"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/base/BaseSwipeAdapter;->mItemManger:Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;

    invoke-virtual {v0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl;->setMode(Lcom/delan/app/germanybluetooth/widget/swip/SwipeItemMangerImpl$Mode;)V

    .line 104
    return-void
.end method
