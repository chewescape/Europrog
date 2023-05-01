.class Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;
.super Landroid/os/Handler;
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
    .line 199
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 201
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->access$100(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 202
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->access$100(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 203
    .local v0, "currY":I
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->access$000(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)I

    move-result v2

    sub-int v1, v2, v0

    .line 204
    .local v1, "delta":I
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-static {v2, v0}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->access$002(Lcom/delan/app/germanybluetooth/widget/WheelScroller;I)I

    .line 205
    if-eqz v1, :cond_2c

    .line 206
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->access$300(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;->onScroll(I)V

    .line 211
    :cond_2c
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->access$100(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_47

    .line 213
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->access$100(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 215
    :cond_47
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->access$100(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_5f

    .line 216
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->access$400(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    :goto_5e
    return-void

    .line 217
    :cond_5f
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_69

    .line 218
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-static {v2}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->access$500(Lcom/delan/app/germanybluetooth/widget/WheelScroller;)V

    goto :goto_5e

    .line 220
    :cond_69
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/WheelScroller$2;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    invoke-virtual {v2}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->finishScrolling()V

    goto :goto_5e
.end method
