.class public Lcom/idelan/app/widget/gridview/paging/PagingGridView;
.super Lcom/idelan/app/widget/gridview/paging/HeaderGridView;
.source "PagingGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idelan/app/widget/gridview/paging/PagingGridView$Pagingable;
    }
.end annotation


# instance fields
.field private hasMoreItems:Z

.field private isLoading:Z

.field private loadinView:Lcom/idelan/app/widget/gridview/paging/LoadingView;

.field private pagingableListener:Lcom/idelan/app/widget/gridview/paging/PagingGridView$Pagingable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->init()V

    .line 40
    return-void
.end method

.method static synthetic access$0(Lcom/idelan/app/widget/gridview/paging/PagingGridView;)Z
    .registers 2

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->isLoading:Z

    return v0
.end method

.method static synthetic access$1(Lcom/idelan/app/widget/gridview/paging/PagingGridView;)Z
    .registers 2

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->hasMoreItems:Z

    return v0
.end method

.method static synthetic access$2(Lcom/idelan/app/widget/gridview/paging/PagingGridView;)Lcom/idelan/app/widget/gridview/paging/PagingGridView$Pagingable;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->pagingableListener:Lcom/idelan/app/widget/gridview/paging/PagingGridView$Pagingable;

    return-object v0
.end method

.method static synthetic access$3(Lcom/idelan/app/widget/gridview/paging/PagingGridView;Z)V
    .registers 2

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->isLoading:Z

    return-void
.end method

.method private init()V
    .registers 3

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->isLoading:Z

    .line 79
    new-instance v0, Lcom/idelan/app/widget/gridview/paging/LoadingView;

    invoke-virtual {p0}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/idelan/app/widget/gridview/paging/LoadingView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->loadinView:Lcom/idelan/app/widget/gridview/paging/LoadingView;

    .line 80
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->loadinView:Lcom/idelan/app/widget/gridview/paging/LoadingView;

    invoke-virtual {p0, v0}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->addFooterView(Landroid/view/View;)V

    .line 81
    new-instance v0, Lcom/idelan/app/widget/gridview/paging/PagingGridView$1;

    invoke-direct {v0, p0}, Lcom/idelan/app/widget/gridview/paging/PagingGridView$1;-><init>(Lcom/idelan/app/widget/gridview/paging/PagingGridView;)V

    invoke-virtual {p0, v0}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 101
    return-void
.end method


# virtual methods
.method public hasMoreItems()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->hasMoreItems:Z

    return v0
.end method

.method public isLoading()Z
    .registers 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->isLoading:Z

    return v0
.end method

.method public onFinishLoading(ZLjava/util/List;)V
    .registers 5
    .param p1, "hasMoreItems"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p2, "newItems":Ljava/util/List;, "Ljava/util/List<+Ljava/lang/Object;>;"
    invoke-virtual {p0, p1}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->setHasMoreItems(Z)V

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->setIsLoading(Z)V

    .line 69
    if-eqz p2, :cond_22

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 70
    invoke-virtual {p0}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;

    invoke-virtual {v1}, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 71
    .local v0, "adapter":Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter;

    if-eqz v1, :cond_22

    .line 72
    check-cast v0, Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter;

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {v0, p2}, Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter;->addMoreItems(Ljava/util/List;)V

    .line 75
    :cond_22
    return-void
.end method

.method public setHasMoreItems(Z)V
    .registers 3
    .param p1, "hasMoreItems"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->hasMoreItems:Z

    .line 56
    iget-boolean v0, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->hasMoreItems:Z

    if-nez v0, :cond_b

    .line 57
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->loadinView:Lcom/idelan/app/widget/gridview/paging/LoadingView;

    invoke-virtual {p0, v0}, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->removeFooterView(Landroid/view/View;)Z

    .line 59
    :cond_b
    return-void
.end method

.method public setIsLoading(Z)V
    .registers 2
    .param p1, "isLoading"    # Z

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->isLoading:Z

    .line 48
    return-void
.end method

.method public setPagingableListener(Lcom/idelan/app/widget/gridview/paging/PagingGridView$Pagingable;)V
    .registers 2
    .param p1, "pagingableListener"    # Lcom/idelan/app/widget/gridview/paging/PagingGridView$Pagingable;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/idelan/app/widget/gridview/paging/PagingGridView;->pagingableListener:Lcom/idelan/app/widget/gridview/paging/PagingGridView$Pagingable;

    .line 52
    return-void
.end method
