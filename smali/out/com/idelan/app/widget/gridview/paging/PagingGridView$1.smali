.class Lcom/idelan/app/widget/gridview/paging/PagingGridView$1;
.super Ljava/lang/Object;
.source "PagingGridView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/idelan/app/widget/gridview/paging/PagingGridView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/app/widget/gridview/paging/PagingGridView;


# direct methods
.method constructor <init>(Lcom/idelan/app/widget/gridview/paging/PagingGridView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView$1;->this$0:Lcom/idelan/app/widget/gridview/paging/PagingGridView;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 8
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 89
    if-lez p4, :cond_2d

    .line 90
    add-int v0, p2, p3

    .line 91
    .local v0, "lastVisibleItem":I
    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView$1;->this$0:Lcom/idelan/app/widget/gridview/paging/PagingGridView;

    invoke-static {v1}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->access$0(Lcom/idelan/app/widget/gridview/paging/PagingGridView;)Z

    move-result v1

    if-nez v1, :cond_2d

    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView$1;->this$0:Lcom/idelan/app/widget/gridview/paging/PagingGridView;

    invoke-static {v1}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->access$1(Lcom/idelan/app/widget/gridview/paging/PagingGridView;)Z

    move-result v1

    if-eqz v1, :cond_2d

    if-ne v0, p4, :cond_2d

    .line 92
    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView$1;->this$0:Lcom/idelan/app/widget/gridview/paging/PagingGridView;

    invoke-static {v1}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->access$2(Lcom/idelan/app/widget/gridview/paging/PagingGridView;)Lcom/idelan/app/widget/gridview/paging/PagingGridView$Pagingable;

    move-result-object v1

    if-eqz v1, :cond_2d

    .line 93
    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView$1;->this$0:Lcom/idelan/app/widget/gridview/paging/PagingGridView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->access$3(Lcom/idelan/app/widget/gridview/paging/PagingGridView;Z)V

    .line 94
    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView$1;->this$0:Lcom/idelan/app/widget/gridview/paging/PagingGridView;

    invoke-static {v1}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->access$2(Lcom/idelan/app/widget/gridview/paging/PagingGridView;)Lcom/idelan/app/widget/gridview/paging/PagingGridView$Pagingable;

    move-result-object v1

    invoke-interface {v1}, Lcom/idelan/app/widget/gridview/paging/PagingGridView$Pagingable;->onLoadMoreItems()V

    .line 99
    .end local v0    # "lastVisibleItem":I
    :cond_2d
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 85
    return-void
.end method
