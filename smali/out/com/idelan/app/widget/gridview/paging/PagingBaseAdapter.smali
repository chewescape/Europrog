.class public abstract Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "PagingBaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 13
    .local p0, "this":Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter;, "Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter;->items:Ljava/util/List;

    .line 15
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter;, "Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter<TT;>;"
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter;->items:Ljava/util/List;

    .line 19
    return-void
.end method


# virtual methods
.method public addMoreItems(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p0, "this":Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter;, "Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter<TT;>;"
    .local p1, "newItems":Ljava/util/List;, "Ljava/util/List<TT;>;"
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    invoke-virtual {p0}, Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter;->notifyDataSetChanged()V

    .line 24
    return-void
.end method

.method public removeAllItems()V
    .registers 2

    .prologue
    .line 27
    .local p0, "this":Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter;, "Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter<TT;>;"
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    invoke-virtual {p0}, Lcom/idelan/app/widget/gridview/paging/PagingBaseAdapter;->notifyDataSetChanged()V

    .line 29
    return-void
.end method
