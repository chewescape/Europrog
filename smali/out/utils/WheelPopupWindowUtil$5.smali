.class Lutils/WheelPopupWindowUtil$5;
.super Ljava/lang/Object;
.source "WheelPopupWindowUtil.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lutils/WheelPopupWindowUtil;->showDate(Ljava/util/Date;Lutils/WheelPopupWindowUtil$PopupCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lutils/WheelPopupWindowUtil;


# direct methods
.method constructor <init>(Lutils/WheelPopupWindowUtil;)V
    .registers 2
    .param p1, "this$0"    # Lutils/WheelPopupWindowUtil;

    .prologue
    .line 178
    iput-object p1, p0, Lutils/WheelPopupWindowUtil$5;->this$0:Lutils/WheelPopupWindowUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    .line 180
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$5;->this$0:Lutils/WheelPopupWindowUtil;

    invoke-static {v3}, Lutils/WheelPopupWindowUtil;->access$200(Lutils/WheelPopupWindowUtil;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 181
    const/4 v2, 0x0

    .line 191
    :cond_a
    :goto_a
    return v2

    .line 183
    :cond_b
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$5;->this$0:Lutils/WheelPopupWindowUtil;

    invoke-static {v3}, Lutils/WheelPopupWindowUtil;->access$300(Lutils/WheelPopupWindowUtil;)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0d0100

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 184
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v0

    .line 185
    .local v0, "height":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 186
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_a

    .line 187
    if-ge v1, v0, :cond_a

    .line 188
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$5;->this$0:Lutils/WheelPopupWindowUtil;

    invoke-virtual {v3}, Lutils/WheelPopupWindowUtil;->dismiss()V

    goto :goto_a
.end method
