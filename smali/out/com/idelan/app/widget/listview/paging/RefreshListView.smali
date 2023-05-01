.class public Lcom/idelan/app/widget/listview/paging/RefreshListView;
.super Landroid/widget/ListView;
.source "RefreshListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SimpleDateFormat",
        "ClickableViewAccessibility"
    }
.end annotation


# instance fields
.field private final DOWN_PULL_REFRESH:I

.field private final REFRESHING:I

.field private final RELEASE_REFRESH:I

.field private banSliding:Z

.field private context:Landroid/content/Context;

.field private currentState:I

.field private downAnimation:Landroid/view/animation/Animation;

.field private downY:I

.field private firstVisibleItemPosition:I

.field private footerView:Landroid/view/View;

.field private footerViewHeight:I

.field private headerView:Landroid/view/View;

.field private headerViewHeight:I

.field private inflater:Landroid/view/LayoutInflater;

.field private isLoadingMore:Z

.field private isScrollToBottom:Z

.field private ivArrow:Landroid/widget/ImageView;

.field private mOnRefershListener:Lcom/idelan/app/widget/listview/paging/OnRefreshListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private tvLastUpdateTime:Landroid/widget/TextView;

.field private tvState:Landroid/widget/TextView;

.field private upAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 38
    iput v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->DOWN_PULL_REFRESH:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->RELEASE_REFRESH:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->REFRESHING:I

    .line 41
    iput v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->currentState:I

    .line 55
    iput-boolean v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->isLoadingMore:Z

    .line 56
    iput-boolean v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->banSliding:Z

    .line 61
    invoke-direct {p0, p1}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->DOWN_PULL_REFRESH:I

    .line 39
    const/4 v0, 0x1

    iput v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->RELEASE_REFRESH:I

    .line 40
    const/4 v0, 0x2

    iput v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->REFRESHING:I

    .line 41
    iput v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->currentState:I

    .line 55
    iput-boolean v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->isLoadingMore:Z

    .line 56
    iput-boolean v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->banSliding:Z

    .line 66
    invoke-direct {p0, p1}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->init(Landroid/content/Context;)V

    .line 67
    return-void
.end method

.method private getLastUpdateTime()Ljava/lang/String;
    .registers 5

    .prologue
    .line 123
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 124
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private init(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->context:Landroid/content/Context;

    .line 72
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 71
    iput-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->inflater:Landroid/view/LayoutInflater;

    .line 73
    invoke-direct {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->initHeaderView()V

    .line 74
    invoke-direct {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->initFooterView()V

    .line 75
    invoke-virtual {p0, p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 76
    return-void
.end method

.method private initAnimation()V
    .registers 15

    .prologue
    const-wide/16 v12, 0x1f4

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    .line 131
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    move v5, v3

    move v6, v4

    .line 133
    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 131
    iput-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->upAnimation:Landroid/view/animation/Animation;

    .line 134
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->upAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 135
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->upAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 137
    new-instance v5, Landroid/view/animation/RotateAnimation;

    const/high16 v7, -0x3c4c0000    # -360.0f

    move v6, v2

    move v8, v3

    move v9, v4

    move v10, v3

    move v11, v4

    .line 139
    invoke-direct/range {v5 .. v11}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 137
    iput-object v5, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->downAnimation:Landroid/view/animation/Animation;

    .line 140
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->downAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 141
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->downAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 142
    return-void
.end method

.method private initFooterView()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 82
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->inflater:Landroid/view/LayoutInflater;

    .line 83
    iget-object v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->context:Landroid/content/Context;

    const-string v2, "listview_footer"

    invoke-static {v1, v2}, Lcom/idelan/app/Util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 82
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->footerView:Landroid/view/View;

    .line 84
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->footerView:Landroid/view/View;

    invoke-virtual {v0, v3, v3}, Landroid/view/View;->measure(II)V

    .line 85
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->footerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->footerViewHeight:I

    .line 86
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->footerView:Landroid/view/View;

    iget v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->footerViewHeight:I

    neg-int v1, v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 87
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->footerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->addFooterView(Landroid/view/View;)V

    .line 88
    return-void
.end method

.method private initHeaderView()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 94
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->inflater:Landroid/view/LayoutInflater;

    .line 95
    iget-object v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->context:Landroid/content/Context;

    const-string v2, "listview_header"

    invoke-static {v1, v2}, Lcom/idelan/app/Util/ResourceUtil;->getLayoutId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    .line 94
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerView:Landroid/view/View;

    .line 96
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerView:Landroid/view/View;

    .line 97
    iget-object v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->context:Landroid/content/Context;

    const-string v2, "iv_listview_header_arrow"

    .line 96
    invoke-static {v1, v2}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->ivArrow:Landroid/widget/ImageView;

    .line 98
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerView:Landroid/view/View;

    .line 99
    iget-object v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->context:Landroid/content/Context;

    const-string v2, "pb_listview_header"

    invoke-static {v1, v2}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 98
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 100
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerView:Landroid/view/View;

    .line 101
    iget-object v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->context:Landroid/content/Context;

    const-string v2, "tv_listview_header_state"

    .line 100
    invoke-static {v1, v2}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->tvState:Landroid/widget/TextView;

    .line 102
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerView:Landroid/view/View;

    .line 103
    iget-object v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->context:Landroid/content/Context;

    const-string v2, "tv_listview_header_last_update_time"

    invoke-static {v1, v2}, Lcom/idelan/app/Util/ResourceUtil;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->tvLastUpdateTime:Landroid/widget/TextView;

    .line 106
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->tvLastUpdateTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 107
    iget-object v3, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->context:Landroid/content/Context;

    const-string v4, "last_rush_time"

    invoke-static {v3, v4}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 106
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerView:Landroid/view/View;

    invoke-virtual {v0, v5, v5}, Landroid/view/View;->measure(II)V

    .line 111
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerViewHeight:I

    .line 112
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerView:Landroid/view/View;

    iget v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerViewHeight:I

    neg-int v1, v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 113
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->addHeaderView(Landroid/view/View;)V

    .line 114
    invoke-direct {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->initAnimation()V

    .line 115
    return-void
.end method

.method private refreshHeaderView()V
    .registers 5

    .prologue
    .line 207
    iget v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->currentState:I

    packed-switch v0, :pswitch_data_68

    .line 228
    :goto_5
    return-void

    .line 209
    :pswitch_6
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->tvState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 210
    iget-object v2, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->context:Landroid/content/Context;

    const-string v3, "next_rush"

    invoke-static {v2, v3}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 209
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->ivArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->downAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 214
    :pswitch_23
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->tvState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 215
    iget-object v2, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->context:Landroid/content/Context;

    const-string v3, "loosen_rush"

    invoke-static {v2, v3}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 214
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->ivArrow:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->upAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 219
    :pswitch_40
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 220
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->ivArrow:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->tvState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 223
    iget-object v2, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->context:Landroid/content/Context;

    const-string v3, "rush_ing"

    invoke-static {v2, v3}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 222
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 207
    :pswitch_data_68
    .packed-switch 0x0
        :pswitch_6
        :pswitch_23
        :pswitch_40
    .end packed-switch
.end method


# virtual methods
.method public hideFooterView()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 300
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->footerView:Landroid/view/View;

    iget v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->footerViewHeight:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 301
    iput-boolean v2, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->isLoadingMore:Z

    .line 302
    return-void
.end method

.method public hideHeaderView()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 288
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerView:Landroid/view/View;

    iget v1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerViewHeight:I

    neg-int v1, v1

    invoke-virtual {v0, v5, v1, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 289
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->ivArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->tvState:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 292
    iget-object v2, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->context:Landroid/content/Context;

    const-string v3, "next_rush"

    invoke-static {v2, v3}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    .line 291
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->tvLastUpdateTime:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 294
    iget-object v3, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->context:Landroid/content/Context;

    const-string v4, "last_rush_time"

    invoke-static {v3, v4}, Lcom/idelan/app/Util/ResourceUtil;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 293
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-direct {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->getLastUpdateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iput v5, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->currentState:I

    .line 297
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 266
    iput p2, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->firstVisibleItemPosition:I

    .line 268
    invoke-virtual {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v1, p4, -0x1

    if-ne v0, v1, :cond_e

    .line 269
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->isScrollToBottom:Z

    .line 273
    :goto_d
    return-void

    .line 271
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->isScrollToBottom:Z

    goto :goto_d
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 5
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    const/4 v1, 0x0

    .line 236
    if-eqz p2, :cond_6

    .line 237
    const/4 v0, 0x2

    if-ne p2, v0, :cond_26

    .line 239
    :cond_6
    iget-boolean v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->isScrollToBottom:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->isLoadingMore:Z

    if-nez v0, :cond_26

    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->isLoadingMore:Z

    .line 243
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->footerView:Landroid/view/View;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 244
    invoke-virtual {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->getCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->setSelection(I)V

    .line 246
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->mOnRefershListener:Lcom/idelan/app/widget/listview/paging/OnRefreshListener;

    if-eqz v0, :cond_26

    .line 247
    iget-object v0, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->mOnRefershListener:Lcom/idelan/app/widget/listview/paging/OnRefreshListener;

    invoke-interface {v0}, Lcom/idelan/app/widget/listview/paging/OnRefreshListener;->onLoadingMore()V

    .line 251
    :cond_26
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 150
    iget-boolean v4, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->banSliding:Z

    if-eqz v4, :cond_7

    .line 200
    :goto_6
    return v3

    .line 153
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_78

    .line 200
    :cond_e
    :goto_e
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto :goto_6

    .line 155
    :pswitch_13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->downY:I

    goto :goto_e

    .line 158
    :pswitch_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 160
    .local v1, "moveY":I
    iget v4, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->downY:I

    sub-int v4, v1, v4

    div-int/lit8 v0, v4, 0x2

    .line 162
    .local v0, "diff":I
    iget v4, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerViewHeight:I

    neg-int v4, v4

    add-int v2, v4, v0

    .line 164
    .local v2, "paddingTop":I
    iget v4, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->firstVisibleItemPosition:I

    if-nez v4, :cond_e

    iget v4, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerViewHeight:I

    neg-int v4, v4

    if-ge v4, v2, :cond_e

    .line 165
    if-lez v2, :cond_45

    iget v4, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->currentState:I

    if-nez v4, :cond_45

    .line 167
    iput v3, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->currentState:I

    .line 168
    invoke-direct {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->refreshHeaderView()V

    .line 175
    :cond_3f
    :goto_3f
    iget-object v4, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerView:Landroid/view/View;

    invoke-virtual {v4, v5, v2, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_6

    .line 169
    :cond_45
    if-gez v2, :cond_3f

    iget v4, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->currentState:I

    if-ne v4, v3, :cond_3f

    .line 171
    iput v5, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->currentState:I

    .line 172
    invoke-direct {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->refreshHeaderView()V

    goto :goto_3f

    .line 181
    .end local v0    # "diff":I
    .end local v1    # "moveY":I
    .end local v2    # "paddingTop":I
    :pswitch_51
    iget v4, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->currentState:I

    if-ne v4, v3, :cond_6a

    .line 184
    iget-object v3, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerView:Landroid/view/View;

    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 186
    const/4 v3, 0x2

    iput v3, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->currentState:I

    .line 187
    invoke-direct {p0}, Lcom/idelan/app/widget/listview/paging/RefreshListView;->refreshHeaderView()V

    .line 189
    iget-object v3, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->mOnRefershListener:Lcom/idelan/app/widget/listview/paging/OnRefreshListener;

    if-eqz v3, :cond_e

    .line 190
    iget-object v3, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->mOnRefershListener:Lcom/idelan/app/widget/listview/paging/OnRefreshListener;

    invoke-interface {v3}, Lcom/idelan/app/widget/listview/paging/OnRefreshListener;->onDownPullRefresh()V

    goto :goto_e

    .line 192
    :cond_6a
    iget v3, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->currentState:I

    if-nez v3, :cond_e

    .line 194
    iget-object v3, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerView:Landroid/view/View;

    iget v4, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->headerViewHeight:I

    neg-int v4, v4

    invoke-virtual {v3, v5, v4, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_e

    .line 153
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_13
        :pswitch_51
        :pswitch_1b
    .end packed-switch
.end method

.method public setBanSliding(Z)V
    .registers 2
    .param p1, "banSliding"    # Z

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->banSliding:Z

    .line 146
    return-void
.end method

.method public setOnRefreshListener(Lcom/idelan/app/widget/listview/paging/OnRefreshListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/idelan/app/widget/listview/paging/OnRefreshListener;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/idelan/app/widget/listview/paging/RefreshListView;->mOnRefershListener:Lcom/idelan/app/widget/listview/paging/OnRefreshListener;

    .line 282
    return-void
.end method
