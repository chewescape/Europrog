.class public Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;
.super Landroid/widget/ListView;
.source "PinnedSectionListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;,
        Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSectionListAdapter;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private final mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

.field mRecycleSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

.field private mSectionsDistanceY:I

.field private mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mShadowHeight:I

.field private final mTouchPoint:Landroid/graphics/PointF;

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchTarget:Landroid/view/View;

.field mTranslateY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 150
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    .line 91
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;-><init>(Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 135
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$2;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$2;-><init>(Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 151
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->initView()V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 155
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    .line 91
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$1;-><init>(Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 135
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$2;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$2;-><init>(Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 156
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->initView()V

    .line 157
    return-void
.end method

.method private clearTouchTarget()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 502
    iput-object v1, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    .line 503
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_e

    .line 504
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 505
    iput-object v1, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    .line 507
    :cond_e
    return-void
.end method

.method private initView()V
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 161
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchSlop:I

    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->initShadow(Z)V

    .line 163
    return-void
.end method

.method public static isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z
    .registers 3
    .param p0, "adapter"    # Landroid/widget/ListAdapter;
    .param p1, "viewType"    # I

    .prologue
    .line 526
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_a

    .line 527
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    .end local p0    # "adapter":Landroid/widget/ListAdapter;
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    .line 529
    .restart local p0    # "adapter":Landroid/widget/ListAdapter;
    :cond_a
    check-cast p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSectionListAdapter;

    .end local p0    # "adapter":Landroid/widget/ListAdapter;
    invoke-interface {p0, p1}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSectionListAdapter;->isItemViewTypePinned(I)Z

    move-result v0

    return v0
.end method

.method private isPinnedViewTouched(Landroid/view/View;FF)Z
    .registers 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 489
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 493
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 495
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTranslateY:I

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 496
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 497
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 498
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private performPinnedItemClick()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 510
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    if-nez v3, :cond_7

    .line 522
    :cond_6
    :goto_6
    return v1

    .line 512
    :cond_7
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 513
    .local v0, "listener":Landroid/widget/AdapterView$OnItemClickListener;
    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget v4, v4, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->position:I

    invoke-interface {v3, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 514
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget-object v2, v3, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 515
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->playSoundEffect(I)V

    .line 516
    if-eqz v2, :cond_27

    .line 517
    invoke-virtual {v2, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 519
    :cond_27
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget v3, v1, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->position:I

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget-wide v4, v1, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->id:J

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move v1, v6

    .line 520
    goto :goto_6
.end method


# virtual methods
.method createPinnedShadow(I)V
    .registers 13
    .param p1, "position"    # I

    .prologue
    const/4 v10, 0x0

    .line 196
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mRecycleSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    .line 197
    .local v5, "pinnedShadow":Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mRecycleSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    .line 200
    if-nez v5, :cond_d

    new-instance v5, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    .end local v5    # "pinnedShadow":Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;
    invoke-direct {v5}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;-><init>()V

    .line 202
    .restart local v5    # "pinnedShadow":Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;
    :cond_d
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    iget-object v9, v5, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-interface {v8, p1, v9, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 205
    .local v6, "pinnedView":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 206
    .local v3, "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    if-nez v3, :cond_28

    .line 207
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .end local v3    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    check-cast v3, Landroid/widget/AbsListView$LayoutParams;

    .line 209
    .restart local v3    # "layoutParams":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    :cond_28
    iget v8, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 213
    .local v0, "heightMode":I
    iget v8, v3, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 215
    .local v1, "heightSize":I
    if-nez v0, :cond_38

    const/high16 v0, 0x40000000    # 2.0f

    .line 217
    :cond_38
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getHeight()I

    move-result v8

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getListPaddingTop()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getListPaddingBottom()I

    move-result v9

    sub-int v4, v8, v9

    .line 218
    .local v4, "maxHeight":I
    if-le v1, v4, :cond_4a

    move v1, v4

    .line 221
    :cond_4a
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getListPaddingLeft()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getListPaddingRight()I

    move-result v9

    sub-int/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    invoke-static {v8, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 222
    .local v7, "ws":I
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 223
    .local v2, "hs":I
    invoke-virtual {v6, v7, v2}, Landroid/view/View;->measure(II)V

    .line 224
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {v6, v10, v10, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 225
    iput v10, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTranslateY:I

    .line 228
    iput-object v6, v5, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 229
    iput p1, v5, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->position:I

    .line 230
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->id:J

    .line 233
    iput-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    .line 234
    return-void
.end method

.method destroyPinnedShadow()V
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_b

    .line 240
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mRecycleSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    .line 243
    :cond_b
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 397
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 399
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    if-eqz v4, :cond_76

    .line 402
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getListPaddingLeft()I

    move-result v1

    .line 403
    .local v1, "pLeft":I
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getListPaddingTop()I

    move-result v2

    .line 404
    .local v2, "pTop":I
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget-object v3, v4, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 407
    .local v3, "view":Landroid/view/View;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 409
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v4, :cond_77

    const/4 v4, 0x0

    .line 410
    :goto_1f
    add-int v0, v5, v4

    .line 411
    .local v0, "clipHeight":I
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    add-int v5, v2, v0

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 413
    int-to-float v4, v1

    iget v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v5, v2

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 414
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getDrawingTime()J

    move-result-wide v6

    invoke-virtual {p0, p1, v4, v6, v7}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 416
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_73

    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mSectionsDistanceY:I

    if-lez v4, :cond_73

    .line 417
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget-object v5, v5, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget-object v6, v6, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 418
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    iget-object v7, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget-object v7, v7, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 419
    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v7

    iget-object v8, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget-object v8, v8, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 420
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr v8, v9

    .line 417
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 421
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 424
    :cond_73
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 426
    .end local v0    # "clipHeight":I
    .end local v1    # "pLeft":I
    .end local v2    # "pTop":I
    .end local v3    # "view":Landroid/view/View;
    :cond_76
    return-void

    .line 409
    .restart local v1    # "pLeft":I
    .restart local v2    # "pTop":I
    .restart local v3    # "view":Landroid/view/View;
    :cond_77
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mShadowHeight:I

    iget v6, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mSectionsDistanceY:I

    .line 410
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_1f
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 433
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 434
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 435
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 437
    .local v0, "action":I
    if-nez v0, :cond_36

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-nez v5, :cond_36

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    if-eqz v5, :cond_36

    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget-object v5, v5, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 440
    invoke-direct {p0, v5, v2, v3}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_36

    .line 443
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget-object v5, v5, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    iput-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    .line 444
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v2, v5, Landroid/graphics/PointF;->x:F

    .line 445
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v3, v5, Landroid/graphics/PointF;->y:F

    .line 448
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    .line 451
    :cond_36
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-eqz v5, :cond_88

    .line 452
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-direct {p0, v5, v2, v3}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 453
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 456
    :cond_47
    if-ne v0, v4, :cond_53

    .line 457
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 458
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->performPinnedItemClick()Z

    .line 459
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->clearTouchTarget()V

    .line 485
    :cond_52
    :goto_52
    return v4

    .line 461
    :cond_53
    if-ne v0, v7, :cond_59

    .line 462
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_52

    .line 464
    :cond_59
    const/4 v5, 0x2

    if-ne v0, v5, :cond_52

    .line 465
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    sub-float v5, v3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchSlop:I

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_52

    .line 468
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 469
    .local v1, "event":Landroid/view/MotionEvent;
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 470
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 471
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 474
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v5}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 475
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 476
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_52

    .line 485
    .end local v1    # "event":Landroid/view/MotionEvent;
    :cond_88
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_52
.end method

.method ensureShadowForPosition(III)V
    .registers 11
    .param p1, "sectionPosition"    # I
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I

    .prologue
    const/4 v6, 0x0

    .line 247
    const/4 v4, 0x2

    if-ge p3, v4, :cond_8

    .line 248
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->destroyPinnedShadow()V

    .line 284
    :cond_7
    :goto_7
    return-void

    .line 252
    :cond_8
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget v4, v4, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->position:I

    if-eq v4, p1, :cond_15

    .line 254
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->destroyPinnedShadow()V

    .line 257
    :cond_15
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    if-nez v4, :cond_1c

    .line 258
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->createPinnedShadow(I)V

    .line 262
    :cond_1c
    add-int/lit8 v1, p1, 0x1

    .line 263
    .local v1, "nextPosition":I
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 264
    sub-int v4, v1, p2

    sub-int v4, p3, v4

    invoke-virtual {p0, v1, v4}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->findFirstVisibleSectionPosition(II)I

    move-result v2

    .line 266
    .local v2, "nextSectionPosition":I
    const/4 v4, -0x1

    if-le v2, v4, :cond_56

    .line 267
    sub-int v4, v2, p2

    invoke-virtual {p0, v4}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 268
    .local v3, "nextSectionView":Landroid/view/View;
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget-object v4, v4, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getPaddingTop()I

    move-result v5

    add-int v0, v4, v5

    .line 269
    .local v0, "bottom":I
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    sub-int/2addr v4, v0

    iput v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mSectionsDistanceY:I

    .line 270
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mSectionsDistanceY:I

    if-gez v4, :cond_53

    .line 272
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mSectionsDistanceY:I

    iput v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTranslateY:I

    goto :goto_7

    .line 275
    :cond_53
    iput v6, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTranslateY:I

    goto :goto_7

    .line 279
    .end local v0    # "bottom":I
    .end local v3    # "nextSectionView":Landroid/view/View;
    :cond_56
    iput v6, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mTranslateY:I

    .line 280
    const v4, 0x7fffffff

    iput v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mSectionsDistanceY:I

    goto :goto_7
.end method

.method findCurrentSectionPosition(I)I
    .registers 11
    .param p1, "fromPosition"    # I

    .prologue
    const/4 v7, -0x1

    .line 305
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 307
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    if-lt p1, v8, :cond_d

    move v2, v7

    .line 325
    :cond_c
    :goto_c
    return v2

    .line 309
    :cond_d
    instance-of v8, v0, Landroid/widget/SectionIndexer;

    if-eqz v8, :cond_26

    move-object v1, v0

    .line 311
    check-cast v1, Landroid/widget/SectionIndexer;

    .line 312
    .local v1, "indexer":Landroid/widget/SectionIndexer;
    invoke-interface {v1, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v4

    .line 313
    .local v4, "sectionPosition":I
    invoke-interface {v1, v4}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v2

    .line 314
    .local v2, "itemPosition":I
    invoke-interface {v0, v2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v5

    .line 315
    .local v5, "typeView":I
    invoke-static {v0, v5}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v8

    if-nez v8, :cond_c

    .line 321
    .end local v1    # "indexer":Landroid/widget/SectionIndexer;
    .end local v2    # "itemPosition":I
    .end local v4    # "sectionPosition":I
    .end local v5    # "typeView":I
    :cond_26
    move v3, p1

    .local v3, "position":I
    :goto_27
    if-ltz v3, :cond_38

    .line 322
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v6

    .line 323
    .local v6, "viewType":I
    invoke-static {v0, v6}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v8

    if-eqz v8, :cond_35

    move v2, v3

    goto :goto_c

    .line 321
    :cond_35
    add-int/lit8 v3, v3, -0x1

    goto :goto_27

    .end local v6    # "viewType":I
    :cond_38
    move v2, v7

    .line 325
    goto :goto_c
.end method

.method findFirstVisibleSectionPosition(II)I
    .registers 10
    .param p1, "firstVisibleItem"    # I
    .param p2, "visibleItemCount"    # I

    .prologue
    const/4 v5, -0x1

    .line 287
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 289
    .local v0, "adapter":Landroid/widget/ListAdapter;
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 290
    .local v1, "adapterDataCount":I
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getLastVisiblePosition()I

    move-result v6

    if-lt v6, v1, :cond_11

    move v3, v5

    .line 301
    :cond_10
    :goto_10
    return v3

    .line 292
    :cond_11
    add-int v6, p1, p2

    if-lt v6, v1, :cond_17

    .line 293
    sub-int p2, v1, p1

    .line 296
    :cond_17
    const/4 v2, 0x0

    .local v2, "childIndex":I
    :goto_18
    if-ge v2, p2, :cond_29

    .line 297
    add-int v3, p1, v2

    .line 298
    .local v3, "position":I
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    .line 299
    .local v4, "viewType":I
    invoke-static {v0, v4}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v6

    if-nez v6, :cond_10

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .end local v3    # "position":I
    .end local v4    # "viewType":I
    :cond_29
    move v3, v5

    .line 301
    goto :goto_10
.end method

.method public initShadow(Z)V
    .registers 7
    .param p1, "visible"    # Z

    .prologue
    const/4 v4, 0x0

    .line 178
    if-eqz p1, :cond_3e

    .line 179
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_3d

    .line 180
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x3

    new-array v2, v2, [I

    const-string v3, "#ffa0a0a0"

    .line 181
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "#50a0a0a0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "#00a0a0a0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 182
    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mShadowHeight:I

    .line 190
    :cond_3d
    :goto_3d
    return-void

    .line 185
    :cond_3e
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3d

    .line 186
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 187
    iput v4, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mShadowHeight:I

    goto :goto_3d
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 385
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 386
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    if-eqz v2, :cond_21

    .line 387
    sub-int v2, p4, p2

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getPaddingRight()I

    move-result v3

    sub-int v0, v2, v3

    .line 388
    .local v0, "parentWidth":I
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget-object v2, v2, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 389
    .local v1, "shadowWidth":I
    if-eq v0, v1, :cond_21

    .line 390
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->recreatePinnedShadow()V

    .line 393
    .end local v0    # "parentWidth":I
    .end local v1    # "shadowWidth":I
    :cond_21
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 351
    invoke-super {p0, p1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 352
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$3;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$3;-><init>(Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;)V

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->post(Ljava/lang/Runnable;)Z

    .line 358
    return-void
.end method

.method recreatePinnedShadow()V
    .registers 5

    .prologue
    .line 329
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->destroyPinnedShadow()V

    .line 330
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 331
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_1a

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1a

    .line 332
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getFirstVisiblePosition()I

    move-result v1

    .line 333
    .local v1, "firstVisiblePosition":I
    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result v2

    .line 334
    .local v2, "sectionPosition":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    .line 338
    .end local v1    # "firstVisiblePosition":I
    .end local v2    # "sectionPosition":I
    :cond_1a
    :goto_1a
    return-void

    .line 336
    .restart local v1    # "firstVisiblePosition":I
    .restart local v2    # "sectionPosition":I
    :cond_1b
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getLastVisiblePosition()I

    move-result v3

    sub-int/2addr v3, v1

    .line 335
    invoke-virtual {p0, v2, v1, v3}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_1a
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .registers 2

    .prologue
    .line 47
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .registers 4
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 373
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 374
    .local v0, "oldAdapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 375
    :cond_b
    if-eqz p1, :cond_12

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 378
    :cond_12
    if-eq v0, p1, :cond_17

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->destroyPinnedShadow()V

    .line 380
    :cond_17
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 381
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 342
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-ne p1, v0, :cond_8

    .line 343
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 347
    :goto_7
    return-void

    .line 345
    :cond_8
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_7
.end method

.method public setShadowVisible(Z)V
    .registers 8
    .param p1, "visible"    # Z

    .prologue
    .line 168
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->initShadow(Z)V

    .line 169
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    if-eqz v1, :cond_21

    .line 170
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mPinnedSection:Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;

    iget-object v0, v1, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    .line 171
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/delan/app/germanybluetooth/widget/PinnedSectionListView;->invalidate(IIII)V

    .line 173
    .end local v0    # "v":Landroid/view/View;
    :cond_21
    return-void
.end method
