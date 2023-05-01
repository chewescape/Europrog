.class Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;
.super Landroid/support/v4/widget/ViewDragHelper$Callback;
.source "SwipeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;


# direct methods
.method constructor <init>(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)V
    .registers 2
    .param p1, "this$0"    # Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-direct {p0}, Landroid/support/v4/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .prologue
    .line 188
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_7b

    .line 189
    sget-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$2;->$SwitchMap$com$delan$app$germanybluetooth$widget$swip$SwipeLayout$DragEdge:[I

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_e0

    .line 227
    .end local p2    # "left":I
    :cond_19
    :goto_19
    return p2

    .line 192
    .restart local p2    # "left":I
    :pswitch_1a
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto :goto_19

    .line 194
    :pswitch_21
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v0

    if-ge p2, v0, :cond_30

    .line 195
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto :goto_19

    .line 196
    :cond_30
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v1

    add-int/2addr v0, v1

    if-le p2, v0, :cond_19

    .line 197
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v1

    add-int p2, v0, v1

    goto :goto_19

    .line 200
    :pswitch_4e
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v0

    if-le p2, v0, :cond_5d

    .line 201
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto :goto_19

    .line 202
    :cond_5d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_19

    .line 203
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto :goto_19

    .line 206
    :cond_7b
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_19

    .line 208
    sget-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$2;->$SwitchMap$com$delan$app$germanybluetooth$widget$swip$SwipeLayout$DragEdge:[I

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_ec

    goto :goto_19

    .line 211
    :pswitch_95
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto/16 :goto_19

    .line 213
    :pswitch_9d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$200(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v0, v1, :cond_19

    .line 214
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v0

    if-le p2, v0, :cond_19

    .line 215
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result p2

    goto/16 :goto_19

    .line 219
    :pswitch_b7
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$200(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v0, v1, :cond_19

    .line 220
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_19

    .line 221
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto/16 :goto_19

    .line 189
    :pswitch_data_e0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_21
        :pswitch_4e
    .end packed-switch

    .line 208
    :pswitch_data_ec
    .packed-switch 0x1
        :pswitch_95
        :pswitch_95
        :pswitch_9d
        :pswitch_b7
    .end packed-switch
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .prologue
    .line 232
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_7b

    .line 233
    sget-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$2;->$SwitchMap$com$delan$app$germanybluetooth$widget$swip$SwipeLayout$DragEdge:[I

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_162

    .line 281
    .end local p2    # "top":I
    :cond_19
    :goto_19
    return p2

    .line 236
    .restart local p2    # "top":I
    :pswitch_1a
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto :goto_19

    .line 238
    :pswitch_21
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v0

    if-ge p2, v0, :cond_30

    .line 239
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto :goto_19

    .line 240
    :cond_30
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v1

    add-int/2addr v0, v1

    if-le p2, v0, :cond_19

    .line 241
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v1

    add-int p2, v0, v1

    goto :goto_19

    .line 244
    :pswitch_4e
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_6c

    .line 245
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto :goto_19

    .line 247
    :cond_6c
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v0

    if-le p2, v0, :cond_19

    .line 248
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto :goto_19

    .line 252
    :cond_7b
    sget-object v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$2;->$SwitchMap$com$delan$app$germanybluetooth$widget$swip$SwipeLayout$DragEdge:[I

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-result-object v1

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16e

    goto :goto_19

    .line 257
    :pswitch_8d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$200(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v0, v1, :cond_af

    .line 258
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v0

    if-le p2, v0, :cond_19

    .line 259
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_19

    .line 255
    :pswitch_a7
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_19

    .line 261
    :cond_af
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v1

    if-ge v0, v1, :cond_ca

    .line 262
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_19

    .line 263
    :cond_ca
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 264
    invoke-static {v2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v2

    add-int/2addr v1, v2

    if-le v0, v1, :cond_19

    .line 265
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v1

    add-int p2, v0, v1

    goto/16 :goto_19

    .line 269
    :pswitch_f4
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$200(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v0

    sget-object v1, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v0, v1, :cond_11d

    .line 270
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v1

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_19

    .line 271
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto/16 :goto_19

    .line 273
    :cond_11d
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v1

    if-lt v0, v1, :cond_138

    .line 274
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result p2

    goto/16 :goto_19

    .line 275
    :cond_138
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 276
    invoke-static {v2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v2

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_19

    .line 277
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v0

    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v1

    sub-int p2, v0, v1

    goto/16 :goto_19

    .line 233
    :pswitch_data_162
    .packed-switch 0x1
        :pswitch_21
        :pswitch_4e
        :pswitch_1a
        :pswitch_1a
    .end packed-switch

    .line 252
    :pswitch_data_16e
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_f4
        :pswitch_a7
        :pswitch_a7
    .end packed-switch
.end method

.method public getViewHorizontalDragRange(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 291
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$100(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)I

    move-result v0

    return v0
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 20
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .prologue
    .line 320
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    .local v3, "evLeft":I
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    .line 321
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getRight()I

    move-result v4

    .local v4, "evRight":I
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v5

    .local v5, "evTop":I
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    .line 322
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    .line 323
    .local v2, "evBottom":I
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    if-ne p1, v9, :cond_79

    .line 325
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$200(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v9

    sget-object v10, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v9, v10, :cond_59

    .line 326
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-result-object v9

    sget-object v10, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-eq v9, v10, :cond_4e

    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 327
    invoke-static {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-result-object v9

    sget-object v10, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_6d

    .line 328
    :cond_4e
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->offsetLeftAndRight(I)V

    .line 365
    :cond_59
    :goto_59
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9, v3, v5, v4, v2}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->dispatchRevealEvent(IIII)V

    .line 367
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-virtual {v9, v3, v5, v0, v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->dispatchSwipeEvent(IIII)V

    .line 369
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->invalidate()V

    .line 370
    return-void

    .line 330
    :cond_6d
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    goto :goto_59

    .line 333
    :cond_79
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v9

    if-ne p1, v9, :cond_59

    .line 335
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$200(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v9

    sget-object v10, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v9, v10, :cond_a2

    .line 336
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    move/from16 v0, p4

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->offsetLeftAndRight(I)V

    .line 337
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    move/from16 v0, p5

    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->offsetTopAndBottom(I)V

    goto :goto_59

    .line 339
    :cond_a2
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    iget-object v10, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v10}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$700(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;)Landroid/graphics/Rect;

    move-result-object v8

    .line 340
    .local v8, "rect":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v9

    iget v10, v8, Landroid/graphics/Rect;->left:I

    iget v11, v8, Landroid/graphics/Rect;->top:I

    iget v12, v8, Landroid/graphics/Rect;->right:I

    iget v13, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 343
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLeft()I

    move-result v9

    add-int v6, v9, p4

    .local v6, "newLeft":I
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    .line 344
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getTop()I

    move-result v9

    add-int v7, v9, p5

    .line 346
    .local v7, "newTop":I
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-result-object v9

    sget-object v10, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Left:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_108

    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 347
    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v9

    if-ge v6, v9, :cond_108

    .line 348
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v6

    .line 359
    :cond_ef
    :goto_ef
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v9

    iget-object v10, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 360
    invoke-virtual {v10}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v10, v6

    iget-object v11, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 361
    invoke-virtual {v11}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v7

    .line 359
    invoke-virtual {v9, v6, v7, v10, v11}, Landroid/view/ViewGroup;->layout(IIII)V

    goto/16 :goto_59

    .line 349
    :cond_108
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-result-object v9

    sget-object v10, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Right:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_121

    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 350
    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v9

    if-le v6, v9, :cond_121

    .line 351
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingLeft()I

    move-result v6

    goto :goto_ef

    .line 352
    :cond_121
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-result-object v9

    sget-object v10, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Top:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_13a

    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 353
    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v9

    if-ge v7, v9, :cond_13a

    .line 354
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v7

    goto :goto_ef

    .line 355
    :cond_13a
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$000(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    move-result-object v9

    sget-object v10, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;->Bottom:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$DragEdge;

    if-ne v9, v10, :cond_ef

    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    .line 356
    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v9

    if-le v7, v9, :cond_ef

    .line 357
    iget-object v9, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v9}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getPaddingTop()I

    move-result v7

    goto :goto_ef
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 7
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .prologue
    .line 301
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/ViewDragHelper$Callback;->onViewReleased(Landroid/view/View;FF)V

    .line 302
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$300(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;

    .line 303
    .local v0, "l":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;
    iget-object v2, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-interface {v0, v2, p2, p3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;->onHandRelease(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;FF)V

    goto :goto_d

    .line 304
    .end local v0    # "l":Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$SwipeListener;
    :cond_1f
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v1

    if-ne p1, v1, :cond_32

    .line 305
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1, p2, p3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$400(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;FF)V

    .line 314
    :cond_2c
    :goto_2c
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->invalidate()V

    .line 315
    return-void

    .line 306
    :cond_32
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v1

    if-ne p1, v1, :cond_2c

    .line 307
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getShowMode()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v1

    sget-object v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->PullOut:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v1, v2, :cond_4a

    .line 308
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1, p2, p3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$500(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;FF)V

    goto :goto_2c

    .line 309
    :cond_4a
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v1}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getShowMode()Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    move-result-object v1

    sget-object v2, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;->LayDown:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$ShowMode;

    if-ne v1, v2, :cond_2c

    .line 310
    iget-object v1, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-static {v1, p2, p3}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->access$600(Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;FF)V

    goto :goto_2c
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getSurfaceView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eq p1, v0, :cond_10

    iget-object v0, p0, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout$1;->this$0:Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;

    invoke-virtual {v0}, Lcom/delan/app/germanybluetooth/widget/swip/SwipeLayout;->getBottomView()Landroid/view/ViewGroup;

    move-result-object v0

    if-ne p1, v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
