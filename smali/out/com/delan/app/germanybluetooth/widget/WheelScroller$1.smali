.class Lcom/delan/app/germanybluetooth/widget/WheelScroller$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "WheelScroller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/widget/WheelScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 16
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 167
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->access$002(Lcom/delan/app/germanybluetooth/widget/WheelScroller;I)I

    .line 168
    const v9, 0x7fffffff

    .line 169
    .local v9, "maxY":I
    const v10, -0x7fffffff

    .line 170
    .local v10, "minY":I
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->access$100(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->access$000(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)I

    move-result v2

    neg-float v3, p4

    float-to-int v4, v3

    const v7, -0x7fffffff

    const v8, 0x7fffffff

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 171
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->access$200(Lcom/delan/app/germanybluetooth/widget/WheelScroller;I)V

    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .registers 6
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method
