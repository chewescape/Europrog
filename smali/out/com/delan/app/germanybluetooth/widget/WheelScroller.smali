.class public Lcom/delan/app/germanybluetooth/widget/WheelScroller;
.super Ljava/lang/Object;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;
    }
.end annotation


# static fields
.field public static final MIN_DELTA_FOR_SCROLLING:I = 0x1

.field private static final SCROLLING_DURATION:I = 0x190


# instance fields
.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field private animationHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private isScrollingPerformed:Z

.field private lastScrollY:I

.field private lastTouchedY:F

.field private listener:Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;

.field private scroller:Landroid/widget/Scroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller$1;-><init>(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 177
    iput v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->MESSAGE_SCROLL:I

    .line 178
    const/4 v0, 0x1

    iput v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->MESSAGE_JUSTIFY:I

    .line 199
    new-instance v0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;-><init>(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    .line 87
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 89
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    .line 91
    iput-object p2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->listener:Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;

    .line 92
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->context:Landroid/content/Context;

    .line 93
    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    .prologue
    .line 34
    iget v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->lastScrollY:I

    return v0
.end method

.method static synthetic access$002(Lcom/delan/app/germanybluetooth/widget/WheelScroller;I)I
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/WheelScroller;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->lastScrollY:I

    return p1
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)Landroid/widget/Scroller;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method static synthetic access$200(Lcom/delan/app/germanybluetooth/widget/WheelScroller;I)V
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/WheelScroller;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->setNextMessage(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->listener:Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)V
    .registers 1
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->justify()V

    return-void
.end method

.method private clearMessages()V
    .registers 3

    .prologue
    .line 194
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 195
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 196
    return-void
.end method

.method private justify()V
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->listener:Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;->onJustify()V

    .line 230
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->setNextMessage(I)V

    .line 231
    return-void
.end method

.method private setNextMessage(I)V
    .registers 3
    .param p1, "message"    # I

    .prologue
    .line 186
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->clearMessages()V

    .line 187
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->animationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 188
    return-void
.end method

.method private startScrolling()V
    .registers 2

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->isScrollingPerformed:Z

    if-nez v0, :cond_c

    .line 238
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->isScrollingPerformed:Z

    .line 239
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->listener:Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;->onStarted()V

    .line 241
    :cond_c
    return-void
.end method


# virtual methods
.method finishScrolling()V
    .registers 2

    .prologue
    .line 247
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->isScrollingPerformed:Z

    if-eqz v0, :cond_c

    .line 248
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->listener:Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;

    invoke-interface {v0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;->onFinished()V

    .line 249
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->isScrollingPerformed:Z

    .line 251
    :cond_c
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 133
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_42

    .line 151
    :cond_8
    :goto_8
    :pswitch_8
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_19

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_19

    .line 152
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->justify()V

    .line 155
    :cond_19
    return v3

    .line 135
    :pswitch_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->lastTouchedY:F

    .line 136
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 137
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->clearMessages()V

    goto :goto_8

    .line 142
    :pswitch_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->lastTouchedY:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 143
    .local v0, "distanceY":I
    if-eqz v0, :cond_8

    .line 144
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->startScrolling()V

    .line 145
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->listener:Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;

    invoke-interface {v1, v0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->lastTouchedY:F

    goto :goto_8

    .line 133
    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_8
        :pswitch_29
    .end packed-switch
.end method

.method public scroll(II)V
    .registers 9
    .param p1, "distance"    # I
    .param p2, "time"    # I

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 112
    iput v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->lastScrollY:I

    .line 114
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    if-eqz p2, :cond_1b

    move v5, p2

    :goto_e
    move v2, v1

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 115
    invoke-direct {p0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->setNextMessage(I)V

    .line 117
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->startScrolling()V

    .line 118
    return-void

    .line 114
    :cond_1b
    const/16 v5, 0x190

    goto :goto_e
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .registers 4
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 101
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    .line 102
    return-void
.end method

.method public stopScrolling()V
    .registers 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 125
    return-void
.end method
