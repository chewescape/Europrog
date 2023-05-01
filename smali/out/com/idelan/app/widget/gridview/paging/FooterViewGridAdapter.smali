.class public Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;
.super Ljava/lang/Object;
.source "FooterViewGridAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Landroid/widget/Filterable;


# static fields
.field static final EMPTY_INFO_LIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdapter:Landroid/widget/ListAdapter;

.field mAreAllFixedViewsSelectable:Z

.field mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsFilterable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    sput-object v0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V
    .registers 5
    .param p3, "adapter"    # Landroid/widget/ListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;",
            ">;",
            "Landroid/widget/ListAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "headerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;>;"
    .local p2, "footerViewInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p3, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    .line 58
    instance-of v0, p3, Landroid/widget/Filterable;

    iput-boolean v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mIsFilterable:Z

    .line 62
    if-nez p2, :cond_18

    .line 63
    sget-object v0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->EMPTY_INFO_LIST:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 68
    :goto_f
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 69
    return-void

    .line 65
    :cond_18
    iput-object p2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    goto :goto_f
.end method

.method private areAllListInfosSelectable(Ljava/util/ArrayList;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, "infos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;>;"
    if-eqz p1, :cond_c

    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_e

    .line 87
    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    .line 81
    :cond_e
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;

    .line 82
    .local v0, "info":Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;
    iget-boolean v2, v0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->isSelectable:Z

    if-nez v2, :cond_6

    .line 83
    const/4 v1, 0x0

    goto :goto_d
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 3

    .prologue
    const/4 v0, 0x1

    .line 116
    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_11

    .line 117
    iget-boolean v1, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 119
    :cond_11
    :goto_11
    return v0

    .line 117
    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_10

    .line 109
    invoke-virtual {p0}, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->getFootersCount()I

    move-result v0

    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->getFootersCount()I

    move-result v0

    goto :goto_f
.end method

.method public getFilter()Landroid/widget/Filter;
    .registers 2

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mIsFilterable:Z

    if-eqz v0, :cond_d

    .line 220
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    .line 222
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getFootersCount()I
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 140
    move v1, p1

    .line 141
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 142
    .local v0, "adapterCount":I
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_15

    .line 143
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 144
    if-ge v1, v0, :cond_15

    .line 145
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    .line 150
    :goto_14
    return-object v2

    :cond_15
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;

    iget-object v2, v2, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->data:Ljava/lang/Object;

    goto :goto_14
.end method

.method public getItemId(I)J
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 154
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_14

    .line 155
    move v1, p1

    .line 156
    .local v1, "adjPosition":I
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 157
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_14

    .line 158
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    .line 161
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_13
    return-wide v2

    :cond_14
    const-wide/16 v2, -0x1

    goto :goto_13
.end method

.method public getItemViewType(I)I
    .registers 5
    .param p1, "position"    # I

    .prologue
    .line 188
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_14

    .line 189
    move v1, p1

    .line 190
    .local v1, "adjPosition":I
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 191
    .local v0, "adapterCount":I
    if-ge v1, v0, :cond_14

    .line 192
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 196
    .end local v0    # "adapterCount":I
    .end local v1    # "adjPosition":I
    :goto_13
    return v2

    :cond_14
    const/4 v2, -0x2

    goto :goto_13
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 174
    move v1, p1

    .line 175
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 176
    .local v0, "adapterCount":I
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_15

    .line 177
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 178
    if-ge v1, v0, :cond_15

    .line 179
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 184
    :goto_14
    return-object v2

    :cond_15
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;

    iget-object v2, v2, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    goto :goto_14
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 201
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    .line 203
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_b

    .line 166
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    .line 168
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public isEnabled(I)Z
    .registers 6
    .param p1, "position"    # I

    .prologue
    .line 125
    move v1, p1

    .line 126
    .local v1, "adjPosition":I
    const/4 v0, 0x0

    .line 127
    .local v0, "adapterCount":I
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_15

    .line 128
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 129
    if-ge v1, v0, :cond_15

    .line 130
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    .line 135
    :goto_14
    return v2

    :cond_15
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    sub-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;

    iget-boolean v2, v2, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->isSelectable:Z

    goto :goto_14
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 208
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 210
    :cond_9
    return-void
.end method

.method public removeFooter(Landroid/view/View;)Z
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_b

    .line 104
    const/4 v2, 0x0

    :goto_a
    return v2

    .line 94
    :cond_b
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;

    .line 95
    .local v1, "info":Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;
    iget-object v2, v1, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v2, p1, :cond_26

    .line 96
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->areAllListInfosSelectable(Ljava/util/ArrayList;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAreAllFixedViewsSelectable:Z

    .line 100
    const/4 v2, 0x1

    goto :goto_a

    .line 93
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 213
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_9

    .line 214
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 216
    :cond_9
    return-void
.end method
