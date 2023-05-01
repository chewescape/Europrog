.class Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FullWidthFixedViewLayout;
.super Landroid/widget/FrameLayout;
.source "HeaderGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/idelan/app/widget/gridview/paging/HeaderGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FullWidthFixedViewLayout"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/idelan/app/widget/gridview/paging/HeaderGridView;


# direct methods
.method public constructor <init>(Lcom/idelan/app/widget/gridview/paging/HeaderGridView;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/idelan/app/widget/gridview/paging/HeaderGridView;

    .line 239
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 240
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 244
    iget-object v1, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/idelan/app/widget/gridview/paging/HeaderGridView;

    invoke-virtual {v1}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->getMeasuredWidth()I

    move-result v1

    .line 245
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/idelan/app/widget/gridview/paging/HeaderGridView;

    invoke-virtual {v2}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->getPaddingLeft()I

    move-result v2

    .line 244
    sub-int/2addr v1, v2

    .line 246
    iget-object v2, p0, Lcom/idelan/app/widget/gridview/paging/HeaderGridView$FullWidthFixedViewLayout;->this$0:Lcom/idelan/app/widget/gridview/paging/HeaderGridView;

    invoke-virtual {v2}, Lcom/idelan/app/widget/gridview/paging/HeaderGridView;->getPaddingRight()I

    move-result v2

    .line 244
    sub-int v0, v1, v2

    .line 248
    .local v0, "targetWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 247
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 249
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 250
    return-void
.end method
