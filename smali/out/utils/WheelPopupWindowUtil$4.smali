.class Lutils/WheelPopupWindowUtil$4;
.super Ljava/lang/Object;
.source "WheelPopupWindowUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$callBack:Lutils/WheelPopupWindowUtil$PopupCallBack;

.field final synthetic val$wheelView01:Lcom/delan/app/germanybluetooth/widget/WheelView;

.field final synthetic val$wheelView02:Lcom/delan/app/germanybluetooth/widget/WheelView;

.field final synthetic val$wheelView03:Lcom/delan/app/germanybluetooth/widget/WheelView;


# direct methods
.method constructor <init>(Lutils/WheelPopupWindowUtil;Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;Lcom/delan/app/germanybluetooth/widget/WheelView;Lutils/WheelPopupWindowUtil$PopupCallBack;)V
    .registers 6
    .param p1, "this$0"    # Lutils/WheelPopupWindowUtil;

    .prologue
    .line 148
    iput-object p1, p0, Lutils/WheelPopupWindowUtil$4;->this$0:Lutils/WheelPopupWindowUtil;

    iput-object p2, p0, Lutils/WheelPopupWindowUtil$4;->val$wheelView01:Lcom/delan/app/germanybluetooth/widget/WheelView;

    iput-object p3, p0, Lutils/WheelPopupWindowUtil$4;->val$wheelView02:Lcom/delan/app/germanybluetooth/widget/WheelView;

    iput-object p4, p0, Lutils/WheelPopupWindowUtil$4;->val$wheelView03:Lcom/delan/app/germanybluetooth/widget/WheelView;

    iput-object p5, p0, Lutils/WheelPopupWindowUtil$4;->val$callBack:Lutils/WheelPopupWindowUtil$PopupCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 152
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$4;->val$wheelView01:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit16 v2, v3, 0x7d0

    .line 153
    .local v2, "year":I
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$4;->val$wheelView02:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 154
    .local v1, "month":I
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$4;->val$wheelView03:Lcom/delan/app/germanybluetooth/widget/WheelView;

    invoke-virtual {v3}, Lcom/delan/app/germanybluetooth/widget/WheelView;->getCurrentItem()I

    move-result v3

    add-int/lit8 v0, v3, 0x1

    .line 155
    .local v0, "day":I
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$4;->this$0:Lutils/WheelPopupWindowUtil;

    const-string v4, "%d.%02d.%02d"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lutils/WheelPopupWindowUtil;->access$002(Lutils/WheelPopupWindowUtil;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$4;->val$callBack:Lutils/WheelPopupWindowUtil$PopupCallBack;

    if-eqz v3, :cond_4a

    .line 162
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$4;->val$callBack:Lutils/WheelPopupWindowUtil$PopupCallBack;

    iget-object v4, p0, Lutils/WheelPopupWindowUtil$4;->this$0:Lutils/WheelPopupWindowUtil;

    invoke-static {v4}, Lutils/WheelPopupWindowUtil;->access$000(Lutils/WheelPopupWindowUtil;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lutils/WheelPopupWindowUtil$PopupCallBack;->onPositiveButton(Ljava/lang/Object;)V

    .line 167
    :cond_4a
    iget-object v3, p0, Lutils/WheelPopupWindowUtil$4;->this$0:Lutils/WheelPopupWindowUtil;

    invoke-virtual {v3}, Lutils/WheelPopupWindowUtil;->dismiss()V

    .line 169
    return-void
.end method
