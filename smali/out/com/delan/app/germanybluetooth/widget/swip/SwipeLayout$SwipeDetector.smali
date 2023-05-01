.class Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SwipeDetector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 995
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 1034
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$800(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DoubleClickListener;

    move-result-object v3

    if-eqz v3, :cond_58

    .line 1036
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1037
    .local v0, "bottom":Landroid/view/ViewGroup;
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v1

    .line 1038
    .local v1, "surface":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_59

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_59

    .line 1039
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_59

    .line 1040
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gez v3, :cond_59

    .line 1041
    move-object v2, v0

    .line 1045
    .local v2, "target":Landroid/view/View;
    :goto_4a
    iget-object v3, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$800(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DoubleClickListener;

    move-result-object v5

    iget-object v6, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    if-ne v2, v1, :cond_5b

    move v3, v4

    :goto_55
    invoke-interface {v5, v6, v3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DoubleClickListener;->onDoubleClick(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;Z)V

    .line 1048
    .end local v0    # "bottom":Landroid/view/ViewGroup;
    .end local v1    # "surface":Landroid/view/ViewGroup;
    .end local v2    # "target":Landroid/view/View;
    :cond_58
    return v4

    .line 1043
    .restart local v0    # "bottom":Landroid/view/ViewGroup;
    .restart local v1    # "surface":Landroid/view/ViewGroup;
    :cond_59
    move-object v2, v1

    .restart local v2    # "target":Landroid/view/View;
    goto :goto_4a

    .line 1045
    :cond_5b
    const/4 v3, 0x0

    goto :goto_55
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 998
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->performLongClick()Z

    .line 1030
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$800(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DoubleClickListener;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 1022
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$900(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;Landroid/view/MotionEvent;)V

    .line 1024
    :cond_d
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$800(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DoubleClickListener;

    move-result-object v0

    if-nez v0, :cond_d

    .line 1014
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeDetector;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v0, p1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$900(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;Landroid/view/MotionEvent;)V

    .line 1016
    :cond_d
    const/4 v0, 0x1

    return v0
.end method
