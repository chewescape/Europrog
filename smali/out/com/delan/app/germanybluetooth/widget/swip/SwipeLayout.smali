.class public Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeLayout.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WrongCall"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DoubleClickListener;,
        Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;,
        Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;,
        Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnLayout;,
        Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;,
        Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDenier;,
        Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;,
        Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;,
        Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;
    }
.end annotation


# instance fields
.field private gestureDetector:Landroid/view/GestureDetector;

.field private mDoubleClickListener:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DoubleClickListener;

.field private mDragDistance:I

.field private mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

.field private mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

.field private mDragHelperCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

.field private mEventCounter:I

.field private mOnLayoutListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mRevealListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShowEntirely:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShowMode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

.field private mSwipeDeniers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDenier;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeEnabled:Z

.field private mSwipeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchConsumedByChild:Z

.field private sX:F

.field private sY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x1

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v5, 0x0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v5, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    .line 40
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    .line 41
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeDeniers:Ljava/util/List;

    .line 42
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    .line 43
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    .line 47
    iput-boolean v6, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeEnabled:Z

    .line 184
    new-instance v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;

    invoke-direct {v2, p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;-><init>(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragHelperCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 483
    iput v5, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mEventCounter:I

    .line 716
    iput-boolean v5, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mTouchConsumedByChild:Z

    .line 806
    iput v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->sX:F

    iput v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->sY:F

    .line 992
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;

    invoke-direct {v4, p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;-><init>(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->gestureDetector:Landroid/view/GestureDetector;

    .line 67
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragHelperCallback:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p0, v2}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 69
    sget-object v2, Lcom/delan/app/germanybluetooth/R$styleable;->SwipeLayout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 71
    .local v0, "a":Landroid/content/res/TypedArray;
    sget-object v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    .line 72
    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->ordinal()I

    move-result v2

    .line 71
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 73
    .local v1, "ordinal":I
    invoke-static {}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->values()[Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    .line 74
    sget-object v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    .line 75
    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->ordinal()I

    move-result v2

    .line 74
    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 76
    invoke-static {}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->values()[Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowMode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    return-object v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 32
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    return v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowMode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    return-object v0
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;FF)V
    .registers 3
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->processSurfaceRelease(FF)V

    return-void
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;FF)V
    .registers 3
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->processBottomPullOutRelease(FF)V

    return-void
.end method

.method static synthetic access$600(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;FF)V
    .registers 3
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->processBottomLayDownMode(FF)V

    return-void
.end method

.method static synthetic access$700(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;)Landroid/graphics/Rect;
    .registers 3
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    .param p1, "x1"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->computeBottomLayDown(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DoubleClickListener;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDoubleClickListener:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DoubleClickListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;Landroid/view/MotionEvent;)V
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->performAdapterViewItemClick(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private childNeedHandleTouchEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 9
    .param p1, "v"    # Landroid/view/ViewGroup;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x0

    .line 766
    if-nez p1, :cond_5

    move-object p1, v4

    .line 784
    .end local p1    # "v":Landroid/view/ViewGroup;
    :cond_4
    :goto_4
    return-object p1

    .line 768
    .restart local p1    # "v":Landroid/view/ViewGroup;
    :cond_5
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 771
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 772
    .local v1, "childCount":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_11
    if-ltz v3, :cond_37

    .line 773
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 774
    .local v0, "child":Landroid/view/View;
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_25

    .line 775
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "child":Landroid/view/View;
    invoke-direct {p0, v0, p2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->childNeedHandleTouchEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v2

    .line 777
    .local v2, "grandChild":Landroid/view/View;
    if-eqz v2, :cond_34

    move-object p1, v2

    .line 778
    goto :goto_4

    .line 780
    .end local v2    # "grandChild":Landroid/view/View;
    .restart local v0    # "child":Landroid/view/View;
    :cond_25
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->childNeedHandleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 781
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_4

    .line 772
    .end local v0    # "child":Landroid/view/View;
    :cond_34
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    :cond_37
    move-object p1, v4

    .line 784
    goto :goto_4
.end method

.method private childNeedHandleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 795
    if-nez p1, :cond_5

    .line 802
    :goto_4
    return v4

    .line 798
    :cond_5
    const/4 v5, 0x2

    new-array v1, v5, [I

    .line 799
    .local v1, "loc":[I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 800
    aget v0, v1, v4

    .local v0, "left":I
    aget v2, v1, v3

    .line 802
    .local v2, "top":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    int-to-float v6, v0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_45

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v0

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_45

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    int-to-float v6, v2

    cmpl-float v5, v5, v6

    if-lez v5, :cond_45

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v2

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_45

    invoke-virtual {p1, p2}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_45

    :goto_43
    move v4, v3

    goto :goto_4

    :cond_45
    move v3, v4

    goto :goto_43
.end method

.method private computeBottomLayDown(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;)Landroid/graphics/Rect;
    .registers 8
    .param p1, "dragEdge"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    .prologue
    .line 1379
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v1

    .local v1, "bl":I
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v3

    .line 1381
    .local v3, "bt":I
    sget-object v4, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne p1, v4, :cond_2c

    .line 1382
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getMeasuredWidth()I

    move-result v4

    iget v5, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    sub-int v1, v4, v5

    .line 1386
    :cond_14
    :goto_14
    sget-object v4, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-eq p1, v4, :cond_1c

    sget-object v4, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne p1, v4, :cond_39

    .line 1387
    :cond_1c
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    add-int v2, v1, v4

    .line 1388
    .local v2, "br":I
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 1393
    .local v0, "bb":I
    :goto_26
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 1383
    .end local v0    # "bb":I
    .end local v2    # "br":I
    :cond_2c
    sget-object v4, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Bottom:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne p1, v4, :cond_14

    .line 1384
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    sub-int v3, v4, v5

    goto :goto_14

    .line 1390
    :cond_39
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 1391
    .restart local v2    # "br":I
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    add-int v0, v3, v4

    .restart local v0    # "bb":I
    goto :goto_26
.end method

.method private computeBottomLayoutAreaViaSurface(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 9
    .param p1, "mode"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;
    .param p2, "surfaceArea"    # Landroid/graphics/Rect;

    .prologue
    .line 1345
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .local v1, "bl":I
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .local v3, "bt":I
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .local v2, "br":I
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1346
    .local v0, "bb":I
    sget-object v4, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne p1, v4, :cond_5c

    .line 1347
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v4, v5, :cond_36

    .line 1348
    iget v4, p2, Landroid/graphics/Rect;->left:I

    iget v5, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    sub-int v1, v4, v5

    .line 1356
    :goto_18
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-eq v4, v5, :cond_24

    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v4, v5, :cond_4f

    .line 1357
    :cond_24
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1358
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v4

    add-int v2, v1, v4

    .line 1374
    :cond_30
    :goto_30
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v4

    .line 1349
    :cond_36
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v4, v5, :cond_3f

    .line 1350
    iget v1, p2, Landroid/graphics/Rect;->right:I

    goto :goto_18

    .line 1351
    :cond_3f
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v4, v5, :cond_4c

    .line 1352
    iget v4, p2, Landroid/graphics/Rect;->top:I

    iget v5, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    sub-int v3, v4, v5

    goto :goto_18

    .line 1354
    :cond_4c
    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_18

    .line 1360
    :cond_4f
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v4

    add-int v0, v3, v4

    .line 1361
    iget v2, p2, Landroid/graphics/Rect;->right:I

    goto :goto_30

    .line 1363
    :cond_5c
    sget-object v4, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->LayDown:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne p1, v4, :cond_30

    .line 1364
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v4, v5, :cond_6b

    .line 1365
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    add-int v2, v1, v4

    goto :goto_30

    .line 1366
    :cond_6b
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v4, v5, :cond_76

    .line 1367
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    sub-int v1, v2, v4

    goto :goto_30

    .line 1368
    :cond_76
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v4, v5, :cond_81

    .line 1369
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    add-int v0, v3, v4

    goto :goto_30

    .line 1371
    :cond_81
    iget v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    sub-int v3, v0, v4

    goto :goto_30
.end method

.method private computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;
    .registers 7
    .param p1, "open"    # Z

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v0

    .local v0, "l":I
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v1

    .line 1329
    .local v1, "t":I
    if-eqz p1, :cond_18

    .line 1330
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_28

    .line 1331
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    add-int v0, v2, v3

    .line 1339
    :cond_18
    :goto_18
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v2, v0, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2

    .line 1332
    :cond_28
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_37

    .line 1333
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    sub-int v0, v2, v3

    goto :goto_18

    .line 1334
    :cond_37
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_46

    .line 1335
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    add-int v1, v2, v3

    goto :goto_18

    .line 1337
    :cond_46
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    sub-int v1, v2, v3

    goto :goto_18
.end method

.method private dp2px(F)I
    .registers 4
    .param p1, "dp"    # F

    .prologue
    .line 1405
    .line 1406
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 1405
    return v0
.end method

.method private getAdapterView()Landroid/widget/AdapterView;
    .registers 3

    .prologue
    .line 964
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 965
    .local v0, "t":Landroid/view/ViewParent;
    :goto_4
    if-eqz v0, :cond_12

    .line 966
    instance-of v1, v0, Landroid/widget/AdapterView;

    if-eqz v1, :cond_d

    .line 967
    check-cast v0, Landroid/widget/AdapterView;

    .line 971
    .end local v0    # "t":Landroid/view/ViewParent;
    :goto_c
    return-object v0

    .line 969
    .restart local v0    # "t":Landroid/view/ViewParent;
    :cond_d
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 971
    :cond_12
    const/4 v0, 0x0

    goto :goto_c
.end method

.method private insideAdapterView()Z
    .registers 2

    .prologue
    .line 960
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getAdapterView()Landroid/widget/AdapterView;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method private isEnabledInAdapterView()Z
    .registers 6

    .prologue
    .line 935
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getAdapterView()Landroid/widget/AdapterView;

    move-result-object v1

    .line 936
    .local v1, "adapterView":Landroid/widget/AdapterView;
    const/4 v2, 0x1

    .line 937
    .local v2, "enable":Z
    if-eqz v1, :cond_1b

    .line 938
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 939
    .local v0, "adapter":Landroid/widget/Adapter;
    if-eqz v0, :cond_1b

    .line 940
    invoke-virtual {v1, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v3

    .line 941
    .local v3, "p":I
    instance-of v4, v0, Landroid/widget/BaseAdapter;

    if-eqz v4, :cond_1c

    .line 942
    check-cast v0, Landroid/widget/BaseAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-virtual {v0, v3}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v2

    .line 948
    .end local v3    # "p":I
    :cond_1b
    :goto_1b
    return v2

    .line 943
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v3    # "p":I
    :cond_1c
    instance-of v4, v0, Landroid/widget/ListAdapter;

    if-eqz v4, :cond_1b

    .line 944
    check-cast v0, Landroid/widget/ListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    goto :goto_1b
.end method

.method private performAdapterViewItemClick(Landroid/view/MotionEvent;)V
    .registers 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 975
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 976
    .local v1, "t":Landroid/view/ViewParent;
    :goto_4
    if-eqz v1, :cond_26

    .line 977
    instance-of v3, v1, Landroid/widget/AdapterView;

    if-eqz v3, :cond_27

    move-object v2, v1

    .line 978
    check-cast v2, Landroid/widget/AdapterView;

    .line 979
    .local v2, "view":Landroid/widget/AdapterView;
    invoke-virtual {v2, p0}, Landroid/widget/AdapterView;->getPositionForView(Landroid/view/View;)I

    move-result v0

    .line 980
    .local v0, "p":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_34

    .line 981
    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 982
    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v4

    invoke-interface {v4, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    .line 981
    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 990
    .end local v0    # "p":I
    .end local v2    # "view":Landroid/widget/AdapterView;
    :cond_26
    return-void

    .line 985
    :cond_27
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_34

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->performClick()Z

    move-result v3

    if-nez v3, :cond_26

    .line 988
    :cond_34
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_4
.end method

.method private processBottomLayDownMode(FF)V
    .registers 8
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v4, 0x0

    .line 1211
    cmpl-float v2, p1, v4

    if-nez v2, :cond_10

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getOpenStatus()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    move-result-object v2

    sget-object v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Middle:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v2, v3, :cond_10

    .line 1212
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    .line 1214
    :cond_10
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v0

    .local v0, "l":I
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v1

    .line 1216
    .local v1, "t":I
    cmpg-float v2, p1, v4

    if-gez v2, :cond_25

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_25

    .line 1217
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    sub-int/2addr v0, v2

    .line 1218
    :cond_25
    cmpl-float v2, p1, v4

    if-lez v2, :cond_32

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_32

    .line 1219
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    add-int/2addr v0, v2

    .line 1221
    :cond_32
    cmpl-float v2, p2, v4

    if-lez v2, :cond_3f

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_3f

    .line 1222
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    add-int/2addr v1, v2

    .line 1223
    :cond_3f
    cmpg-float v2, p2, v4

    if-gez v2, :cond_4c

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Bottom:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v2, v3, :cond_4c

    .line 1224
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    sub-int/2addr v1, v2

    .line 1226
    :cond_4c
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1227
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->invalidate()V

    .line 1228
    return-void
.end method

.method private processBottomPullOutRelease(FF)V
    .registers 6
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v2, 0x0

    .line 1170
    cmpl-float v0, p1, v2

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getOpenStatus()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    move-result-object v0

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Middle:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v0, v1, :cond_10

    .line 1171
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    .line 1173
    :cond_10
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_3f

    .line 1174
    :cond_1c
    cmpl-float v0, p1, v2

    if-lez v0, :cond_29

    .line 1175
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_37

    .line 1176
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->open()V

    .line 1180
    :cond_29
    :goto_29
    cmpg-float v0, p1, v2

    if-gez v0, :cond_36

    .line 1181
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_3b

    .line 1182
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    .line 1201
    :cond_36
    :goto_36
    return-void

    .line 1178
    :cond_37
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    goto :goto_29

    .line 1184
    :cond_3b
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->open()V

    goto :goto_36

    .line 1187
    :cond_3f
    cmpl-float v0, p2, v2

    if-lez v0, :cond_4c

    .line 1188
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_5a

    .line 1189
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->open()V

    .line 1194
    :cond_4c
    :goto_4c
    cmpg-float v0, p2, v2

    if-gez v0, :cond_36

    .line 1195
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_5e

    .line 1196
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    goto :goto_36

    .line 1191
    :cond_5a
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    goto :goto_4c

    .line 1198
    :cond_5e
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->open()V

    goto :goto_36
.end method

.method private processSurfaceRelease(FF)V
    .registers 6
    .param p1, "xvel"    # F
    .param p2, "yvel"    # F

    .prologue
    const/4 v2, 0x0

    .line 1130
    cmpl-float v0, p1, v2

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getOpenStatus()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    move-result-object v0

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Middle:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v0, v1, :cond_10

    .line 1131
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    .line 1133
    :cond_10
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-eq v0, v1, :cond_1c

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_3f

    .line 1134
    :cond_1c
    cmpl-float v0, p1, v2

    if-lez v0, :cond_29

    .line 1135
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_37

    .line 1136
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->open()V

    .line 1140
    :cond_29
    :goto_29
    cmpg-float v0, p1, v2

    if-gez v0, :cond_36

    .line 1141
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_3b

    .line 1142
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    .line 1160
    :cond_36
    :goto_36
    return-void

    .line 1138
    :cond_37
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    goto :goto_29

    .line 1144
    :cond_3b
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->open()V

    goto :goto_36

    .line 1147
    :cond_3f
    cmpl-float v0, p2, v2

    if-lez v0, :cond_4c

    .line 1148
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_5a

    .line 1149
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->open()V

    .line 1153
    :cond_4c
    :goto_4c
    cmpg-float v0, p2, v2

    if-gez v0, :cond_36

    .line 1154
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_5e

    .line 1155
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    goto :goto_36

    .line 1151
    :cond_5a
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close()V

    goto :goto_4c

    .line 1157
    :cond_5e
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->open()V

    goto :goto_36
.end method

.method private safeBottomView()V
    .registers 5

    .prologue
    const/4 v3, 0x4

    .line 546
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getOpenStatus()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    move-result-object v1

    .line 547
    .local v1, "status":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 549
    .local v0, "bottom":Landroid/view/ViewGroup;
    sget-object v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Close:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v1, v2, :cond_17

    .line 550
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_16

    .line 551
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 556
    :cond_16
    :goto_16
    return-void

    .line 553
    :cond_17
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_16

    .line 554
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_16
.end method


# virtual methods
.method public addOnLayoutListener(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnLayout;)V
    .registers 3
    .param p1, "l"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnLayout;

    .prologue
    .line 654
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    .line 656
    :cond_b
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    return-void
.end method

.method public addRevealListener(ILcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;)V
    .registers 6
    .param p1, "childId"    # I
    .param p2, "l"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_e

    .line 140
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Child does not belong to SwipeListener."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    :cond_e
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    .line 145
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_20
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_32

    .line 148
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_32
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method public addRevealListener([ILcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;)V
    .registers 6
    .param p1, "childIds"    # [I
    .param p2, "l"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;

    .prologue
    .line 161
    array-length v2, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_c

    aget v0, p1, v1

    .line 162
    .local v0, "i":I
    invoke-virtual {p0, v0, p2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->addRevealListener(ILcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;)V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 163
    .end local v0    # "i":I
    :cond_c
    return-void
.end method

.method public addSwipeDenier(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDenier;)V
    .registers 3
    .param p1, "denier"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDenier;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeDeniers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-void
.end method

.method public addSwipeListener(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;)V
    .registers 3
    .param p1, "l"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 1272
    invoke-virtual {p0, v0, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close(ZZ)V

    .line 1273
    return-void
.end method

.method public close(Z)V
    .registers 3
    .param p1, "smooth"    # Z

    .prologue
    .line 1276
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close(ZZ)V

    .line 1277
    return-void
.end method

.method public close(ZZ)V
    .registers 11
    .param p1, "smooth"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 1290
    .local v3, "surface":Landroid/view/ViewGroup;
    if-eqz p1, :cond_1b

    .line 1291
    iget-object v4, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v6

    .line 1292
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v7

    .line 1291
    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1306
    :goto_17
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->invalidate()V

    .line 1307
    return-void

    .line 1294
    :cond_1b
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;

    move-result-object v2

    .line 1295
    .local v2, "rect":Landroid/graphics/Rect;
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    sub-int v0, v4, v5

    .line 1296
    .local v0, "dx":I
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    sub-int v1, v4, v5

    .line 1297
    .local v1, "dy":I
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 1298
    if-eqz p2, :cond_50

    .line 1299
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v6, v2, Landroid/graphics/Rect;->right:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4, v5, v6, v7}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->dispatchRevealEvent(IIII)V

    .line 1301
    iget v4, v2, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->dispatchSwipeEvent(IIII)V

    goto :goto_17

    .line 1303
    :cond_50
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->safeBottomView()V

    goto :goto_17
.end method

.method public computeScroll()V
    .registers 3

    .prologue
    .line 637
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 638
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 639
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 641
    :cond_f
    return-void
.end method

.method protected dispatchRevealEvent(IIII)V
    .registers 18
    .param p1, "surfaceLeft"    # I
    .param p2, "surfaceTop"    # I
    .param p3, "surfaceRight"    # I
    .param p4, "surfaceBottom"    # I

    .prologue
    .line 561
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 633
    :cond_8
    return-void

    .line 563
    :cond_9
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    .line 564
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 563
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_13
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 565
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/view/View;Ljava/util/ArrayList<Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 566
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getRelativePosition(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    .line 567
    .local v2, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-object v0, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->isViewShowing(Landroid/view/View;Landroid/graphics/Rect;Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;IIII)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 569
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    const/4 v8, 0x0

    .line 571
    .local v8, "distance":I
    const/4 v10, 0x0

    .line 572
    .local v10, "fraction":F
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getShowMode()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->LayDown:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v0, v3, :cond_c1

    .line 573
    sget-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$2;->$SwitchMap$com$delan$app$germanybluetooth$widget$swip$SwipeLayout$DragEdge:[I

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_172

    .line 612
    :cond_59
    :goto_59
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_63
    :goto_63
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;

    .line 613
    .local v11, "l":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-interface {v11, v1, v3, v4, v8}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;->onReveal(Landroid/view/View;Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;FI)V

    .line 614
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_63

    .line 615
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_63

    .line 575
    .end local v11    # "l":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;
    :pswitch_8d
    iget v0, v2, Landroid/graphics/Rect;->left:I

    sub-int v8, v0, p1

    .line 576
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 577
    goto :goto_59

    .line 579
    :pswitch_9a
    iget v0, v2, Landroid/graphics/Rect;->right:I

    sub-int v8, v0, p3

    .line 580
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 581
    goto :goto_59

    .line 583
    :pswitch_a7
    iget v0, v2, Landroid/graphics/Rect;->top:I

    sub-int v8, v0, p2

    .line 584
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 585
    goto :goto_59

    .line 587
    :pswitch_b4
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v0, p4

    .line 588
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    goto :goto_59

    .line 591
    :cond_c1
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getShowMode()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v0, v3, :cond_59

    .line 592
    sget-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$2;->$SwitchMap$com$delan$app$germanybluetooth$widget$swip$SwipeLayout$DragEdge:[I

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_17e

    goto :goto_59

    .line 602
    :pswitch_d7
    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v3

    sub-int v8, v0, v3

    .line 603
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 604
    goto/16 :goto_59

    .line 594
    :pswitch_e9
    iget v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v3

    sub-int v8, v0, v3

    .line 595
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 596
    goto/16 :goto_59

    .line 598
    :pswitch_fb
    iget v0, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getWidth()I

    move-result v3

    sub-int v8, v0, v3

    .line 599
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    .line 600
    goto/16 :goto_59

    .line 606
    :pswitch_10d
    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getHeight()I

    move-result v3

    sub-int v8, v0, v3

    .line 607
    int-to-float v0, v8

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v10, v0, v3

    goto/16 :goto_59

    .line 620
    .end local v8    # "distance":I
    .end local v10    # "fraction":F
    :cond_11f
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-object v0, p0

    move v4, p1

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->isViewTotallyFirstShowed(Landroid/view/View;Landroid/graphics/Rect;Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;IIII)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 622
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_142
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;

    .line 624
    .restart local v11    # "l":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v4, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-eq v3, v4, :cond_15a

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v4, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v3, v4, :cond_166

    .line 626
    :cond_15a
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-interface {v11, v1, v3, v4, v5}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;->onReveal(Landroid/view/View;Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;FI)V

    goto :goto_142

    .line 628
    :cond_166
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-interface {v11, v1, v3, v4, v5}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;->onReveal(Landroid/view/View;Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;FI)V

    goto :goto_142

    .line 573
    :pswitch_data_172
    .packed-switch 0x1
        :pswitch_a7
        :pswitch_b4
        :pswitch_8d
        :pswitch_9a
    .end packed-switch

    .line 592
    :pswitch_data_17e
    .packed-switch 0x1
        :pswitch_d7
        :pswitch_10d
        :pswitch_e9
        :pswitch_fb
    .end packed-switch
.end method

.method protected dispatchSwipeEvent(IIII)V
    .registers 8
    .param p1, "surfaceLeft"    # I
    .param p2, "surfaceTop"    # I
    .param p3, "dx"    # I
    .param p4, "dy"    # I

    .prologue
    .line 487
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getDragEdge()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-result-object v0

    .line 488
    .local v0, "edge":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;
    const/4 v1, 0x1

    .line 489
    .local v1, "open":Z
    sget-object v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v2, :cond_10

    .line 490
    if-gez p3, :cond_c

    .line 491
    const/4 v1, 0x0

    .line 503
    :cond_c
    :goto_c
    invoke-virtual {p0, p1, p2, v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->dispatchSwipeEvent(IIZ)V

    .line 504
    return-void

    .line 492
    :cond_10
    sget-object v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v2, :cond_18

    .line 493
    if-lez p3, :cond_c

    .line 494
    const/4 v1, 0x0

    goto :goto_c

    .line 495
    :cond_18
    sget-object v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v2, :cond_20

    .line 496
    if-gez p4, :cond_c

    .line 497
    const/4 v1, 0x0

    goto :goto_c

    .line 498
    :cond_20
    sget-object v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Bottom:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v2, :cond_c

    .line 499
    if-lez p4, :cond_c

    .line 500
    const/4 v1, 0x0

    goto :goto_c
.end method

.method protected dispatchSwipeEvent(IIZ)V
    .registers 11
    .param p1, "surfaceLeft"    # I
    .param p2, "surfaceTop"    # I
    .param p3, "open"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 508
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->safeBottomView()V

    .line 509
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getOpenStatus()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    move-result-object v1

    .line 511
    .local v1, "status":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_85

    .line 512
    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mEventCounter:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mEventCounter:I

    .line 513
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_46

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;

    .line 514
    .local v0, "l":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;
    iget v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mEventCounter:I

    if-ne v3, v6, :cond_32

    .line 515
    if-eqz p3, :cond_42

    .line 516
    invoke-interface {v0, p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;->onStartOpen(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V

    .line 521
    :cond_32
    :goto_32
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v3

    sub-int v3, p1, v3

    .line 522
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v4

    sub-int v4, p2, v4

    .line 521
    invoke-interface {v0, p0, v3, v4}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;->onUpdate(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;II)V

    goto :goto_1d

    .line 518
    :cond_42
    invoke-interface {v0, p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;->onStartClose(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V

    goto :goto_32

    .line 525
    .end local v0    # "l":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;
    :cond_46
    sget-object v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Close:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v1, v2, :cond_62

    .line 526
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_50
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;

    .line 527
    .restart local v0    # "l":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;
    invoke-interface {v0, p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;->onClose(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V

    goto :goto_50

    .line 529
    .end local v0    # "l":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;
    :cond_60
    iput v5, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mEventCounter:I

    .line 532
    :cond_62
    sget-object v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Open:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v1, v2, :cond_85

    .line 533
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 534
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_73
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_83

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;

    .line 535
    .restart local v0    # "l":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;
    invoke-interface {v0, p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;->onOpen(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V

    goto :goto_73

    .line 537
    .end local v0    # "l":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;
    :cond_83
    iput v5, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mEventCounter:I

    .line 540
    :cond_85
    return-void
.end method

.method public getBottomView()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 1096
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getDragDistance()I
    .registers 2

    .prologue
    .line 1084
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    return v0
.end method

.method public getDragEdge()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;
    .registers 2

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    return-object v0
.end method

.method public getOpenStatus()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;
    .registers 5

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v0

    .line 1110
    .local v0, "surfaceLeft":I
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    .line 1111
    .local v1, "surfaceTop":I
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v2

    if-ne v0, v2, :cond_1f

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v2

    if-ne v1, v2, :cond_1f

    .line 1112
    sget-object v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Close:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    .line 1120
    :goto_1e
    return-object v2

    .line 1114
    :cond_1f
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    sub-int/2addr v2, v3

    if-eq v0, v2, :cond_43

    .line 1115
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    add-int/2addr v2, v3

    if-eq v0, v2, :cond_43

    .line 1116
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_43

    .line 1117
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    add-int/2addr v2, v3

    if-ne v1, v2, :cond_46

    .line 1118
    :cond_43
    sget-object v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Open:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    goto :goto_1e

    .line 1120
    :cond_46
    sget-object v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Middle:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    goto :goto_1e
.end method

.method protected getRelativePosition(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 469
    move-object v1, p1

    .line 470
    .local v1, "t":Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-direct {v0, v2, v3, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 471
    .local v0, "r":Landroid/graphics/Rect;
    :goto_f
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_23

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    if-eq v1, v2, :cond_23

    .line 472
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .end local v1    # "t":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 473
    .restart local v1    # "t":Landroid/view/View;
    if-ne v1, p0, :cond_36

    .line 478
    :cond_23
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 479
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 480
    return-object v0

    .line 475
    :cond_36
    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 476
    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->top:I

    goto :goto_f
.end method

.method public getShowMode()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;
    .registers 2

    .prologue
    .line 1088
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowMode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    return-object v0
.end method

.method public getSurfaceView()Landroid/view/ViewGroup;
    .registers 2

    .prologue
    .line 1092
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public isSwipeEnabled()Z
    .registers 2

    .prologue
    .line 956
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeEnabled:Z

    return v0
.end method

.method protected isViewShowing(Landroid/view/View;Landroid/graphics/Rect;Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;IIII)Z
    .registers 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativePosition"    # Landroid/graphics/Rect;
    .param p3, "availableEdge"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;
    .param p4, "surfaceLeft"    # I
    .param p5, "surfaceTop"    # I
    .param p6, "surfaceRight"    # I
    .param p7, "surfaceBottom"    # I

    .prologue
    const/4 v4, 0x1

    .line 416
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 417
    .local v1, "childLeft":I
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 418
    .local v2, "childRight":I
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 419
    .local v3, "childTop":I
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 420
    .local v0, "childBottom":I
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getShowMode()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v5

    sget-object v6, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->LayDown:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v5, v6, :cond_32

    .line 421
    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$2;->$SwitchMap$com$delan$app$germanybluetooth$widget$swip$SwipeLayout$DragEdge:[I

    invoke-virtual {p3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_7a

    .line 465
    :cond_1c
    :goto_1c
    const/4 v4, 0x0

    :goto_1d
    return v4

    .line 423
    :pswitch_1e
    if-le p6, v1, :cond_1c

    if-gt p6, v2, :cond_1c

    goto :goto_1d

    .line 428
    :pswitch_23
    if-ge p4, v2, :cond_1c

    if-lt p4, v1, :cond_1c

    goto :goto_1d

    .line 433
    :pswitch_28
    if-lt p5, v3, :cond_1c

    if-ge p5, v0, :cond_1c

    goto :goto_1d

    .line 438
    :pswitch_2d
    if-le p7, v3, :cond_1c

    if-gt p7, v0, :cond_1c

    goto :goto_1d

    .line 443
    :cond_32
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getShowMode()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v5

    sget-object v6, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v5, v6, :cond_1c

    .line 444
    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$2;->$SwitchMap$com$delan$app$germanybluetooth$widget$swip$SwipeLayout$DragEdge:[I

    invoke-virtual {p3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_86

    goto :goto_1c

    .line 455
    :pswitch_46
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v5

    if-ge v3, v5, :cond_1c

    .line 456
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v5

    if-lt v0, v5, :cond_1c

    goto :goto_1d

    .line 446
    :pswitch_53
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getWidth()I

    move-result v5

    if-gt v1, v5, :cond_1c

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getWidth()I

    move-result v5

    if-le v2, v5, :cond_1c

    goto :goto_1d

    .line 450
    :pswitch_60
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v5

    if-lt v2, v5, :cond_1c

    .line 451
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v5

    if-ge v1, v5, :cond_1c

    goto :goto_1d

    .line 460
    :pswitch_6d
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getHeight()I

    move-result v5

    if-ge v3, v5, :cond_1c

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v5

    if-lt v3, v5, :cond_1c

    goto :goto_1d

    .line 421
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_28
        :pswitch_2d
        :pswitch_23
        :pswitch_1e
    .end packed-switch

    .line 444
    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_46
        :pswitch_6d
        :pswitch_60
        :pswitch_53
    .end packed-switch
.end method

.method protected isViewTotallyFirstShowed(Landroid/view/View;Landroid/graphics/Rect;Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;IIII)Z
    .registers 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "relativePosition"    # Landroid/graphics/Rect;
    .param p3, "edge"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;
    .param p4, "surfaceLeft"    # I
    .param p5, "surfaceTop"    # I
    .param p6, "surfaceRight"    # I
    .param p7, "surfaceBottom"    # I

    .prologue
    .line 390
    iget-object v5, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 391
    const/4 v4, 0x0

    .line 410
    :cond_f
    :goto_f
    return v4

    .line 392
    :cond_10
    iget v1, p2, Landroid/graphics/Rect;->left:I

    .line 393
    .local v1, "childLeft":I
    iget v2, p2, Landroid/graphics/Rect;->right:I

    .line 394
    .local v2, "childRight":I
    iget v3, p2, Landroid/graphics/Rect;->top:I

    .line 395
    .local v3, "childTop":I
    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 396
    .local v0, "childBottom":I
    const/4 v4, 0x0

    .line 397
    .local v4, "r":Z
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getShowMode()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v5

    sget-object v6, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->LayDown:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v5, v6, :cond_3b

    .line 398
    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_27

    if-le p6, v1, :cond_39

    :cond_27
    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_2d

    if-ge p4, v2, :cond_39

    :cond_2d
    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_33

    if-ge p5, v0, :cond_39

    :cond_33
    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Bottom:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_f

    if-gt p7, v3, :cond_f

    .line 402
    :cond_39
    const/4 v4, 0x1

    goto :goto_f

    .line 403
    :cond_3b
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getShowMode()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v5

    sget-object v6, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v5, v6, :cond_f

    .line 404
    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_4d

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getWidth()I

    move-result v5

    if-le v2, v5, :cond_6b

    :cond_4d
    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_57

    .line 405
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v5

    if-ge v1, v5, :cond_6b

    :cond_57
    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_61

    .line 406
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v5

    if-ge v3, v5, :cond_6b

    :cond_61
    sget-object v5, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Bottom:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne p3, v5, :cond_f

    .line 407
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getHeight()I

    move-result v5

    if-gt v0, v5, :cond_f

    .line 408
    :cond_6b
    const/4 v4, 0x1

    goto :goto_f
.end method

.method layoutLayDown()V
    .registers 7

    .prologue
    .line 699
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 700
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 701
    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->LayDown:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    invoke-direct {p0, v1, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->computeBottomLayoutAreaViaSurface(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 702
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 703
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 704
    return-void
.end method

.method layoutPullOut()V
    .registers 7

    .prologue
    .line 691
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;

    move-result-object v0

    .line 692
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 693
    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    invoke-direct {p0, v1, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->computeBottomLayoutAreaViaSurface(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 694
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 695
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->bringChildToFront(Landroid/view/View;)V

    .line 696
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 721
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->isEnabledInAdapterView()Z

    move-result v3

    if-nez v3, :cond_10

    :cond_e
    move v5, v4

    .line 755
    :cond_f
    :goto_f
    return v5

    .line 725
    :cond_10
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->isSwipeEnabled()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 729
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeDeniers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDenier;

    .line 730
    .local v1, "denier":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDenier;
    if-eqz v1, :cond_1c

    invoke-interface {v1, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDenier;->shouldDenySwipe(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_1c

    goto :goto_f

    .line 738
    .end local v1    # "denier":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDenier;
    :cond_31
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 739
    .local v0, "action":I
    packed-switch v0, :pswitch_data_78

    .line 755
    :cond_38
    :goto_38
    :pswitch_38
    iget-boolean v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mTouchConsumedByChild:Z

    if-nez v3, :cond_75

    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v3, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_75

    :goto_44
    move v5, v4

    goto :goto_f

    .line 741
    :pswitch_46
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getOpenStatus()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    move-result-object v2

    .line 742
    .local v2, "status":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;
    sget-object v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Close:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v2, v3, :cond_5e

    .line 744
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 743
    invoke-direct {p0, v3, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->childNeedHandleTouchEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_5c

    move v3, v4

    :goto_59
    iput-boolean v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mTouchConsumedByChild:Z

    goto :goto_38

    :cond_5c
    move v3, v5

    goto :goto_59

    .line 745
    :cond_5e
    sget-object v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Open:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v2, v3, :cond_38

    .line 747
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v3

    .line 746
    invoke-direct {p0, v3, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->childNeedHandleTouchEvent(Landroid/view/ViewGroup;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_70

    move v3, v4

    :goto_6d
    iput-boolean v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mTouchConsumedByChild:Z

    goto :goto_38

    :cond_70
    move v3, v5

    goto :goto_6d

    .line 752
    .end local v2    # "status":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;
    :pswitch_72
    iput-boolean v5, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mTouchConsumedByChild:Z

    goto :goto_38

    :cond_75
    move v4, v5

    .line 755
    goto :goto_44

    .line 739
    nop

    :pswitch_data_78
    .packed-switch 0x0
        :pswitch_46
        :pswitch_72
        :pswitch_38
        :pswitch_72
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getChildCount()I

    move-result v0

    .line 667
    .local v0, "childCount":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_f

    .line 668
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You need 2  views in SwipeLayout"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 670
    :cond_f
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    .line 671
    invoke-virtual {p0, v2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-nez v2, :cond_29

    .line 672
    :cond_21
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The 2 children in SwipeLayout must be an instance of ViewGroup"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 676
    :cond_29
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowMode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    sget-object v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v2, v3, :cond_50

    .line 677
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->layoutPullOut()V

    .line 681
    :cond_32
    :goto_32
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->safeBottomView()V

    .line 683
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    if-eqz v2, :cond_5a

    .line 684
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3a
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5a

    .line 685
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnLayout;

    invoke-interface {v2, p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnLayout;->onLayout(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 678
    .end local v1    # "i":I
    :cond_50
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowMode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    sget-object v3, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->LayDown:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v2, v3, :cond_32

    .line 679
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->layoutLayDown()V

    goto :goto_32

    .line 688
    :cond_5a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 708
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 710
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-eq v0, v1, :cond_f

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v0, v1, :cond_1a

    .line 711
    :cond_f
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    .line 714
    :goto_19
    return-void

    .line 713
    :cond_1a
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    goto :goto_19
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 810
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->isEnabledInAdapterView()Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_e

    .line 811
    :cond_c
    const/4 v9, 0x1

    .line 925
    :goto_d
    return v9

    .line 813
    :cond_e
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->isSwipeEnabled()Z

    move-result v9

    if-nez v9, :cond_19

    .line 814
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    goto :goto_d

    .line 816
    :cond_19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 817
    .local v0, "action":I
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 819
    .local v5, "parent":Landroid/view/ViewParent;
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v9, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 820
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getOpenStatus()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    move-result-object v6

    .line 821
    .local v6, "status":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;
    const/4 v8, 0x0

    .line 822
    .local v8, "touching":Landroid/view/ViewGroup;
    sget-object v9, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Close:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v6, v9, :cond_41

    .line 823
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v8

    .line 828
    :cond_33
    :goto_33
    packed-switch v0, :pswitch_data_194

    .line 921
    :cond_36
    :goto_36
    const/4 v9, 0x1

    invoke-interface {v5, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 922
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 925
    :goto_3f
    const/4 v9, 0x1

    goto :goto_d

    .line 824
    :cond_41
    sget-object v9, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Open:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v6, v9, :cond_33

    .line 825
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v8

    goto :goto_33

    .line 830
    :pswitch_4a
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 831
    const/4 v9, 0x1

    invoke-interface {v5, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 833
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->sX:F

    .line 834
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->sY:F

    .line 836
    if-eqz v8, :cond_65

    .line 837
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 839
    :cond_65
    const/4 v9, 0x1

    goto :goto_d

    .line 841
    :pswitch_67
    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->sX:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-eqz v9, :cond_77

    iget v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->sY:F

    const/high16 v10, -0x40800000    # -1.0f

    cmpl-float v9, v9, v10

    if-nez v9, :cond_93

    .line 846
    :cond_77
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 847
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 848
    const/4 v9, 0x1

    invoke-interface {v5, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 849
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iput v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->sX:F

    .line 850
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iput v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->sY:F

    .line 851
    const/4 v9, 0x1

    goto/16 :goto_d

    .line 854
    :cond_93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    iget v10, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->sX:F

    sub-float v2, v9, v10

    .line 855
    .local v2, "distanceX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v9

    iget v10, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->sY:F

    sub-float v3, v9, v10

    .line 856
    .local v3, "distanceY":F
    div-float v9, v3, v2

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 857
    .local v1, "angle":F
    float-to-double v10, v1

    invoke-static {v10, v11}, Ljava/lang/Math;->atan(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    double-to-float v1, v10

    .line 859
    const/4 v4, 0x0

    .line 860
    .local v4, "doNothing":Z
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v10, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_dd

    .line 861
    sget-object v9, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Open:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v6, v9, :cond_c3

    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-gtz v9, :cond_cc

    :cond_c3
    sget-object v9, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Close:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v6, v9, :cond_161

    const/4 v9, 0x0

    cmpg-float v9, v2, v9

    if-gez v9, :cond_161

    :cond_cc
    const/4 v7, 0x1

    .line 863
    .local v7, "suitable":Z
    :goto_cd
    if-nez v7, :cond_d3

    sget-object v9, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Middle:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v6, v9, :cond_164

    :cond_d3
    const/4 v7, 0x1

    .line 865
    :goto_d4
    const/high16 v9, 0x41f00000    # 30.0f

    cmpl-float v9, v1, v9

    if-gtz v9, :cond_dc

    if-nez v7, :cond_dd

    .line 866
    :cond_dc
    const/4 v4, 0x1

    .line 870
    .end local v7    # "suitable":Z
    :cond_dd
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v10, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_106

    .line 871
    sget-object v9, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Open:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v6, v9, :cond_ec

    const/4 v9, 0x0

    cmpg-float v9, v2, v9

    if-ltz v9, :cond_f5

    :cond_ec
    sget-object v9, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Close:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v6, v9, :cond_167

    const/4 v9, 0x0

    cmpl-float v9, v2, v9

    if-lez v9, :cond_167

    :cond_f5
    const/4 v7, 0x1

    .line 873
    .restart local v7    # "suitable":Z
    :goto_f6
    if-nez v7, :cond_fc

    sget-object v9, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Middle:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v6, v9, :cond_169

    :cond_fc
    const/4 v7, 0x1

    .line 875
    :goto_fd
    const/high16 v9, 0x41f00000    # 30.0f

    cmpl-float v9, v1, v9

    if-gtz v9, :cond_105

    if-nez v7, :cond_106

    .line 876
    :cond_105
    const/4 v4, 0x1

    .line 880
    .end local v7    # "suitable":Z
    :cond_106
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v10, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_12f

    .line 881
    sget-object v9, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Open:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v6, v9, :cond_115

    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-ltz v9, :cond_11e

    :cond_115
    sget-object v9, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Close:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v6, v9, :cond_16b

    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-lez v9, :cond_16b

    :cond_11e
    const/4 v7, 0x1

    .line 883
    .restart local v7    # "suitable":Z
    :goto_11f
    if-nez v7, :cond_125

    sget-object v9, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Middle:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v6, v9, :cond_16d

    :cond_125
    const/4 v7, 0x1

    .line 885
    :goto_126
    const/high16 v9, 0x42700000    # 60.0f

    cmpg-float v9, v1, v9

    if-ltz v9, :cond_12e

    if-nez v7, :cond_12f

    .line 886
    :cond_12e
    const/4 v4, 0x1

    .line 890
    .end local v7    # "suitable":Z
    :cond_12f
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    sget-object v10, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Bottom:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_158

    .line 891
    sget-object v9, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Open:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v6, v9, :cond_13e

    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-gtz v9, :cond_147

    :cond_13e
    sget-object v9, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Close:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v6, v9, :cond_16f

    const/4 v9, 0x0

    cmpg-float v9, v3, v9

    if-gez v9, :cond_16f

    :cond_147
    const/4 v7, 0x1

    .line 893
    .restart local v7    # "suitable":Z
    :goto_148
    if-nez v7, :cond_14e

    sget-object v9, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Middle:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v6, v9, :cond_171

    :cond_14e
    const/4 v7, 0x1

    .line 895
    :goto_14f
    const/high16 v9, 0x42700000    # 60.0f

    cmpg-float v9, v1, v9

    if-ltz v9, :cond_157

    if-nez v7, :cond_158

    .line 896
    :cond_157
    const/4 v4, 0x1

    .line 900
    .end local v7    # "suitable":Z
    :cond_158
    if-eqz v4, :cond_173

    .line 901
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 902
    const/4 v9, 0x0

    goto/16 :goto_d

    .line 861
    :cond_161
    const/4 v7, 0x0

    goto/16 :goto_cd

    .line 863
    .restart local v7    # "suitable":Z
    :cond_164
    const/4 v7, 0x0

    goto/16 :goto_d4

    .line 871
    .end local v7    # "suitable":Z
    :cond_167
    const/4 v7, 0x0

    goto :goto_f6

    .line 873
    .restart local v7    # "suitable":Z
    :cond_169
    const/4 v7, 0x0

    goto :goto_fd

    .line 881
    .end local v7    # "suitable":Z
    :cond_16b
    const/4 v7, 0x0

    goto :goto_11f

    .line 883
    .restart local v7    # "suitable":Z
    :cond_16d
    const/4 v7, 0x0

    goto :goto_126

    .line 891
    .end local v7    # "suitable":Z
    :cond_16f
    const/4 v7, 0x0

    goto :goto_148

    .line 893
    .restart local v7    # "suitable":Z
    :cond_171
    const/4 v7, 0x0

    goto :goto_14f

    .line 904
    .end local v7    # "suitable":Z
    :cond_173
    if-eqz v8, :cond_179

    .line 905
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setPressed(Z)V

    .line 907
    :cond_179
    const/4 v9, 0x1

    invoke-interface {v5, v9}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 908
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v9, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    goto/16 :goto_3f

    .line 914
    .end local v1    # "angle":F
    .end local v2    # "distanceX":F
    .end local v3    # "distanceY":F
    .end local v4    # "doNothing":Z
    :pswitch_184
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->sX:F

    .line 915
    const/high16 v9, -0x40800000    # -1.0f

    iput v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->sY:F

    .line 916
    if-eqz v8, :cond_36

    .line 917
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setPressed(Z)V

    goto/16 :goto_36

    .line 828
    :pswitch_data_194
    .packed-switch 0x0
        :pswitch_4a
        :pswitch_184
        :pswitch_67
        :pswitch_184
    .end packed-switch
.end method

.method public open()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 1234
    invoke-virtual {p0, v0, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->open(ZZ)V

    .line 1235
    return-void
.end method

.method public open(Z)V
    .registers 3
    .param p1, "smooth"    # Z

    .prologue
    .line 1238
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->open(ZZ)V

    .line 1239
    return-void
.end method

.method public open(ZZ)V
    .registers 13
    .param p1, "smooth"    # Z
    .param p2, "notify"    # Z

    .prologue
    .line 1242
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v5

    .local v5, "surface":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 1244
    .local v1, "bottom":Landroid/view/ViewGroup;
    const/4 v6, 0x1

    invoke-direct {p0, v6}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->computeSurfaceLayoutArea(Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 1245
    .local v4, "rect":Landroid/graphics/Rect;
    if-eqz p1, :cond_20

    .line 1246
    iget-object v6, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragHelper:Landroid/support/v4/widget/ViewDragHelper;

    .line 1247
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v7

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1265
    :goto_1c
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->invalidate()V

    .line 1266
    return-void

    .line 1249
    :cond_20
    iget v6, v4, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getLeft()I

    move-result v7

    sub-int v2, v6, v7

    .line 1250
    .local v2, "dx":I
    iget v6, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getTop()I

    move-result v7

    sub-int v3, v6, v7

    .line 1251
    .local v3, "dy":I
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 1252
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getShowMode()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v6

    sget-object v7, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v6, v7, :cond_54

    .line 1253
    sget-object v6, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    invoke-direct {p0, v6, v4}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->computeBottomLayoutAreaViaSurface(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 1255
    .local v0, "bRect":Landroid/graphics/Rect;
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 1257
    .end local v0    # "bRect":Landroid/graphics/Rect;
    :cond_54
    if-eqz p2, :cond_69

    .line 1258
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    iget v8, v4, Landroid/graphics/Rect;->right:I

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v6, v7, v8, v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->dispatchRevealEvent(IIII)V

    .line 1260
    iget v6, v4, Landroid/graphics/Rect;->left:I

    iget v7, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->dispatchSwipeEvent(IIII)V

    goto :goto_1c

    .line 1262
    :cond_69
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->safeBottomView()V

    goto :goto_1c
.end method

.method public removeAllRevealListeners(I)V
    .registers 4
    .param p1, "childId"    # I

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 178
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_10

    .line 179
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_10
    return-void
.end method

.method public removeAllSwipeDeniers()V
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeDeniers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 122
    return-void
.end method

.method public removeOnLayoutListener(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnLayout;)V
    .registers 3
    .param p1, "l"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnLayout;

    .prologue
    .line 660
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 661
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mOnLayoutListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 662
    :cond_9
    return-void
.end method

.method public removeRevealListener(ILcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;)V
    .registers 5
    .param p1, "childId"    # I
    .param p2, "l"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$OnRevealListener;

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 168
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_7

    .line 174
    :cond_6
    :goto_6
    return-void

    .line 171
    :cond_7
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowEntirely:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 173
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mRevealListeners:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method public removeSwipeDenier(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDenier;)V
    .registers 3
    .param p1, "denier"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDenier;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeDeniers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 118
    return-void
.end method

.method public removeSwipeListener(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;)V
    .registers 3
    .param p1, "l"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method

.method public setDragDistance(I)V
    .registers 4
    .param p1, "max"    # I

    .prologue
    .line 1064
    if-gez p1, :cond_a

    .line 1065
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Drag distance can not be < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1066
    :cond_a
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragDistance:I

    .line 1067
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->requestLayout()V

    .line 1068
    return-void
.end method

.method public setDragEdge(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;)V
    .registers 2
    .param p1, "dragEdge"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    .prologue
    .line 1053
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDragEdge:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    .line 1054
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->requestLayout()V

    .line 1055
    return-void
.end method

.method public setOnDoubleClickListener(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DoubleClickListener;)V
    .registers 2
    .param p1, "doubleClickListener"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DoubleClickListener;

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mDoubleClickListener:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DoubleClickListener;

    .line 1398
    return-void
.end method

.method public setShowMode(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;)V
    .registers 2
    .param p1, "mode"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    .prologue
    .line 1075
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mShowMode:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    .line 1076
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->requestLayout()V

    .line 1077
    return-void
.end method

.method public setSwipeEnabled(Z)V
    .registers 2
    .param p1, "enabled"    # Z

    .prologue
    .line 952
    iput-boolean p1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->mSwipeEnabled:Z

    .line 953
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 1310
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->toggle(Z)V

    .line 1311
    return-void
.end method

.method public toggle(Z)V
    .registers 4
    .param p1, "smooth"    # Z

    .prologue
    .line 1314
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getOpenStatus()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    move-result-object v0

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Open:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v0, v1, :cond_c

    .line 1315
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->close(Z)V

    .line 1318
    :cond_b
    :goto_b
    return-void

    .line 1316
    :cond_c
    invoke-virtual {p0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getOpenStatus()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    move-result-object v0

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;->Close:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$Status;

    if-ne v0, v1, :cond_b

    .line 1317
    invoke-virtual {p0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->open(Z)V

    goto :goto_b
.end method
