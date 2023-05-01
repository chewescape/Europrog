.class public Lcom/idelan/app/widget/gridview/paging/HeaderGridView;
.super Landroid/widget/GridView;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;,
        Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FullWidthFixedViewLayout;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mFooterViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderViewInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 36
    invoke-direct {p0, p1}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 31
    invoke-direct {p0, p1}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->init(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    .line 26
    invoke-direct {p0, p1}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private notifiyChanged()V
    .registers 1

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->requestLayout()V

    .line 53
    invoke-virtual {p0}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->invalidate()V

    .line 54
    return-void
.end method

.method private removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p2, "where":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 199
    .local v2, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    if-lt v0, v2, :cond_8

    .line 206
    :goto_7
    return-void

    .line 200
    :cond_8
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;

    .line 201
    .local v1, "info":Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;
    iget-object v3, v1, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->view:Landroid/view/View;

    if-ne v3, p1, :cond_16

    .line 202
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_7

    .line 199
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 171
    return-void
.end method

.method public addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 135
    new-instance v1, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;

    invoke-direct {v1, p0}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;-><init>(Lcom/idelan/app/widget/gridview/paging/HeaderGridView;)V

    .line 136
    .local v1, "info":Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;
    new-instance v0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FullWidthFixedViewLayout;-><init>(Lcom/idelan/app/widget/gridview/paging/HeaderGridView;Landroid/content/Context;)V

    .line 137
    .local v0, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 138
    iput-object p1, v1, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 139
    iput-object v0, v1, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 140
    iput-object p2, v1, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 141
    iput-boolean p3, v1, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->isSelectable:Z

    .line 142
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_38

    .line 146
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;

    if-nez v2, :cond_35

    .line 147
    new-instance v2, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;

    iget-object v3, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v2, v3, v4, v5}, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v2, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 151
    :cond_35
    invoke-direct {p0}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->notifiyChanged()V

    .line 153
    :cond_38
    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 112
    return-void
.end method

.method public addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "data"    # Ljava/lang/Object;
    .param p3, "isSelectable"    # Z

    .prologue
    .line 74
    new-instance v1, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;

    invoke-direct {v1, p0}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;-><init>(Lcom/idelan/app/widget/gridview/paging/HeaderGridView;)V

    .line 75
    .local v1, "info":Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;
    new-instance v0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FullWidthFixedViewLayout;

    invoke-virtual {p0}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FullWidthFixedViewLayout;-><init>(Lcom/idelan/app/widget/gridview/paging/HeaderGridView;Landroid/content/Context;)V

    .line 76
    .local v0, "fl":Landroid/widget/FrameLayout;
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 77
    iput-object p1, v1, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->view:Landroid/view/View;

    .line 78
    iput-object v0, v1, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->viewContainer:Landroid/view/ViewGroup;

    .line 79
    iput-object p2, v1, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->data:Ljava/lang/Object;

    .line 80
    iput-boolean p3, v1, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FixedViewInfo;->isSelectable:Z

    .line 81
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v2, :cond_38

    .line 85
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    instance-of v2, v2, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;

    if-nez v2, :cond_35

    .line 86
    new-instance v2, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;

    iget-object v3, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-direct {v2, v3, v4, v5}, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v2, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 90
    :cond_35
    invoke-direct {p0}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->notifiyChanged()V

    .line 92
    :cond_38
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getFooterViewsCount()I
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getHeaderViewsCount()I
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_21

    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, "result":Z
    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v1, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;

    invoke-virtual {v1, p1}, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;->removeFooter(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 188
    invoke-direct {p0}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->notifiyChanged()V

    .line 189
    const/4 v0, 0x1

    .line 191
    :cond_1b
    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->removeFixedViewInfo(Landroid/view/View;Ljava/util/ArrayList;)V

    .line 194
    .end local v0    # "result":Z
    :goto_20
    return v0

    :cond_21
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 5
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 213
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_12

    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_29

    .line 214
    :cond_12
    new-instance v0, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;

    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mHeaderViewInfos:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mFooterViewInfos:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, p1}, Lcom/idelan/app/widget/gridview/paging/FooterViewGridAdapter;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    .line 219
    :goto_1d
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 220
    iget-object v0, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-super {p0, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 222
    invoke-virtual {p0}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->requestLayout()V

    .line 223
    return-void

    .line 216
    :cond_29
    iput-object p1, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->mAdapter:Landroid/widget/ListAdapter;

    goto :goto_1d
.end method
