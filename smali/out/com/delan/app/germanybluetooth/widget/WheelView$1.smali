.class Lcom/delan/app/germanybluetooth/widget/WheelView$1;
.super Ljava/lang/Object;
.source "WheelView.java"

# interfaces
.implements Lcom/delan/app/germanybluetooth/widget/WheelScroller$ScrollingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/widget/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/widget/WheelView;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/widget/WheelView;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 157
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->access$000(Lcom/delan/app/germanybluetooth/widget/WheelView;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 158
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->notifyScrollingListenersAboutEnd()V

    .line 159
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->access$002(Lcom/delan/app/germanybluetooth/widget/WheelView;Z)Z

    .line 162
    :cond_13
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->access$202(Lcom/delan/app/germanybluetooth/widget/WheelView;I)I

    .line 163
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->invalidate()V

    .line 164
    return-void
.end method

.method public onJustify()V
    .registers 4

    .prologue
    .line 167
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->access$200(Lcom/delan/app/germanybluetooth/widget/WheelView;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1d

    .line 168
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->access$300(Lcom/delan/app/germanybluetooth/widget/WheelView;)Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    move-result-object v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->access$200(Lcom/delan/app/germanybluetooth/widget/WheelView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->scroll(II)V

    .line 170
    :cond_1d
    return-void
.end method

.method public onScroll(I)V
    .registers 5
    .param p1, "distance"    # I

    .prologue
    .line 144
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-static {v1, p1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->access$100(Lcom/delan/app/germanybluetooth/widget/WheelView;I)V

    .line 146
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getHeight()I

    move-result v0

    .line 147
    .local v0, "height":I
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->access$200(Lcom/delan/app/germanybluetooth/widget/WheelView;)I

    move-result v1

    if-le v1, v0, :cond_22

    .line 148
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-static {v1, v0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->access$202(Lcom/delan/app/germanybluetooth/widget/WheelView;I)I

    .line 149
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->access$300(Lcom/delan/app/germanybluetooth/widget/WheelView;)Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->stopScrolling()V

    .line 154
    :cond_21
    :goto_21
    return-void

    .line 150
    :cond_22
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->access$200(Lcom/delan/app/germanybluetooth/widget/WheelView;)I

    move-result v1

    neg-int v2, v0

    if-ge v1, v2, :cond_21

    .line 151
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    neg-int v2, v0

    invoke-static {v1, v2}, Lcom/delan/app/germanybluetooth/widget/WheelView;->access$202(Lcom/delan/app/germanybluetooth/widget/WheelView;I)I

    .line 152
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->access$300(Lcom/delan/app/germanybluetooth/widget/WheelView;)Lcom/delan/app/germanybluetooth/widget/WheelScroller;

    move-result-object v1

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/WheelScroller;->stopScrolling()V

    goto :goto_21
.end method

.method public onStarted()V
    .registers 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/delan/app/germanybluetooth/widget/WheelView;->access$002(Lcom/delan/app/germanybluetooth/widget/WheelView;Z)Z

    .line 140
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/WheelView$1;->this$0:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/WheelView;->notifyScrollingListenersAboutStart()V

    .line 141
    return-void
.end method
