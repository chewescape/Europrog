.class Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;
.super Ljava/lang/Object;
.source "PinnedSectionListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 11
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 103
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v4, :cond_d

    .line 104
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v4, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 108
    :cond_d
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    invoke-virtual {v4}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 109
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_17

    if-nez p3, :cond_18

    .line 130
    :cond_17
    :goto_17
    return-void

    .line 112
    :cond_18
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    invoke-static {v0, v4}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v1

    .line 114
    .local v1, "isFirstVisibleItemSection":Z
    if-eqz v1, :cond_41

    .line 115
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 116
    .local v3, "sectionView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    invoke-virtual {v5}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getPaddingTop()I

    move-result v5

    if-ne v4, v5, :cond_3b

    .line 117
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    invoke-virtual {v4}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->destroyPinnedShadow()V

    goto :goto_17

    .line 119
    :cond_3b
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    invoke-virtual {v4, p2, p2, p3}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_17

    .line 123
    .end local v3    # "sectionView":Landroid/view/View;
    :cond_41
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    invoke-virtual {v4, p2}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result v2

    .line 124
    .local v2, "sectionPosition":I
    const/4 v4, -0x1

    if-le v2, v4, :cond_50

    .line 125
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    invoke-virtual {v4, v2, p2, p3}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_17

    .line 127
    :cond_50
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    invoke-virtual {v4}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->destroyPinnedShadow()V

    goto :goto_17
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 95
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_d

    .line 96
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;

    iget-object v0, v0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 98
    :cond_d
    return-void
.end method
