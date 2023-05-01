.class public Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;
.super Landroid/widget/TextView;
.source "MyTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;
    }
.end annotation


# instance fields
.field private ctx:Landroid/content/Context;

.field private isLongPressed:Z

.field private lastX:F

.field private lastY:F

.field private listener:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;

.field private task:Ljava/util/TimerTask;

.field private timer:Ljava/util/Timer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->lastY:F

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->lastX:F

    .line 26
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->ctx:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->lastY:F

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->lastX:F

    .line 31
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->ctx:Landroid/content/Context;

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;)Z
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->isLongPressed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;)Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;
    .registers 2
    .param p0, "x0"    # Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->listener:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;

    return-object v0
.end method

.method private isLongPressed(FFFF)Z
    .registers 9
    .param p1, "lastX"    # F
    .param p2, "lastY"    # F
    .param p3, "thisX"    # F
    .param p4, "thisY"    # F

    .prologue
    .line 108
    sub-float v3, p3, p1

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 109
    .local v0, "offsetX":F
    sub-float v3, p4, p2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 110
    .local v1, "offsetY":F
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->ctx:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 111
    .local v2, "touchSlop":I
    int-to-float v3, v2

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_22

    int-to-float v3, v2

    cmpg-float v3, v1, v3

    if-gtz v3, :cond_22

    const/4 v3, 0x1

    :goto_21
    return v3

    :cond_22
    const/4 v3, 0x0

    goto :goto_21
.end method

.method private startTimer()V
    .registers 7

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->stopTimer()V

    .line 83
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->timer:Ljava/util/Timer;

    .line 84
    new-instance v0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$1;

    invoke-direct {v0, p0}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$1;-><init>(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;)V

    iput-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->task:Ljava/util/TimerTask;

    .line 92
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->timer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->task:Ljava/util/TimerTask;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x12c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 93
    return-void
.end method

.method private stopTimer()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 97
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_c

    .line 98
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 99
    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->timer:Ljava/util/Timer;

    .line 101
    :cond_c
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->task:Ljava/util/TimerTask;

    if-eqz v0, :cond_17

    .line 102
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->task:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 103
    iput-object v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->task:Ljava/util/TimerTask;

    .line 105
    :cond_17
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    .line 70
    :cond_9
    :goto_9
    return v4

    .line 38
    :pswitch_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->lastX:F

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->lastY:F

    .line 40
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->startTimer()V

    .line 41
    iput-boolean v4, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->isLongPressed:Z

    goto :goto_9

    .line 44
    :pswitch_1c
    iget v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->lastX:F

    iget v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->lastY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->isLongPressed(FFFF)Z

    move-result v0

    iput-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->isLongPressed:Z

    .line 45
    iget-boolean v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->isLongPressed:Z

    if-nez v0, :cond_36

    .line 46
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->stopTimer()V

    goto :goto_9

    .line 48
    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->lastX:F

    .line 49
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->lastY:F

    .line 50
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->timer:Ljava/util/Timer;

    if-nez v0, :cond_9

    .line 51
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->startTimer()V

    goto :goto_9

    .line 56
    :pswitch_4a
    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->isLongPressed:Z

    .line 57
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->stopTimer()V

    goto :goto_9

    .line 60
    :pswitch_50
    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->isLongPressed:Z

    .line 61
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->stopTimer()V

    goto :goto_9

    .line 64
    :pswitch_56
    iput-boolean v1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->isLongPressed:Z

    .line 65
    invoke-direct {p0}, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->stopTimer()V

    goto :goto_9

    .line 36
    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_a
        :pswitch_56
        :pswitch_1c
        :pswitch_4a
        :pswitch_50
    .end packed-switch
.end method

.method public setOnLongUpdateListener(Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/bluetooth/MyTextView;->listener:Lcom/delan/app/germanybluetooth/bluetooth/MyTextView$OnLongUpdateListener;

    .line 118
    return-void
.end method
